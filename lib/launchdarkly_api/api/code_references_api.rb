=begin
#LaunchDarkly REST API

## Overview  ## Authentication  All REST API resources are authenticated with either [personal or service access tokens](https://docs.launchdarkly.com/home/account-security/api-access-tokens), or session cookies. Other authentication mechanisms are not supported. You can manage personal access tokens on your [**Account settings**](https://app.launchdarkly.com/settings/tokens) page.  LaunchDarkly also has SDK keys, mobile keys, and client-side IDs that are used by our server-side SDKs, mobile SDKs, and JavaScript-based SDKs, respectively. **These keys cannot be used to access our REST API**. These keys are environment-specific, and can only perform read-only operations such as fetching feature flag settings.  | Auth mechanism                                                                                  | Allowed resources                                                                                     | Use cases                                          | | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | -------------------------------------------------- | | [Personal or service access tokens](https://docs.launchdarkly.com/home/account-security/api-access-tokens) | Can be customized on a per-token basis                                                                | Building scripts, custom integrations, data export. | | SDK keys                                                                                        | Can only access read-only resources specific to server-side SDKs. Restricted to a single environment. | Server-side SDKs                     | | Mobile keys                                                                                     | Can only access read-only resources specific to mobile SDKs, and only for flags marked available to mobile keys. Restricted to a single environment.           | Mobile SDKs                                        | | Client-side ID                                                                                  | Can only access read-only resources specific to JavaScript-based client-side SDKs, and only for flags marked available to client-side. Restricted to a single environment.           | Client-side JavaScript                             |  > #### Keep your access tokens and SDK keys private > > Access tokens should _never_ be exposed in untrusted contexts. Never put an access token in client-side JavaScript, or embed it in a mobile application. LaunchDarkly has special mobile keys that you can embed in mobile apps. If you accidentally expose an access token or SDK key, you can reset it from your [**Account settings**](https://app.launchdarkly.com/settings/tokens) page. > > The client-side ID is safe to embed in untrusted contexts. It's designed for use in client-side JavaScript.  ### Authentication using request header  The preferred way to authenticate with the API is by adding an `Authorization` header containing your access token to your requests. The value of the `Authorization` header must be your access token.  Manage personal access tokens from the [**Account settings**](https://app.launchdarkly.com/settings/tokens) page.  ### Authentication using session cookie  For testing purposes, you can make API calls directly from your web browser. If you are logged in to the LaunchDarkly application, the API will use your existing session to authenticate calls.  If you have a [role](https://docs.launchdarkly.com/home/team/built-in-roles) other than Admin, or have a [custom role](https://docs.launchdarkly.com/home/team/custom-roles) defined, you may not have permission to perform some API calls. You will receive a `401` response code in that case.  > ### Modifying the Origin header causes an error > > LaunchDarkly validates that the Origin header for any API request authenticated by a session cookie matches the expected Origin header. The expected Origin header is `https://app.launchdarkly.com`. > > If the Origin header does not match what's expected, LaunchDarkly returns an error. This error can prevent the LaunchDarkly app from working correctly. > > Any browser extension that intentionally changes the Origin header can cause this problem. For example, the `Allow-Control-Allow-Origin: *` Chrome extension changes the Origin header to `http://evil.com` and causes the app to fail. > > To prevent this error, do not modify your Origin header. > > LaunchDarkly does not require origin matching when authenticating with an access token, so this issue does not affect normal API usage.  ## Representations  All resources expect and return JSON response bodies. Error responses also send a JSON body. To learn more about the error format of the API, read [Errors](/#section/Overview/Errors).  In practice this means that you always get a response with a `Content-Type` header set to `application/json`.  In addition, request bodies for `PATCH`, `POST`, and `PUT` requests must be encoded as JSON with a `Content-Type` header set to `application/json`.  ### Summary and detailed representations  When you fetch a list of resources, the response includes only the most important attributes of each resource. This is a _summary representation_ of the resource. When you fetch an individual resource, such as a single feature flag, you receive a _detailed representation_ of the resource.  The best way to find a detailed representation is to follow links. Every summary representation includes a link to its detailed representation.  ### Expanding responses  Sometimes the detailed representation of a resource does not include all of the attributes of the resource by default. If this is the case, the request method will clearly document this and describe which attributes you can include in an expanded response.  To include the additional attributes, append the `expand` request parameter to your request and add a comma-separated list of the attributes to include. For example, when you append `?expand=members,roles` to the [Get team](/tag/Teams#operation/getTeam) endpoint, the expanded response includes both of these attributes.  ### Links and addressability  The best way to navigate the API is by following links. These are attributes in representations that link to other resources. The API always uses the same format for links:  - Links to other resources within the API are encapsulated in a `_links` object - If the resource has a corresponding link to HTML content on the site, it is stored in a special `_site` link  Each link has two attributes:  - An `href`, which contains the URL - A `type`, which describes the content type  For example, a feature resource might return the following:  ```json {   \"_links\": {     \"parent\": {       \"href\": \"/api/features\",       \"type\": \"application/json\"     },     \"self\": {       \"href\": \"/api/features/sort.order\",       \"type\": \"application/json\"     }   },   \"_site\": {     \"href\": \"/features/sort.order\",     \"type\": \"text/html\"   } } ```  From this, you can navigate to the parent collection of features by following the `parent` link, or navigate to the site page for the feature by following the `_site` link.  Collections are always represented as a JSON object with an `items` attribute containing an array of representations. Like all other representations, collections have `_links` defined at the top level.  Paginated collections include `first`, `last`, `next`, and `prev` links containing a URL with the respective set of elements in the collection.  ## Updates  Resources that accept partial updates use the `PATCH` verb. Most resources support the [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) format. Some resources also support the [JSON merge patch](https://datatracker.ietf.org/doc/html/rfc7386) format, and some resources support the [semantic patch](/reference#updates-using-semantic-patch) format, which is a way to specify the modifications to perform as a set of executable instructions. Each resource supports optional [comments](/reference#updates-with-comments) that you can submit with updates. Comments appear in outgoing webhooks, the audit log, and other integrations.  When a resource supports both JSON patch and semantic patch, we document both in the request method. However, the specific request body fields and descriptions included in our documentation only match one type of patch or the other.  ### Updates using JSON patch  [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) is a way to specify the modifications to perform on a resource. JSON patch uses paths and a limited set of operations to describe how to transform the current state of the resource into a new state. JSON patch documents are always arrays, where each element contains an operation, a path to the field to update, and the new value.  For example, in this feature flag representation:  ```json {     \"name\": \"New recommendations engine\",     \"key\": \"engine.enable\",     \"description\": \"This is the description\",     ... } ``` You can change the feature flag's description with the following patch document:  ```json [{ \"op\": \"replace\", \"path\": \"/description\", \"value\": \"This is the new description\" }] ```  You can specify multiple modifications to perform in a single request. You can also test that certain preconditions are met before applying the patch:  ```json [   { \"op\": \"test\", \"path\": \"/version\", \"value\": 10 },   { \"op\": \"replace\", \"path\": \"/description\", \"value\": \"The new description\" } ] ```  The above patch request tests whether the feature flag's `version` is `10`, and if so, changes the feature flag's description.  Attributes that are not editable, such as a resource's `_links`, have names that start with an underscore.  ### Updates using JSON merge patch  [JSON merge patch](https://datatracker.ietf.org/doc/html/rfc7386) is another format for specifying the modifications to perform on a resource. JSON merge patch is less expressive than JSON patch. However, in many cases it is simpler to construct a merge patch document. For example, you can change a feature flag's description with the following merge patch document:  ```json {   \"description\": \"New flag description\" } ```  ### Updates using semantic patch  The API also supports the semantic patch format. A semantic patch is a way to specify the modifications to perform on a resource as a set of executable instructions.  Semantic patch allows you to be explicit about intent using precise, custom instructions. In many cases, you can define semantic patch instructions independently of the current state of the resource. This can be useful when defining a change that may be applied at a future date.  To make a semantic patch request, you must append `domain-model=launchdarkly.semanticpatch` to your `Content-Type` header.  Here's how:  ``` Content-Type: application/json; domain-model=launchdarkly.semanticpatch ```  If you call a semantic patch resource without this header, you will receive a `400` response because your semantic patch will be interpreted as a JSON patch.  The body of a semantic patch request takes the following properties:  * `comment` (string): (Optional) A description of the update. * `environmentKey` (string): (Required for some resources only) The environment key. * `instructions` (array): (Required) A list of actions the update should perform. Each action in the list must be an object with a `kind` property that indicates the instruction. If the instruction requires parameters, you must include those parameters as additional fields in the object. The documentation for each resource that supports semantic patch includes the available instructions and any additional parameters.  For example:  ```json {   \"comment\": \"optional comment\",   \"instructions\": [ {\"kind\": \"turnFlagOn\"} ] } ```  If any instruction in the patch encounters an error, the endpoint returns an error and will not change the resource. In general, each instruction silently does nothing if the resource is already in the state you request.  ### Updates with comments  You can submit optional comments with `PATCH` changes.  To submit a comment along with a JSON patch document, use the following format:  ```json {   \"comment\": \"This is a comment string\",   \"patch\": [{ \"op\": \"replace\", \"path\": \"/description\", \"value\": \"The new description\" }] } ```  To submit a comment along with a JSON merge patch document, use the following format:  ```json {   \"comment\": \"This is a comment string\",   \"merge\": { \"description\": \"New flag description\" } } ```  To submit a comment along with a semantic patch, use the following format:  ```json {   \"comment\": \"This is a comment string\",   \"instructions\": [ {\"kind\": \"turnFlagOn\"} ] } ```  ## Errors  The API always returns errors in a common format. Here's an example:  ```json {   \"code\": \"invalid_request\",   \"message\": \"A feature with that key already exists\",   \"id\": \"30ce6058-87da-11e4-b116-123b93f75cba\" } ```  The `code` indicates the general class of error. The `message` is a human-readable explanation of what went wrong. The `id` is a unique identifier. Use it when you're working with LaunchDarkly Support to debug a problem with a specific API call.  ### HTTP status error response codes  | Code | Definition        | Description                                                                                       | Possible Solution                                                | | ---- | ----------------- | ------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- | | 400  | Invalid request       | The request cannot be understood.                                    | Ensure JSON syntax in request body is correct.                   | | 401  | Invalid access token      | Requestor is unauthorized or does not have permission for this API call.                                                | Ensure your API access token is valid and has the appropriate permissions.                                     | | 403  | Forbidden         | Requestor does not have access to this resource.                                                | Ensure that the account member or access token has proper permissions set. | | 404  | Invalid resource identifier | The requested resource is not valid. | Ensure that the resource is correctly identified by ID or key. | | 405  | Method not allowed | The request method is not allowed on this resource. | Ensure that the HTTP verb is correct. | | 409  | Conflict          | The API request can not be completed because it conflicts with a concurrent API request. | Retry your request.                                              | | 422  | Unprocessable entity | The API request can not be completed because the update description can not be understood. | Ensure that the request body is correct for the type of patch you are using, either JSON patch or semantic patch. | 429  | Too many requests | Read [Rate limiting](/#section/Overview/Rate-limiting).                                               | Wait and try again later.                                        |  ## CORS  The LaunchDarkly API supports Cross Origin Resource Sharing (CORS) for AJAX requests from any origin. If an `Origin` header is given in a request, it will be echoed as an explicitly allowed origin. Otherwise the request returns a wildcard, `Access-Control-Allow-Origin: *`. For more information on CORS, read the [CORS W3C Recommendation](http://www.w3.org/TR/cors). Example CORS headers might look like:  ```http Access-Control-Allow-Headers: Accept, Content-Type, Content-Length, Accept-Encoding, Authorization Access-Control-Allow-Methods: OPTIONS, GET, DELETE, PATCH Access-Control-Allow-Origin: * Access-Control-Max-Age: 300 ```  You can make authenticated CORS calls just as you would make same-origin calls, using either [token or session-based authentication](/#section/Overview/Authentication). If you are using session authentication, you should set the `withCredentials` property for your `xhr` request to `true`. You should never expose your access tokens to untrusted entities.  ## Rate limiting  We use several rate limiting strategies to ensure the availability of our APIs. Rate-limited calls to our APIs return a `429` status code. Calls to our APIs include headers indicating the current rate limit status. The specific headers returned depend on the API route being called. The limits differ based on the route, authentication mechanism, and other factors. Routes that are not rate limited may not contain any of the headers described below.  > ### Rate limiting and SDKs > > LaunchDarkly SDKs are never rate limited and do not use the API endpoints defined here. LaunchDarkly uses a different set of approaches, including streaming/server-sent events and a global CDN, to ensure availability to the routes used by LaunchDarkly SDKs.  ### Global rate limits  Authenticated requests are subject to a global limit. This is the maximum number of calls that your account can make to the API per ten seconds. All personal access tokens on the account share this limit, so exceeding the limit with one access token will impact other tokens. Calls that are subject to global rate limits return the headers below:  | Header name                    | Description                                                                      | | ------------------------------ | -------------------------------------------------------------------------------- | | `X-Ratelimit-Global-Remaining` | The maximum number of requests the account is permitted to make per ten seconds. | | `X-Ratelimit-Reset`            | The time at which the current rate limit window resets in epoch milliseconds.    |  We do not publicly document the specific number of calls that can be made globally. This limit may change, and we encourage clients to program against the specification, relying on the two headers defined above, rather than hardcoding to the current limit.  ### Route-level rate limits  Some authenticated routes have custom rate limits. These also reset every ten seconds. Any access tokens hitting the same route share this limit, so exceeding the limit with one access token may impact other tokens. Calls that are subject to route-level rate limits return the headers below:  | Header name                   | Description                                                                                           | | ----------------------------- | ----------------------------------------------------------------------------------------------------- | | `X-Ratelimit-Route-Remaining` | The maximum number of requests to the current route the account is permitted to make per ten seconds. | | `X-Ratelimit-Reset`           | The time at which the current rate limit window resets in epoch milliseconds.                         |  A _route_ represents a specific URL pattern and verb. For example, the [Delete environment](/tag/Environments#operation/deleteEnvironment) endpoint is considered a single route, and each call to delete an environment counts against your route-level rate limit for that route.  We do not publicly document the specific number of calls that an account can make to each endpoint per ten seconds. These limits may change, and we encourage clients to program against the specification, relying on the two headers defined above, rather than hardcoding to the current limits.  ### IP-based rate limiting  We also employ IP-based rate limiting on some API routes. If you hit an IP-based rate limit, your API response will include a `Retry-After` header indicating how long to wait before re-trying the call. Clients must wait at least `Retry-After` seconds before making additional calls to our API, and should employ jitter and backoff strategies to avoid triggering rate limits again.  ## OpenAPI (Swagger) and client libraries  We have a [complete OpenAPI (Swagger) specification](https://app.launchdarkly.com/api/v2/openapi.json) for our API.  We auto-generate multiple client libraries based on our OpenAPI specification. To learn more, visit the [collection of client libraries on GitHub](https://github.com/search?q=topic%3Alaunchdarkly-api+org%3Alaunchdarkly&type=Repositories). You can also use this specification to generate client libraries to interact with our REST API in your language of choice.  Our OpenAPI specification is supported by several API-based tools such as Postman and Insomnia. In many cases, you can directly import our specification to explore our APIs.  ## Method overriding  Some firewalls and HTTP clients restrict the use of verbs other than `GET` and `POST`. In those environments, our API endpoints that use `DELETE`, `PATCH`, and `PUT` verbs are inaccessible.  To avoid this issue, our API supports the `X-HTTP-Method-Override` header, allowing clients to \"tunnel\" `DELETE`, `PATCH`, and `PUT` requests using a `POST` request.  For example, to call a `PATCH` endpoint using a `POST` request, you can include `X-HTTP-Method-Override:PATCH` as a header.  ## Beta resources  We sometimes release new API resources in **beta** status before we release them with general availability.  Resources that are in beta are still undergoing testing and development. They may change without notice, including becoming backwards incompatible.  We try to promote resources into general availability as quickly as possible. This happens after sufficient testing and when we're satisfied that we no longer need to make backwards-incompatible changes.  We mark beta resources with a \"Beta\" callout in our documentation, pictured below:  > ### This feature is in beta > > To use this feature, pass in a header including the `LD-API-Version` key with value set to `beta`. Use this header with each call. To learn more, read [Beta resources](/#section/Overview/Beta-resources). > > Resources that are in beta are still undergoing testing and development. They may change without notice, including becoming backwards incompatible.  ### Using beta resources  To use a beta resource, you must include a header in the request. If you call a beta resource without this header, you receive a `403` response.  Use this header:  ``` LD-API-Version: beta ```  ## Versioning  We try hard to keep our REST API backwards compatible, but we occasionally have to make backwards-incompatible changes in the process of shipping new features. These breaking changes can cause unexpected behavior if you don't prepare for them accordingly.  Updates to our REST API include support for the latest features in LaunchDarkly. We also release a new version of our REST API every time we make a breaking change. We provide simultaneous support for multiple API versions so you can migrate from your current API version to a new version at your own pace.  ### Setting the API version per request  You can set the API version on a specific request by sending an `LD-API-Version` header, as shown in the example below:  ``` LD-API-Version: 20220603 ```  The header value is the version number of the API version you would like to request. The number for each version corresponds to the date the version was released in `yyyymmdd` format. In the example above the version `20220603` corresponds to June 03, 2022.  ### Setting the API version per access token  When you create an access token, you must specify a specific version of the API to use. This ensures that integrations using this token cannot be broken by version changes.  Tokens created before versioning was released have their version set to `20160426`, which is the version of the API that existed before the current versioning scheme, so that they continue working the same way they did before versioning.  If you would like to upgrade your integration to use a new API version, you can explicitly set the header described above.  > ### Best practice: Set the header for every client or integration > > We recommend that you set the API version header explicitly in any client or integration you build. > > Only rely on the access token API version during manual testing.  ### API version changelog  |<div style=\"width:75px\">Version</div> | Changes | End of life (EOL) |---|---|---| | `20220603` | <ul><li>Changed the [list projects](/tag/Projects#operation/getProjects) return value:<ul><li>Response is now paginated with a default limit of `20`.</li><li>Added support for filter and sort.</li><li>The project `environments` field is now expandable. This field is omitted by default.</li></ul></li><li>Changed the [get project](/tag/Projects#operation/getProject) return value:<ul><li>The `environments` field is now expandable. This field is omitted by default.</li></ul></li></ul> | Current | | `20210729` | <ul><li>Changed the [create approval request](/tag/Approvals#operation/postApprovalRequest) return value. It now returns HTTP Status Code `201` instead of `200`.</li><li> Changed the [get users](/tag/Users#operation/getUser) return value. It now returns a user record, not a user. </li><li>Added additional optional fields to environment, segments, flags, members, and segments, including the ability to create Big Segments. </li><li> Added default values for flag variations when new environments are created. </li><li>Added filtering and pagination for getting flags and members, including `limit`, `number`, `filter`, and `sort` query parameters. </li><li>Added endpoints for expiring user targets for flags and segments, scheduled changes, access tokens, Relay Proxy configuration, integrations and subscriptions, and approvals. </li></ul> | 2023-06-03 | | `20191212` | <ul><li>[List feature flags](/tag/Feature-flags#operation/getFeatureFlags) now defaults to sending summaries of feature flag configurations, equivalent to setting the query parameter `summary=true`. Summaries omit flag targeting rules and individual user targets from the payload. </li><li> Added endpoints for flags, flag status, projects, environments, audit logs, members, users, custom roles, segments, usage, streams, events, and data export. </li></ul> | 2022-07-29 | | `20160426` | <ul><li>Initial versioning of API. Tokens created before versioning have their version set to this.</li></ul> | 2020-12-12 | 

The version of the OpenAPI document: 2.0
Contact: support@launchdarkly.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

require 'cgi'

module LaunchDarklyApi
  class CodeReferencesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete branches
    # Asynchronously delete a number of branches.
    # @param repo [String] The repository name to delete branches for.
    # @param request_body [Array<String>] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_branches(repo, request_body, opts = {})
      delete_branches_with_http_info(repo, request_body, opts)
      nil
    end

    # Delete branches
    # Asynchronously delete a number of branches.
    # @param repo [String] The repository name to delete branches for.
    # @param request_body [Array<String>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_branches_with_http_info(repo, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CodeReferencesApi.delete_branches ...'
      end
      # verify the required parameter 'repo' is set
      if @api_client.config.client_side_validation && repo.nil?
        fail ArgumentError, "Missing the required parameter 'repo' when calling CodeReferencesApi.delete_branches"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling CodeReferencesApi.delete_branches"
      end
      # resource path
      local_var_path = '/api/v2/code-refs/repositories/{repo}/branch-delete-tasks'.sub('{' + 'repo' + '}', CGI.escape(repo.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(request_body)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"CodeReferencesApi.delete_branches",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CodeReferencesApi#delete_branches\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete repository
    # Delete a repository with the specified name.
    # @param repo [String] The repository name
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_repository(repo, opts = {})
      delete_repository_with_http_info(repo, opts)
      nil
    end

    # Delete repository
    # Delete a repository with the specified name.
    # @param repo [String] The repository name
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_repository_with_http_info(repo, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CodeReferencesApi.delete_repository ...'
      end
      # verify the required parameter 'repo' is set
      if @api_client.config.client_side_validation && repo.nil?
        fail ArgumentError, "Missing the required parameter 'repo' when calling CodeReferencesApi.delete_repository"
      end
      # resource path
      local_var_path = '/api/v2/code-refs/repositories/{repo}'.sub('{' + 'repo' + '}', CGI.escape(repo.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"CodeReferencesApi.delete_repository",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CodeReferencesApi#delete_repository\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get branch
    # Get a specific branch in a repository.
    # @param repo [String] The repository name
    # @param branch [String] The url-encoded branch name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :proj_key Filter results to a specific project
    # @option opts [String] :flag_key Filter results to a specific flag key
    # @return [BranchRep]
    def get_branch(repo, branch, opts = {})
      data, _status_code, _headers = get_branch_with_http_info(repo, branch, opts)
      data
    end

    # Get branch
    # Get a specific branch in a repository.
    # @param repo [String] The repository name
    # @param branch [String] The url-encoded branch name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :proj_key Filter results to a specific project
    # @option opts [String] :flag_key Filter results to a specific flag key
    # @return [Array<(BranchRep, Integer, Hash)>] BranchRep data, response status code and response headers
    def get_branch_with_http_info(repo, branch, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CodeReferencesApi.get_branch ...'
      end
      # verify the required parameter 'repo' is set
      if @api_client.config.client_side_validation && repo.nil?
        fail ArgumentError, "Missing the required parameter 'repo' when calling CodeReferencesApi.get_branch"
      end
      # verify the required parameter 'branch' is set
      if @api_client.config.client_side_validation && branch.nil?
        fail ArgumentError, "Missing the required parameter 'branch' when calling CodeReferencesApi.get_branch"
      end
      # resource path
      local_var_path = '/api/v2/code-refs/repositories/{repo}/branches/{branch}'.sub('{' + 'repo' + '}', CGI.escape(repo.to_s)).sub('{' + 'branch' + '}', CGI.escape(branch.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'projKey'] = opts[:'proj_key'] if !opts[:'proj_key'].nil?
      query_params[:'flagKey'] = opts[:'flag_key'] if !opts[:'flag_key'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BranchRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"CodeReferencesApi.get_branch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CodeReferencesApi#get_branch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List branches
    # Get a list of branches.
    # @param repo [String] The repository name
    # @param [Hash] opts the optional parameters
    # @return [BranchCollectionRep]
    def get_branches(repo, opts = {})
      data, _status_code, _headers = get_branches_with_http_info(repo, opts)
      data
    end

    # List branches
    # Get a list of branches.
    # @param repo [String] The repository name
    # @param [Hash] opts the optional parameters
    # @return [Array<(BranchCollectionRep, Integer, Hash)>] BranchCollectionRep data, response status code and response headers
    def get_branches_with_http_info(repo, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CodeReferencesApi.get_branches ...'
      end
      # verify the required parameter 'repo' is set
      if @api_client.config.client_side_validation && repo.nil?
        fail ArgumentError, "Missing the required parameter 'repo' when calling CodeReferencesApi.get_branches"
      end
      # resource path
      local_var_path = '/api/v2/code-refs/repositories/{repo}/branches'.sub('{' + 'repo' + '}', CGI.escape(repo.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BranchCollectionRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"CodeReferencesApi.get_branches",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CodeReferencesApi#get_branches\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List extinctions
    # Get a list of all extinctions. LaunchDarkly creates an extinction event after you remove all code references to a flag. To learn more, read [Understanding extinction events](https://docs.launchdarkly.com/home/code/code-references#understanding-extinction-events).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :repo_name Filter results to a specific repository
    # @option opts [String] :branch_name Filter results to a specific branch. By default, only the default branch will be queried for extinctions.
    # @option opts [String] :proj_key Filter results to a specific project
    # @option opts [String] :flag_key Filter results to a specific flag key
    # @option opts [Integer] :from Filter results to a specific timeframe based on commit time, expressed as a Unix epoch time in milliseconds. Must be used with &#x60;to&#x60;.
    # @option opts [Integer] :to Filter results to a specific timeframe based on commit time, expressed as a Unix epoch time in milliseconds. Must be used with &#x60;from&#x60;.
    # @return [ExtinctionCollectionRep]
    def get_extinctions(opts = {})
      data, _status_code, _headers = get_extinctions_with_http_info(opts)
      data
    end

    # List extinctions
    # Get a list of all extinctions. LaunchDarkly creates an extinction event after you remove all code references to a flag. To learn more, read [Understanding extinction events](https://docs.launchdarkly.com/home/code/code-references#understanding-extinction-events).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :repo_name Filter results to a specific repository
    # @option opts [String] :branch_name Filter results to a specific branch. By default, only the default branch will be queried for extinctions.
    # @option opts [String] :proj_key Filter results to a specific project
    # @option opts [String] :flag_key Filter results to a specific flag key
    # @option opts [Integer] :from Filter results to a specific timeframe based on commit time, expressed as a Unix epoch time in milliseconds. Must be used with &#x60;to&#x60;.
    # @option opts [Integer] :to Filter results to a specific timeframe based on commit time, expressed as a Unix epoch time in milliseconds. Must be used with &#x60;from&#x60;.
    # @return [Array<(ExtinctionCollectionRep, Integer, Hash)>] ExtinctionCollectionRep data, response status code and response headers
    def get_extinctions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CodeReferencesApi.get_extinctions ...'
      end
      # resource path
      local_var_path = '/api/v2/code-refs/extinctions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'repoName'] = opts[:'repo_name'] if !opts[:'repo_name'].nil?
      query_params[:'branchName'] = opts[:'branch_name'] if !opts[:'branch_name'].nil?
      query_params[:'projKey'] = opts[:'proj_key'] if !opts[:'proj_key'].nil?
      query_params[:'flagKey'] = opts[:'flag_key'] if !opts[:'flag_key'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ExtinctionCollectionRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"CodeReferencesApi.get_extinctions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CodeReferencesApi#get_extinctions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List repositories
    # Get a list of connected repositories. Optionally, you can include branch metadata with the `withBranches` query parameter. Embed references for the default branch with `ReferencesForDefaultBranch`. You can also filter the list of code references by project key and flag key.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :with_branches If set to any value, the endpoint returns repositories with associated branch data
    # @option opts [String] :with_references_for_default_branch If set to any value, the endpoint returns repositories with associated branch data, as well as code references for the default git branch
    # @option opts [String] :proj_key A LaunchDarkly project key. If provided, this filters code reference results to the specified project.
    # @option opts [String] :flag_key If set to any value, the endpoint returns repositories with associated branch data, as well as code references for the default git branch
    # @return [RepositoryCollectionRep]
    def get_repositories(opts = {})
      data, _status_code, _headers = get_repositories_with_http_info(opts)
      data
    end

    # List repositories
    # Get a list of connected repositories. Optionally, you can include branch metadata with the &#x60;withBranches&#x60; query parameter. Embed references for the default branch with &#x60;ReferencesForDefaultBranch&#x60;. You can also filter the list of code references by project key and flag key.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :with_branches If set to any value, the endpoint returns repositories with associated branch data
    # @option opts [String] :with_references_for_default_branch If set to any value, the endpoint returns repositories with associated branch data, as well as code references for the default git branch
    # @option opts [String] :proj_key A LaunchDarkly project key. If provided, this filters code reference results to the specified project.
    # @option opts [String] :flag_key If set to any value, the endpoint returns repositories with associated branch data, as well as code references for the default git branch
    # @return [Array<(RepositoryCollectionRep, Integer, Hash)>] RepositoryCollectionRep data, response status code and response headers
    def get_repositories_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CodeReferencesApi.get_repositories ...'
      end
      # resource path
      local_var_path = '/api/v2/code-refs/repositories'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'withBranches'] = opts[:'with_branches'] if !opts[:'with_branches'].nil?
      query_params[:'withReferencesForDefaultBranch'] = opts[:'with_references_for_default_branch'] if !opts[:'with_references_for_default_branch'].nil?
      query_params[:'projKey'] = opts[:'proj_key'] if !opts[:'proj_key'].nil?
      query_params[:'flagKey'] = opts[:'flag_key'] if !opts[:'flag_key'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RepositoryCollectionRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"CodeReferencesApi.get_repositories",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CodeReferencesApi#get_repositories\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get repository
    # Get a single repository by name.
    # @param repo [String] The repository name
    # @param [Hash] opts the optional parameters
    # @return [RepositoryRep]
    def get_repository(repo, opts = {})
      data, _status_code, _headers = get_repository_with_http_info(repo, opts)
      data
    end

    # Get repository
    # Get a single repository by name.
    # @param repo [String] The repository name
    # @param [Hash] opts the optional parameters
    # @return [Array<(RepositoryRep, Integer, Hash)>] RepositoryRep data, response status code and response headers
    def get_repository_with_http_info(repo, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CodeReferencesApi.get_repository ...'
      end
      # verify the required parameter 'repo' is set
      if @api_client.config.client_side_validation && repo.nil?
        fail ArgumentError, "Missing the required parameter 'repo' when calling CodeReferencesApi.get_repository"
      end
      # resource path
      local_var_path = '/api/v2/code-refs/repositories/{repo}'.sub('{' + 'repo' + '}', CGI.escape(repo.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RepositoryRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"CodeReferencesApi.get_repository",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CodeReferencesApi#get_repository\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get links to code reference repositories for each project
    # Get links for all projects that have code references.
    # @param [Hash] opts the optional parameters
    # @return [StatisticsRoot]
    def get_root_statistic(opts = {})
      data, _status_code, _headers = get_root_statistic_with_http_info(opts)
      data
    end

    # Get links to code reference repositories for each project
    # Get links for all projects that have code references.
    # @param [Hash] opts the optional parameters
    # @return [Array<(StatisticsRoot, Integer, Hash)>] StatisticsRoot data, response status code and response headers
    def get_root_statistic_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CodeReferencesApi.get_root_statistic ...'
      end
      # resource path
      local_var_path = '/api/v2/code-refs/statistics'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'StatisticsRoot'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"CodeReferencesApi.get_root_statistic",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CodeReferencesApi#get_root_statistic\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get code references statistics for flags
    # Get statistics about all the code references across repositories for all flags in your project that have code references in the default branch, for example, `main`. Optionally, you can include the `flagKey` query parameter to limit your request to statistics about code references for a single flag. This endpoint returns the number of references to your flag keys in your repositories, as well as a link to each repository.
    # @param project_key [String] The project key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :flag_key Filter results to a specific flag key
    # @return [StatisticCollectionRep]
    def get_statistics(project_key, opts = {})
      data, _status_code, _headers = get_statistics_with_http_info(project_key, opts)
      data
    end

    # Get code references statistics for flags
    # Get statistics about all the code references across repositories for all flags in your project that have code references in the default branch, for example, &#x60;main&#x60;. Optionally, you can include the &#x60;flagKey&#x60; query parameter to limit your request to statistics about code references for a single flag. This endpoint returns the number of references to your flag keys in your repositories, as well as a link to each repository.
    # @param project_key [String] The project key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :flag_key Filter results to a specific flag key
    # @return [Array<(StatisticCollectionRep, Integer, Hash)>] StatisticCollectionRep data, response status code and response headers
    def get_statistics_with_http_info(project_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CodeReferencesApi.get_statistics ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling CodeReferencesApi.get_statistics"
      end
      # resource path
      local_var_path = '/api/v2/code-refs/statistics/{projectKey}'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'flagKey'] = opts[:'flag_key'] if !opts[:'flag_key'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'StatisticCollectionRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"CodeReferencesApi.get_statistics",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CodeReferencesApi#get_statistics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update repository
    # Update a repository's settings. The request must be a valid JSON Patch document describing the changes to be made to the repository.
    # @param repo [String] The repository name
    # @param patch_operation [Array<PatchOperation>] 
    # @param [Hash] opts the optional parameters
    # @return [RepositoryRep]
    def patch_repository(repo, patch_operation, opts = {})
      data, _status_code, _headers = patch_repository_with_http_info(repo, patch_operation, opts)
      data
    end

    # Update repository
    # Update a repository&#39;s settings. The request must be a valid JSON Patch document describing the changes to be made to the repository.
    # @param repo [String] The repository name
    # @param patch_operation [Array<PatchOperation>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RepositoryRep, Integer, Hash)>] RepositoryRep data, response status code and response headers
    def patch_repository_with_http_info(repo, patch_operation, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CodeReferencesApi.patch_repository ...'
      end
      # verify the required parameter 'repo' is set
      if @api_client.config.client_side_validation && repo.nil?
        fail ArgumentError, "Missing the required parameter 'repo' when calling CodeReferencesApi.patch_repository"
      end
      # verify the required parameter 'patch_operation' is set
      if @api_client.config.client_side_validation && patch_operation.nil?
        fail ArgumentError, "Missing the required parameter 'patch_operation' when calling CodeReferencesApi.patch_repository"
      end
      # resource path
      local_var_path = '/api/v2/code-refs/repositories/{repo}'.sub('{' + 'repo' + '}', CGI.escape(repo.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_operation)

      # return_type
      return_type = opts[:debug_return_type] || 'RepositoryRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"CodeReferencesApi.patch_repository",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CodeReferencesApi#patch_repository\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create extinction
    # Create a new extinction.
    # @param repo [String] The repository name
    # @param branch [String] The URL-encoded branch name
    # @param extinction [Array<Extinction>] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def post_extinction(repo, branch, extinction, opts = {})
      post_extinction_with_http_info(repo, branch, extinction, opts)
      nil
    end

    # Create extinction
    # Create a new extinction.
    # @param repo [String] The repository name
    # @param branch [String] The URL-encoded branch name
    # @param extinction [Array<Extinction>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def post_extinction_with_http_info(repo, branch, extinction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CodeReferencesApi.post_extinction ...'
      end
      # verify the required parameter 'repo' is set
      if @api_client.config.client_side_validation && repo.nil?
        fail ArgumentError, "Missing the required parameter 'repo' when calling CodeReferencesApi.post_extinction"
      end
      # verify the required parameter 'branch' is set
      if @api_client.config.client_side_validation && branch.nil?
        fail ArgumentError, "Missing the required parameter 'branch' when calling CodeReferencesApi.post_extinction"
      end
      # verify the required parameter 'extinction' is set
      if @api_client.config.client_side_validation && extinction.nil?
        fail ArgumentError, "Missing the required parameter 'extinction' when calling CodeReferencesApi.post_extinction"
      end
      # resource path
      local_var_path = '/api/v2/code-refs/repositories/{repo}/branches/{branch}/extinction-events'.sub('{' + 'repo' + '}', CGI.escape(repo.to_s)).sub('{' + 'branch' + '}', CGI.escape(branch.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(extinction)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"CodeReferencesApi.post_extinction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CodeReferencesApi#post_extinction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create repository
    # Create a repository with the specified name.
    # @param repository_post [RepositoryPost] 
    # @param [Hash] opts the optional parameters
    # @return [RepositoryRep]
    def post_repository(repository_post, opts = {})
      data, _status_code, _headers = post_repository_with_http_info(repository_post, opts)
      data
    end

    # Create repository
    # Create a repository with the specified name.
    # @param repository_post [RepositoryPost] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RepositoryRep, Integer, Hash)>] RepositoryRep data, response status code and response headers
    def post_repository_with_http_info(repository_post, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CodeReferencesApi.post_repository ...'
      end
      # verify the required parameter 'repository_post' is set
      if @api_client.config.client_side_validation && repository_post.nil?
        fail ArgumentError, "Missing the required parameter 'repository_post' when calling CodeReferencesApi.post_repository"
      end
      # resource path
      local_var_path = '/api/v2/code-refs/repositories'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(repository_post)

      # return_type
      return_type = opts[:debug_return_type] || 'RepositoryRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"CodeReferencesApi.post_repository",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CodeReferencesApi#post_repository\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upsert branch
    # Create a new branch if it doesn't exist, or update the branch if it already exists.
    # @param repo [String] The repository name
    # @param branch [String] The URL-encoded branch name
    # @param put_branch [PutBranch] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def put_branch(repo, branch, put_branch, opts = {})
      put_branch_with_http_info(repo, branch, put_branch, opts)
      nil
    end

    # Upsert branch
    # Create a new branch if it doesn&#39;t exist, or update the branch if it already exists.
    # @param repo [String] The repository name
    # @param branch [String] The URL-encoded branch name
    # @param put_branch [PutBranch] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def put_branch_with_http_info(repo, branch, put_branch, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CodeReferencesApi.put_branch ...'
      end
      # verify the required parameter 'repo' is set
      if @api_client.config.client_side_validation && repo.nil?
        fail ArgumentError, "Missing the required parameter 'repo' when calling CodeReferencesApi.put_branch"
      end
      # verify the required parameter 'branch' is set
      if @api_client.config.client_side_validation && branch.nil?
        fail ArgumentError, "Missing the required parameter 'branch' when calling CodeReferencesApi.put_branch"
      end
      # verify the required parameter 'put_branch' is set
      if @api_client.config.client_side_validation && put_branch.nil?
        fail ArgumentError, "Missing the required parameter 'put_branch' when calling CodeReferencesApi.put_branch"
      end
      # resource path
      local_var_path = '/api/v2/code-refs/repositories/{repo}/branches/{branch}'.sub('{' + 'repo' + '}', CGI.escape(repo.to_s)).sub('{' + 'branch' + '}', CGI.escape(branch.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(put_branch)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"CodeReferencesApi.put_branch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CodeReferencesApi#put_branch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
