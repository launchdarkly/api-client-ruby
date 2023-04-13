=begin
#LaunchDarkly REST API

## Overview  ## Authentication  All REST API resources are authenticated with either [personal or service access tokens](https://docs.launchdarkly.com/home/account-security/api-access-tokens), or session cookies. Other authentication mechanisms are not supported. You can manage personal access tokens on your [**Account settings**](https://app.launchdarkly.com/settings/tokens) page.  LaunchDarkly also has SDK keys, mobile keys, and client-side IDs that are used by our server-side SDKs, mobile SDKs, and JavaScript-based SDKs, respectively. **These keys cannot be used to access our REST API**. These keys are environment-specific, and can only perform read-only operations such as fetching feature flag settings.  | Auth mechanism                                                                                  | Allowed resources                                                                                     | Use cases                                          | | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | -------------------------------------------------- | | [Personal or service access tokens](https://docs.launchdarkly.com/home/account-security/api-access-tokens) | Can be customized on a per-token basis                                                                | Building scripts, custom integrations, data export. | | SDK keys                                                                                        | Can only access read-only resources specific to server-side SDKs. Restricted to a single environment. | Server-side SDKs                     | | Mobile keys                                                                                     | Can only access read-only resources specific to mobile SDKs, and only for flags marked available to mobile keys. Restricted to a single environment.           | Mobile SDKs                                        | | Client-side ID                                                                                  | Can only access read-only resources specific to JavaScript-based client-side SDKs, and only for flags marked available to client-side. Restricted to a single environment.           | Client-side JavaScript                             |  > #### Keep your access tokens and SDK keys private > > Access tokens should _never_ be exposed in untrusted contexts. Never put an access token in client-side JavaScript, or embed it in a mobile application. LaunchDarkly has special mobile keys that you can embed in mobile apps. If you accidentally expose an access token or SDK key, you can reset it from your [**Account settings**](https://app.launchdarkly.com/settings/tokens) page. > > The client-side ID is safe to embed in untrusted contexts. It's designed for use in client-side JavaScript.  ### Authentication using request header  The preferred way to authenticate with the API is by adding an `Authorization` header containing your access token to your requests. The value of the `Authorization` header must be your access token.  Manage personal access tokens from the [**Account settings**](https://app.launchdarkly.com/settings/tokens) page.  ### Authentication using session cookie  For testing purposes, you can make API calls directly from your web browser. If you are logged in to the LaunchDarkly application, the API will use your existing session to authenticate calls.  If you have a [role](https://docs.launchdarkly.com/home/team/built-in-roles) other than Admin, or have a [custom role](https://docs.launchdarkly.com/home/team/custom-roles) defined, you may not have permission to perform some API calls. You will receive a `401` response code in that case.  > ### Modifying the Origin header causes an error > > LaunchDarkly validates that the Origin header for any API request authenticated by a session cookie matches the expected Origin header. The expected Origin header is `https://app.launchdarkly.com`. > > If the Origin header does not match what's expected, LaunchDarkly returns an error. This error can prevent the LaunchDarkly app from working correctly. > > Any browser extension that intentionally changes the Origin header can cause this problem. For example, the `Allow-Control-Allow-Origin: *` Chrome extension changes the Origin header to `http://evil.com` and causes the app to fail. > > To prevent this error, do not modify your Origin header. > > LaunchDarkly does not require origin matching when authenticating with an access token, so this issue does not affect normal API usage.  ## Representations  All resources expect and return JSON response bodies. Error responses also send a JSON body. To learn more about the error format of the API, read [Errors](/#section/Overview/Errors).  In practice this means that you always get a response with a `Content-Type` header set to `application/json`.  In addition, request bodies for `PATCH`, `POST`, and `PUT` requests must be encoded as JSON with a `Content-Type` header set to `application/json`.  ### Summary and detailed representations  When you fetch a list of resources, the response includes only the most important attributes of each resource. This is a _summary representation_ of the resource. When you fetch an individual resource, such as a single feature flag, you receive a _detailed representation_ of the resource.  The best way to find a detailed representation is to follow links. Every summary representation includes a link to its detailed representation.  ### Expanding responses  Sometimes the detailed representation of a resource does not include all of the attributes of the resource by default. If this is the case, the request method will clearly document this and describe which attributes you can include in an expanded response.  To include the additional attributes, append the `expand` request parameter to your request and add a comma-separated list of the attributes to include. For example, when you append `?expand=members,roles` to the [Get team](/tag/Teams#operation/getTeam) endpoint, the expanded response includes both of these attributes.  ### Links and addressability  The best way to navigate the API is by following links. These are attributes in representations that link to other resources. The API always uses the same format for links:  - Links to other resources within the API are encapsulated in a `_links` object - If the resource has a corresponding link to HTML content on the site, it is stored in a special `_site` link  Each link has two attributes:  - An `href`, which contains the URL - A `type`, which describes the content type  For example, a feature resource might return the following:  ```json {   \"_links\": {     \"parent\": {       \"href\": \"/api/features\",       \"type\": \"application/json\"     },     \"self\": {       \"href\": \"/api/features/sort.order\",       \"type\": \"application/json\"     }   },   \"_site\": {     \"href\": \"/features/sort.order\",     \"type\": \"text/html\"   } } ```  From this, you can navigate to the parent collection of features by following the `parent` link, or navigate to the site page for the feature by following the `_site` link.  Collections are always represented as a JSON object with an `items` attribute containing an array of representations. Like all other representations, collections have `_links` defined at the top level.  Paginated collections include `first`, `last`, `next`, and `prev` links containing a URL with the respective set of elements in the collection.  ## Updates  Resources that accept partial updates use the `PATCH` verb. Most resources support the [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) format. Some resources also support the [JSON merge patch](https://datatracker.ietf.org/doc/html/rfc7386) format, and some resources support the [semantic patch](/reference#updates-using-semantic-patch) format, which is a way to specify the modifications to perform as a set of executable instructions. Each resource supports optional [comments](/reference#updates-with-comments) that you can submit with updates. Comments appear in outgoing webhooks, the audit log, and other integrations.  When a resource supports both JSON patch and semantic patch, we document both in the request method. However, the specific request body fields and descriptions included in our documentation only match one type of patch or the other.  ### Updates using JSON patch  [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) is a way to specify the modifications to perform on a resource. JSON patch uses paths and a limited set of operations to describe how to transform the current state of the resource into a new state. JSON patch documents are always arrays, where each element contains an operation, a path to the field to update, and the new value.  For example, in this feature flag representation:  ```json {     \"name\": \"New recommendations engine\",     \"key\": \"engine.enable\",     \"description\": \"This is the description\",     ... } ``` You can change the feature flag's description with the following patch document:  ```json [{ \"op\": \"replace\", \"path\": \"/description\", \"value\": \"This is the new description\" }] ```  You can specify multiple modifications to perform in a single request. You can also test that certain preconditions are met before applying the patch:  ```json [   { \"op\": \"test\", \"path\": \"/version\", \"value\": 10 },   { \"op\": \"replace\", \"path\": \"/description\", \"value\": \"The new description\" } ] ```  The above patch request tests whether the feature flag's `version` is `10`, and if so, changes the feature flag's description.  Attributes that are not editable, such as a resource's `_links`, have names that start with an underscore.  ### Updates using JSON merge patch  [JSON merge patch](https://datatracker.ietf.org/doc/html/rfc7386) is another format for specifying the modifications to perform on a resource. JSON merge patch is less expressive than JSON patch. However, in many cases it is simpler to construct a merge patch document. For example, you can change a feature flag's description with the following merge patch document:  ```json {   \"description\": \"New flag description\" } ```  ### Updates using semantic patch  The API also supports the semantic patch format. A semantic patch is a way to specify the modifications to perform on a resource as a set of executable instructions.  Semantic patch allows you to be explicit about intent using precise, custom instructions. In many cases, you can define semantic patch instructions independently of the current state of the resource. This can be useful when defining a change that may be applied at a future date.  To make a semantic patch request, you must append `domain-model=launchdarkly.semanticpatch` to your `Content-Type` header.  Here's how:  ``` Content-Type: application/json; domain-model=launchdarkly.semanticpatch ```  If you call a semantic patch resource without this header, you will receive a `400` response because your semantic patch will be interpreted as a JSON patch.  The body of a semantic patch request takes the following properties:  * `comment` (string): (Optional) A description of the update. * `environmentKey` (string): (Required for some resources only) The environment key. * `instructions` (array): (Required) A list of actions the update should perform. Each action in the list must be an object with a `kind` property that indicates the instruction. If the instruction requires parameters, you must include those parameters as additional fields in the object. The documentation for each resource that supports semantic patch includes the available instructions and any additional parameters.  For example:  ```json {   \"comment\": \"optional comment\",   \"instructions\": [ {\"kind\": \"turnFlagOn\"} ] } ```  If any instruction in the patch encounters an error, the endpoint returns an error and will not change the resource. In general, each instruction silently does nothing if the resource is already in the state you request.  ### Updates with comments  You can submit optional comments with `PATCH` changes.  To submit a comment along with a JSON patch document, use the following format:  ```json {   \"comment\": \"This is a comment string\",   \"patch\": [{ \"op\": \"replace\", \"path\": \"/description\", \"value\": \"The new description\" }] } ```  To submit a comment along with a JSON merge patch document, use the following format:  ```json {   \"comment\": \"This is a comment string\",   \"merge\": { \"description\": \"New flag description\" } } ```  To submit a comment along with a semantic patch, use the following format:  ```json {   \"comment\": \"This is a comment string\",   \"instructions\": [ {\"kind\": \"turnFlagOn\"} ] } ```  ## Errors  The API always returns errors in a common format. Here's an example:  ```json {   \"code\": \"invalid_request\",   \"message\": \"A feature with that key already exists\",   \"id\": \"30ce6058-87da-11e4-b116-123b93f75cba\" } ```  The `code` indicates the general class of error. The `message` is a human-readable explanation of what went wrong. The `id` is a unique identifier. Use it when you're working with LaunchDarkly Support to debug a problem with a specific API call.  ### HTTP status error response codes  | Code | Definition        | Description                                                                                       | Possible Solution                                                | | ---- | ----------------- | ------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- | | 400  | Invalid request       | The request cannot be understood.                                    | Ensure JSON syntax in request body is correct.                   | | 401  | Invalid access token      | Requestor is unauthorized or does not have permission for this API call.                                                | Ensure your API access token is valid and has the appropriate permissions.                                     | | 403  | Forbidden         | Requestor does not have access to this resource.                                                | Ensure that the account member or access token has proper permissions set. | | 404  | Invalid resource identifier | The requested resource is not valid. | Ensure that the resource is correctly identified by ID or key. | | 405  | Method not allowed | The request method is not allowed on this resource. | Ensure that the HTTP verb is correct. | | 409  | Conflict          | The API request can not be completed because it conflicts with a concurrent API request. | Retry your request.                                              | | 422  | Unprocessable entity | The API request can not be completed because the update description can not be understood. | Ensure that the request body is correct for the type of patch you are using, either JSON patch or semantic patch. | 429  | Too many requests | Read [Rate limiting](/#section/Overview/Rate-limiting).                                               | Wait and try again later.                                        |  ## CORS  The LaunchDarkly API supports Cross Origin Resource Sharing (CORS) for AJAX requests from any origin. If an `Origin` header is given in a request, it will be echoed as an explicitly allowed origin. Otherwise the request returns a wildcard, `Access-Control-Allow-Origin: *`. For more information on CORS, read the [CORS W3C Recommendation](http://www.w3.org/TR/cors). Example CORS headers might look like:  ```http Access-Control-Allow-Headers: Accept, Content-Type, Content-Length, Accept-Encoding, Authorization Access-Control-Allow-Methods: OPTIONS, GET, DELETE, PATCH Access-Control-Allow-Origin: * Access-Control-Max-Age: 300 ```  You can make authenticated CORS calls just as you would make same-origin calls, using either [token or session-based authentication](/#section/Overview/Authentication). If you are using session authentication, you should set the `withCredentials` property for your `xhr` request to `true`. You should never expose your access tokens to untrusted entities.  ## Rate limiting  We use several rate limiting strategies to ensure the availability of our APIs. Rate-limited calls to our APIs return a `429` status code. Calls to our APIs include headers indicating the current rate limit status. The specific headers returned depend on the API route being called. The limits differ based on the route, authentication mechanism, and other factors. Routes that are not rate limited may not contain any of the headers described below.  > ### Rate limiting and SDKs > > LaunchDarkly SDKs are never rate limited and do not use the API endpoints defined here. LaunchDarkly uses a different set of approaches, including streaming/server-sent events and a global CDN, to ensure availability to the routes used by LaunchDarkly SDKs.  ### Global rate limits  Authenticated requests are subject to a global limit. This is the maximum number of calls that your account can make to the API per ten seconds. All personal access tokens on the account share this limit, so exceeding the limit with one access token will impact other tokens. Calls that are subject to global rate limits may return the headers below:  | Header name                    | Description                                                                      | | ------------------------------ | -------------------------------------------------------------------------------- | | `X-Ratelimit-Global-Remaining` | The maximum number of requests the account is permitted to make per ten seconds. | | `X-Ratelimit-Reset`            | The time at which the current rate limit window resets in epoch milliseconds.    |  We do not publicly document the specific number of calls that can be made globally. This limit may change, and we encourage clients to program against the specification, relying on the two headers defined above, rather than hardcoding to the current limit.  ### Route-level rate limits  Some authenticated routes have custom rate limits. These also reset every ten seconds. Any access tokens hitting the same route share this limit, so exceeding the limit with one access token may impact other tokens. Calls that are subject to route-level rate limits return the headers below:  | Header name                   | Description                                                                                           | | ----------------------------- | ----------------------------------------------------------------------------------------------------- | | `X-Ratelimit-Route-Remaining` | The maximum number of requests to the current route the account is permitted to make per ten seconds. | | `X-Ratelimit-Reset`           | The time at which the current rate limit window resets in epoch milliseconds.                         |  A _route_ represents a specific URL pattern and verb. For example, the [Delete environment](/tag/Environments#operation/deleteEnvironment) endpoint is considered a single route, and each call to delete an environment counts against your route-level rate limit for that route.  We do not publicly document the specific number of calls that an account can make to each endpoint per ten seconds. These limits may change, and we encourage clients to program against the specification, relying on the two headers defined above, rather than hardcoding to the current limits.  ### IP-based rate limiting  We also employ IP-based rate limiting on some API routes. If you hit an IP-based rate limit, your API response will include a `Retry-After` header indicating how long to wait before re-trying the call. Clients must wait at least `Retry-After` seconds before making additional calls to our API, and should employ jitter and backoff strategies to avoid triggering rate limits again.  ## OpenAPI (Swagger) and client libraries  We have a [complete OpenAPI (Swagger) specification](https://app.launchdarkly.com/api/v2/openapi.json) for our API.  We auto-generate multiple client libraries based on our OpenAPI specification. To learn more, visit the [collection of client libraries on GitHub](https://github.com/search?q=topic%3Alaunchdarkly-api+org%3Alaunchdarkly&type=Repositories). You can also use this specification to generate client libraries to interact with our REST API in your language of choice.  Our OpenAPI specification is supported by several API-based tools such as Postman and Insomnia. In many cases, you can directly import our specification to explore our APIs.  ## Method overriding  Some firewalls and HTTP clients restrict the use of verbs other than `GET` and `POST`. In those environments, our API endpoints that use `DELETE`, `PATCH`, and `PUT` verbs are inaccessible.  To avoid this issue, our API supports the `X-HTTP-Method-Override` header, allowing clients to \"tunnel\" `DELETE`, `PATCH`, and `PUT` requests using a `POST` request.  For example, to call a `PATCH` endpoint using a `POST` request, you can include `X-HTTP-Method-Override:PATCH` as a header.  ## Beta resources  We sometimes release new API resources in **beta** status before we release them with general availability.  Resources that are in beta are still undergoing testing and development. They may change without notice, including becoming backwards incompatible.  We try to promote resources into general availability as quickly as possible. This happens after sufficient testing and when we're satisfied that we no longer need to make backwards-incompatible changes.  We mark beta resources with a \"Beta\" callout in our documentation, pictured below:  > ### This feature is in beta > > To use this feature, pass in a header including the `LD-API-Version` key with value set to `beta`. Use this header with each call. To learn more, read [Beta resources](/#section/Overview/Beta-resources). > > Resources that are in beta are still undergoing testing and development. They may change without notice, including becoming backwards incompatible.  ### Using beta resources  To use a beta resource, you must include a header in the request. If you call a beta resource without this header, you receive a `403` response.  Use this header:  ``` LD-API-Version: beta ```  ## Federal environments  The version of LaunchDarkly that is available on domains controlled by the United States government is different from the version of LaunchDarkly available to the general public. If you are an employee or contractor for a United States federal agency and use LaunchDarkly in your work, you likely use the federal instance of LaunchDarkly.  If you are working in the federal instance of LaunchDarkly, the base URI for each request is `https://app.launchdarkly.us`. In the \"Try it\" sandbox for each request, click the request path to view the complete resource path for the federal environment.  To learn more, read [LaunchDarkly in federal environments](https://docs.launchdarkly.com/home/advanced/federal).  ## Versioning  We try hard to keep our REST API backwards compatible, but we occasionally have to make backwards-incompatible changes in the process of shipping new features. These breaking changes can cause unexpected behavior if you don't prepare for them accordingly.  Updates to our REST API include support for the latest features in LaunchDarkly. We also release a new version of our REST API every time we make a breaking change. We provide simultaneous support for multiple API versions so you can migrate from your current API version to a new version at your own pace.  ### Setting the API version per request  You can set the API version on a specific request by sending an `LD-API-Version` header, as shown in the example below:  ``` LD-API-Version: 20220603 ```  The header value is the version number of the API version you would like to request. The number for each version corresponds to the date the version was released in `yyyymmdd` format. In the example above the version `20220603` corresponds to June 03, 2022.  ### Setting the API version per access token  When you create an access token, you must specify a specific version of the API to use. This ensures that integrations using this token cannot be broken by version changes.  Tokens created before versioning was released have their version set to `20160426`, which is the version of the API that existed before the current versioning scheme, so that they continue working the same way they did before versioning.  If you would like to upgrade your integration to use a new API version, you can explicitly set the header described above.  > ### Best practice: Set the header for every client or integration > > We recommend that you set the API version header explicitly in any client or integration you build. > > Only rely on the access token API version during manual testing.  ### API version changelog  |<div style=\"width:75px\">Version</div> | Changes | End of life (EOL) |---|---|---| | `20220603` | <ul><li>Changed the [list projects](/tag/Projects#operation/getProjects) return value:<ul><li>Response is now paginated with a default limit of `20`.</li><li>Added support for filter and sort.</li><li>The project `environments` field is now expandable. This field is omitted by default.</li></ul></li><li>Changed the [get project](/tag/Projects#operation/getProject) return value:<ul><li>The `environments` field is now expandable. This field is omitted by default.</li></ul></li></ul> | Current | | `20210729` | <ul><li>Changed the [create approval request](/tag/Approvals#operation/postApprovalRequest) return value. It now returns HTTP Status Code `201` instead of `200`.</li><li> Changed the [get users](/tag/Users#operation/getUser) return value. It now returns a user record, not a user. </li><li>Added additional optional fields to environment, segments, flags, members, and segments, including the ability to create Big Segments. </li><li> Added default values for flag variations when new environments are created. </li><li>Added filtering and pagination for getting flags and members, including `limit`, `number`, `filter`, and `sort` query parameters. </li><li>Added endpoints for expiring user targets for flags and segments, scheduled changes, access tokens, Relay Proxy configuration, integrations and subscriptions, and approvals. </li></ul> | 2023-06-03 | | `20191212` | <ul><li>[List feature flags](/tag/Feature-flags#operation/getFeatureFlags) now defaults to sending summaries of feature flag configurations, equivalent to setting the query parameter `summary=true`. Summaries omit flag targeting rules and individual user targets from the payload. </li><li> Added endpoints for flags, flag status, projects, environments, audit logs, members, users, custom roles, segments, usage, streams, events, and data export. </li></ul> | 2022-07-29 | | `20160426` | <ul><li>Initial versioning of API. Tokens created before versioning have their version set to this.</li></ul> | 2020-12-12 | 

The version of the OpenAPI document: 2.0
Contact: support@launchdarkly.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

require 'cgi'

module LaunchDarklyApi
  class FeatureFlagsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Copy feature flag
    #  > ### Copying flag settings is an Enterprise feature > > Copying flag settings is available to customers on an Enterprise plan. To learn more, [read about our pricing](https://launchdarkly.com/pricing/). To upgrade your plan, [contact Sales](https://launchdarkly.com/contact-sales/).  Copy flag settings from a source environment to a target environment.  By default, this operation copies the entire flag configuration. You can use the `includedActions` or `excludedActions` to specify that only part of the flag configuration is copied.  If you provide the optional `currentVersion` of a flag, this operation tests to ensure that the current flag version in the environment matches the version you've specified. The operation rejects attempts to copy flag settings if the environment's current version  of the flag does not match the version you've specified. You can use this to enforce optimistic locking on copy attempts. 
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key. The key identifies the flag in your code.
    # @param flag_copy_config_post [FlagCopyConfigPost] 
    # @param [Hash] opts the optional parameters
    # @return [FeatureFlag]
    def copy_feature_flag(project_key, feature_flag_key, flag_copy_config_post, opts = {})
      data, _status_code, _headers = copy_feature_flag_with_http_info(project_key, feature_flag_key, flag_copy_config_post, opts)
      data
    end

    # Copy feature flag
    #  &gt; ### Copying flag settings is an Enterprise feature &gt; &gt; Copying flag settings is available to customers on an Enterprise plan. To learn more, [read about our pricing](https://launchdarkly.com/pricing/). To upgrade your plan, [contact Sales](https://launchdarkly.com/contact-sales/).  Copy flag settings from a source environment to a target environment.  By default, this operation copies the entire flag configuration. You can use the &#x60;includedActions&#x60; or &#x60;excludedActions&#x60; to specify that only part of the flag configuration is copied.  If you provide the optional &#x60;currentVersion&#x60; of a flag, this operation tests to ensure that the current flag version in the environment matches the version you&#39;ve specified. The operation rejects attempts to copy flag settings if the environment&#39;s current version  of the flag does not match the version you&#39;ve specified. You can use this to enforce optimistic locking on copy attempts. 
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key. The key identifies the flag in your code.
    # @param flag_copy_config_post [FlagCopyConfigPost] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeatureFlag, Integer, Hash)>] FeatureFlag data, response status code and response headers
    def copy_feature_flag_with_http_info(project_key, feature_flag_key, flag_copy_config_post, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureFlagsApi.copy_feature_flag ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling FeatureFlagsApi.copy_feature_flag"
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling FeatureFlagsApi.copy_feature_flag"
      end
      # verify the required parameter 'flag_copy_config_post' is set
      if @api_client.config.client_side_validation && flag_copy_config_post.nil?
        fail ArgumentError, "Missing the required parameter 'flag_copy_config_post' when calling FeatureFlagsApi.copy_feature_flag"
      end
      # resource path
      local_var_path = '/api/v2/flags/{projectKey}/{featureFlagKey}/copy'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s)).sub('{' + 'featureFlagKey' + '}', CGI.escape(feature_flag_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(flag_copy_config_post)

      # return_type
      return_type = opts[:debug_return_type] || 'FeatureFlag'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"FeatureFlagsApi.copy_feature_flag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureFlagsApi#copy_feature_flag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete feature flag
    # Delete a feature flag in all environments. Use with caution: only delete feature flags your application no longer uses.
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key. The key identifies the flag in your code.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_feature_flag(project_key, feature_flag_key, opts = {})
      delete_feature_flag_with_http_info(project_key, feature_flag_key, opts)
      nil
    end

    # Delete feature flag
    # Delete a feature flag in all environments. Use with caution: only delete feature flags your application no longer uses.
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key. The key identifies the flag in your code.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_feature_flag_with_http_info(project_key, feature_flag_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureFlagsApi.delete_feature_flag ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling FeatureFlagsApi.delete_feature_flag"
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling FeatureFlagsApi.delete_feature_flag"
      end
      # resource path
      local_var_path = '/api/v2/flags/{projectKey}/{featureFlagKey}'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s)).sub('{' + 'featureFlagKey' + '}', CGI.escape(feature_flag_key.to_s))

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
        :operation => :"FeatureFlagsApi.delete_feature_flag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureFlagsApi#delete_feature_flag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get expiring context targets for feature flag
    # Get a list of context targets on a feature flag that are scheduled for removal.
    # @param project_key [String] The project key
    # @param environment_key [String] The environment key
    # @param feature_flag_key [String] The feature flag key
    # @param [Hash] opts the optional parameters
    # @return [ExpiringTargetGetResponse]
    def get_expiring_context_targets(project_key, environment_key, feature_flag_key, opts = {})
      data, _status_code, _headers = get_expiring_context_targets_with_http_info(project_key, environment_key, feature_flag_key, opts)
      data
    end

    # Get expiring context targets for feature flag
    # Get a list of context targets on a feature flag that are scheduled for removal.
    # @param project_key [String] The project key
    # @param environment_key [String] The environment key
    # @param feature_flag_key [String] The feature flag key
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpiringTargetGetResponse, Integer, Hash)>] ExpiringTargetGetResponse data, response status code and response headers
    def get_expiring_context_targets_with_http_info(project_key, environment_key, feature_flag_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureFlagsApi.get_expiring_context_targets ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling FeatureFlagsApi.get_expiring_context_targets"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling FeatureFlagsApi.get_expiring_context_targets"
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling FeatureFlagsApi.get_expiring_context_targets"
      end
      # resource path
      local_var_path = '/api/v2/flags/{projectKey}/{featureFlagKey}/expiring-targets/{environmentKey}'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s)).sub('{' + 'environmentKey' + '}', CGI.escape(environment_key.to_s)).sub('{' + 'featureFlagKey' + '}', CGI.escape(feature_flag_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ExpiringTargetGetResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"FeatureFlagsApi.get_expiring_context_targets",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureFlagsApi#get_expiring_context_targets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get expiring user targets for feature flag
    #  > ### Contexts are now available > > After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should use [Get expiring context targets for feature flag](/tag/Feature-flags#operation/getExpiringContextTargets) instead of this endpoint. To learn more, read [Contexts](https://docs.launchdarkly.com/home/contexts).  Get a list of user targets on a feature flag that are scheduled for removal. 
    # @param project_key [String] The project key
    # @param environment_key [String] The environment key
    # @param feature_flag_key [String] The feature flag key
    # @param [Hash] opts the optional parameters
    # @return [ExpiringUserTargetGetResponse]
    def get_expiring_user_targets(project_key, environment_key, feature_flag_key, opts = {})
      data, _status_code, _headers = get_expiring_user_targets_with_http_info(project_key, environment_key, feature_flag_key, opts)
      data
    end

    # Get expiring user targets for feature flag
    #  &gt; ### Contexts are now available &gt; &gt; After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should use [Get expiring context targets for feature flag](/tag/Feature-flags#operation/getExpiringContextTargets) instead of this endpoint. To learn more, read [Contexts](https://docs.launchdarkly.com/home/contexts).  Get a list of user targets on a feature flag that are scheduled for removal. 
    # @param project_key [String] The project key
    # @param environment_key [String] The environment key
    # @param feature_flag_key [String] The feature flag key
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpiringUserTargetGetResponse, Integer, Hash)>] ExpiringUserTargetGetResponse data, response status code and response headers
    def get_expiring_user_targets_with_http_info(project_key, environment_key, feature_flag_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureFlagsApi.get_expiring_user_targets ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling FeatureFlagsApi.get_expiring_user_targets"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling FeatureFlagsApi.get_expiring_user_targets"
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling FeatureFlagsApi.get_expiring_user_targets"
      end
      # resource path
      local_var_path = '/api/v2/flags/{projectKey}/{featureFlagKey}/expiring-user-targets/{environmentKey}'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s)).sub('{' + 'environmentKey' + '}', CGI.escape(environment_key.to_s)).sub('{' + 'featureFlagKey' + '}', CGI.escape(feature_flag_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ExpiringUserTargetGetResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"FeatureFlagsApi.get_expiring_user_targets",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureFlagsApi#get_expiring_user_targets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get feature flag
    # Get a single feature flag by key. By default, this returns the configurations for all environments. You can filter environments with the `env` query parameter. For example, setting `env=production` restricts the returned configurations to just the `production` environment.  ### Expanding response  LaunchDarkly supports the `expand` query param to include additional fields in the response, with the following fields:  - `evaluation` includes evaluation information within returned environments including which context kinds the flag has been evaluated for in the past 30 days   For example, `expand=evaluation` includes the `evaluation` field in the response. 
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :env Filter configurations by environment
    # @option opts [String] :expand A comma-separated list of fields to expand in the response. Supported fields are explained above.
    # @return [FeatureFlag]
    def get_feature_flag(project_key, feature_flag_key, opts = {})
      data, _status_code, _headers = get_feature_flag_with_http_info(project_key, feature_flag_key, opts)
      data
    end

    # Get feature flag
    # Get a single feature flag by key. By default, this returns the configurations for all environments. You can filter environments with the &#x60;env&#x60; query parameter. For example, setting &#x60;env&#x3D;production&#x60; restricts the returned configurations to just the &#x60;production&#x60; environment.  ### Expanding response  LaunchDarkly supports the &#x60;expand&#x60; query param to include additional fields in the response, with the following fields:  - &#x60;evaluation&#x60; includes evaluation information within returned environments including which context kinds the flag has been evaluated for in the past 30 days   For example, &#x60;expand&#x3D;evaluation&#x60; includes the &#x60;evaluation&#x60; field in the response. 
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :env Filter configurations by environment
    # @option opts [String] :expand A comma-separated list of fields to expand in the response. Supported fields are explained above.
    # @return [Array<(FeatureFlag, Integer, Hash)>] FeatureFlag data, response status code and response headers
    def get_feature_flag_with_http_info(project_key, feature_flag_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureFlagsApi.get_feature_flag ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling FeatureFlagsApi.get_feature_flag"
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling FeatureFlagsApi.get_feature_flag"
      end
      # resource path
      local_var_path = '/api/v2/flags/{projectKey}/{featureFlagKey}'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s)).sub('{' + 'featureFlagKey' + '}', CGI.escape(feature_flag_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'env'] = opts[:'env'] if !opts[:'env'].nil?
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FeatureFlag'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"FeatureFlagsApi.get_feature_flag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureFlagsApi#get_feature_flag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get feature flag status
    # Get the status for a particular feature flag.
    # @param project_key [String] The project key
    # @param environment_key [String] The environment key
    # @param feature_flag_key [String] The feature flag key
    # @param [Hash] opts the optional parameters
    # @return [FlagStatusRep]
    def get_feature_flag_status(project_key, environment_key, feature_flag_key, opts = {})
      data, _status_code, _headers = get_feature_flag_status_with_http_info(project_key, environment_key, feature_flag_key, opts)
      data
    end

    # Get feature flag status
    # Get the status for a particular feature flag.
    # @param project_key [String] The project key
    # @param environment_key [String] The environment key
    # @param feature_flag_key [String] The feature flag key
    # @param [Hash] opts the optional parameters
    # @return [Array<(FlagStatusRep, Integer, Hash)>] FlagStatusRep data, response status code and response headers
    def get_feature_flag_status_with_http_info(project_key, environment_key, feature_flag_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureFlagsApi.get_feature_flag_status ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling FeatureFlagsApi.get_feature_flag_status"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling FeatureFlagsApi.get_feature_flag_status"
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling FeatureFlagsApi.get_feature_flag_status"
      end
      # resource path
      local_var_path = '/api/v2/flag-statuses/{projectKey}/{environmentKey}/{featureFlagKey}'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s)).sub('{' + 'environmentKey' + '}', CGI.escape(environment_key.to_s)).sub('{' + 'featureFlagKey' + '}', CGI.escape(feature_flag_key.to_s))

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
      return_type = opts[:debug_return_type] || 'FlagStatusRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"FeatureFlagsApi.get_feature_flag_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureFlagsApi#get_feature_flag_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get flag status across environments
    # Get the status for a particular feature flag across environments.
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :env Optional environment filter
    # @return [FeatureFlagStatusAcrossEnvironments]
    def get_feature_flag_status_across_environments(project_key, feature_flag_key, opts = {})
      data, _status_code, _headers = get_feature_flag_status_across_environments_with_http_info(project_key, feature_flag_key, opts)
      data
    end

    # Get flag status across environments
    # Get the status for a particular feature flag across environments.
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :env Optional environment filter
    # @return [Array<(FeatureFlagStatusAcrossEnvironments, Integer, Hash)>] FeatureFlagStatusAcrossEnvironments data, response status code and response headers
    def get_feature_flag_status_across_environments_with_http_info(project_key, feature_flag_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureFlagsApi.get_feature_flag_status_across_environments ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling FeatureFlagsApi.get_feature_flag_status_across_environments"
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling FeatureFlagsApi.get_feature_flag_status_across_environments"
      end
      # resource path
      local_var_path = '/api/v2/flag-status/{projectKey}/{featureFlagKey}'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s)).sub('{' + 'featureFlagKey' + '}', CGI.escape(feature_flag_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'env'] = opts[:'env'] if !opts[:'env'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FeatureFlagStatusAcrossEnvironments'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"FeatureFlagsApi.get_feature_flag_status_across_environments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureFlagsApi#get_feature_flag_status_across_environments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List feature flag statuses
    # Get a list of statuses for all feature flags. The status includes the last time the feature flag was requested, as well as a state, which is one of the following:  - `new`: You created the flag fewer than seven days ago and it has never been requested. - `active`: LaunchDarkly is receiving requests for this flag, but there are either multiple variations configured, or it is toggled off, or there have been changes to configuration in the past seven days. - `inactive`: You created the feature flag more than seven days ago, and hasn't been requested within the past seven days. - `launched`: LaunchDarkly is receiving requests for this flag, it is toggled on, there is only one variation configured, and there have been no changes to configuration in the past seven days.  To learn more, read [Flag statuses](https://docs.launchdarkly.com/home/code/flag-status). 
    # @param project_key [String] The project key
    # @param environment_key [String] The environment key
    # @param [Hash] opts the optional parameters
    # @return [FeatureFlagStatuses]
    def get_feature_flag_statuses(project_key, environment_key, opts = {})
      data, _status_code, _headers = get_feature_flag_statuses_with_http_info(project_key, environment_key, opts)
      data
    end

    # List feature flag statuses
    # Get a list of statuses for all feature flags. The status includes the last time the feature flag was requested, as well as a state, which is one of the following:  - &#x60;new&#x60;: You created the flag fewer than seven days ago and it has never been requested. - &#x60;active&#x60;: LaunchDarkly is receiving requests for this flag, but there are either multiple variations configured, or it is toggled off, or there have been changes to configuration in the past seven days. - &#x60;inactive&#x60;: You created the feature flag more than seven days ago, and hasn&#39;t been requested within the past seven days. - &#x60;launched&#x60;: LaunchDarkly is receiving requests for this flag, it is toggled on, there is only one variation configured, and there have been no changes to configuration in the past seven days.  To learn more, read [Flag statuses](https://docs.launchdarkly.com/home/code/flag-status). 
    # @param project_key [String] The project key
    # @param environment_key [String] The environment key
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeatureFlagStatuses, Integer, Hash)>] FeatureFlagStatuses data, response status code and response headers
    def get_feature_flag_statuses_with_http_info(project_key, environment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureFlagsApi.get_feature_flag_statuses ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling FeatureFlagsApi.get_feature_flag_statuses"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling FeatureFlagsApi.get_feature_flag_statuses"
      end
      # resource path
      local_var_path = '/api/v2/flag-statuses/{projectKey}/{environmentKey}'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s)).sub('{' + 'environmentKey' + '}', CGI.escape(environment_key.to_s))

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
      return_type = opts[:debug_return_type] || 'FeatureFlagStatuses'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"FeatureFlagsApi.get_feature_flag_statuses",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureFlagsApi#get_feature_flag_statuses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List feature flags
    # Get a list of all features in the given project. By default, each feature includes configurations for each environment. You can filter environments with the `env` query parameter. For example, setting `env=production` restricts the returned configurations to just your production environment. You can also filter feature flags by tag with the tag query parameter.  ### Filtering flags  You can filter on certain fields using the `filter` query parameter. For example, setting `filter=query:dark-mode,tags:beta+test` matches flags with the string `dark-mode` in their key or name, ignoring case, which also have the tags `beta` and `test`.  The `filter` query parameter supports the following arguments:  - `query` is a string that matches against the flags' keys and names. It is not case sensitive. - `archived` is a boolean with values of `true` or `false` that filters the list to archived flags. Setting the value to `true` returns only archived flags. When this is absent, only unarchived flags are returned. - `type` is a string allowing filtering to `temporary` or `permanent` flags. - `status` is a string allowing filtering to `new`, `inactive`, `active`, or `launched` flags in the specified environment. This filter also requires a `filterEnv` field to be set to a valid environment. For example: `filter=status:active,filterEnv:production`. - `tags` is a `+` separated list of tags. It filters the list to members who have all of the tags in the list. For example: `filter=tags:beta+test`. - `hasExperiment` is a boolean with values of `true` or `false` that returns any flags that are used in an experiment. - `hasDataExport` is a boolean with values of `true` or `false` that returns any flags that are exporting data in the specified environment. This includes flags that are exporting data from Experimentation. This filter also requires that you set a `filterEnv` field to a valid environment key. For example: `filter=hasDataExport:true,filterEnv:production` - `evaluated` is an object that contains a key of `after` and a value in Unix time in milliseconds. This returns all flags that have been evaluated since the time you specify in the environment provided. This filter also requires you to set a `filterEnv` field to a valid environment. For example: `filter=evaluated:{\"after\": 1590768455282},filterEnv:production`. - `filterEnv` is a string with the key of a valid environment. You can use the `filterEnv` field for filters that are environment-specific. If there are multiple environment-specific filters, you should only declare this parameter once. For example: `filter=evaluated:{\"after\": 1590768455282},filterEnv:production,status:active`. - `contextKindTargeted` is a string allowing filtering flags by whether they are targeting a given context kind key. - `contextKindsEvaluated` is a `+` separated list of context kind keys. It filters the list to flags which have been evaluated in the past 30 days for all of the context kinds in the list. For example: `filter=contextKindsEvaluated:user+application`.  By default, this returns all flags. You can page through the list with the `limit` parameter and by following the `first`, `prev`, `next`, and `last` links in the returned `_links` field. These links will not be present if the pages they refer to don't exist. For example, the `first` and `prev` links will be missing from the response on the first page.  ### Sorting flags  You can sort flags based on the following fields:  - `creationDate` sorts by the creation date of the flag. - `key` sorts by the key of the flag. - `maintainerId` sorts by the flag maintainer. - `name` sorts by flag name. - `tags` sorts by tags. - `targetingModifiedDate` sorts by the date that the flag's targeting rules were last modified in a given environment. It must be used with `env` parameter and it can not be combined with any other sort. If multiple `env` values are provided, it will perform sort using the first one. For example, `sort=-targetingModifiedDate&env=production&env=staging` returns results sorted by `targetingModifiedDate` for the `production` environment. - `type` sorts by flag type  All fields are sorted in ascending order by default. To sort in descending order, prefix the field with a dash ( - ). For example, `sort=-name` sorts the response by flag name in descending order.  ### Expanding response  LaunchDarkly supports the `expand` query param to include additional fields in the response, with the following fields:  - `codeReferences` includes code references for the feature flag - `evaluation` includes evaluation information within returned environments including which context kinds the flag has been evaluated for in the past 30 days   For example, `expand=evaluation` includes the `evaluation` field in the response. 
    # @param project_key [String] The project key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :env Filter configurations by environment
    # @option opts [String] :tag Filter feature flags by tag
    # @option opts [Integer] :limit The number of feature flags to return. Defaults to -1, which returns all flags
    # @option opts [Integer] :offset Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;.
    # @option opts [Boolean] :archived A boolean to filter the list to archived flags. When this is absent, only unarchived flags will be returned
    # @option opts [Boolean] :summary By default, flags do _not_ include their lists of prerequisites, targets, or rules for each environment. Set &#x60;summary&#x3D;0&#x60; to include these fields for each flag returned.
    # @option opts [String] :filter A comma-separated list of filters. Each filter is of the form field:value. Read the endpoint description for a full list of available filter fields.
    # @option opts [String] :sort A comma-separated list of fields to sort by. Fields prefixed by a dash ( - ) sort in descending order. Read the endpoint description for a full list of available sort fields.
    # @option opts [Boolean] :compare A boolean to filter results by only flags that have differences between environments
    # @option opts [String] :expand A comma-separated list of fields to expand in the response. Supported fields are explained above.
    # @return [FeatureFlags]
    def get_feature_flags(project_key, opts = {})
      data, _status_code, _headers = get_feature_flags_with_http_info(project_key, opts)
      data
    end

    # List feature flags
    # Get a list of all features in the given project. By default, each feature includes configurations for each environment. You can filter environments with the &#x60;env&#x60; query parameter. For example, setting &#x60;env&#x3D;production&#x60; restricts the returned configurations to just your production environment. You can also filter feature flags by tag with the tag query parameter.  ### Filtering flags  You can filter on certain fields using the &#x60;filter&#x60; query parameter. For example, setting &#x60;filter&#x3D;query:dark-mode,tags:beta+test&#x60; matches flags with the string &#x60;dark-mode&#x60; in their key or name, ignoring case, which also have the tags &#x60;beta&#x60; and &#x60;test&#x60;.  The &#x60;filter&#x60; query parameter supports the following arguments:  - &#x60;query&#x60; is a string that matches against the flags&#39; keys and names. It is not case sensitive. - &#x60;archived&#x60; is a boolean with values of &#x60;true&#x60; or &#x60;false&#x60; that filters the list to archived flags. Setting the value to &#x60;true&#x60; returns only archived flags. When this is absent, only unarchived flags are returned. - &#x60;type&#x60; is a string allowing filtering to &#x60;temporary&#x60; or &#x60;permanent&#x60; flags. - &#x60;status&#x60; is a string allowing filtering to &#x60;new&#x60;, &#x60;inactive&#x60;, &#x60;active&#x60;, or &#x60;launched&#x60; flags in the specified environment. This filter also requires a &#x60;filterEnv&#x60; field to be set to a valid environment. For example: &#x60;filter&#x3D;status:active,filterEnv:production&#x60;. - &#x60;tags&#x60; is a &#x60;+&#x60; separated list of tags. It filters the list to members who have all of the tags in the list. For example: &#x60;filter&#x3D;tags:beta+test&#x60;. - &#x60;hasExperiment&#x60; is a boolean with values of &#x60;true&#x60; or &#x60;false&#x60; that returns any flags that are used in an experiment. - &#x60;hasDataExport&#x60; is a boolean with values of &#x60;true&#x60; or &#x60;false&#x60; that returns any flags that are exporting data in the specified environment. This includes flags that are exporting data from Experimentation. This filter also requires that you set a &#x60;filterEnv&#x60; field to a valid environment key. For example: &#x60;filter&#x3D;hasDataExport:true,filterEnv:production&#x60; - &#x60;evaluated&#x60; is an object that contains a key of &#x60;after&#x60; and a value in Unix time in milliseconds. This returns all flags that have been evaluated since the time you specify in the environment provided. This filter also requires you to set a &#x60;filterEnv&#x60; field to a valid environment. For example: &#x60;filter&#x3D;evaluated:{\&quot;after\&quot;: 1590768455282},filterEnv:production&#x60;. - &#x60;filterEnv&#x60; is a string with the key of a valid environment. You can use the &#x60;filterEnv&#x60; field for filters that are environment-specific. If there are multiple environment-specific filters, you should only declare this parameter once. For example: &#x60;filter&#x3D;evaluated:{\&quot;after\&quot;: 1590768455282},filterEnv:production,status:active&#x60;. - &#x60;contextKindTargeted&#x60; is a string allowing filtering flags by whether they are targeting a given context kind key. - &#x60;contextKindsEvaluated&#x60; is a &#x60;+&#x60; separated list of context kind keys. It filters the list to flags which have been evaluated in the past 30 days for all of the context kinds in the list. For example: &#x60;filter&#x3D;contextKindsEvaluated:user+application&#x60;.  By default, this returns all flags. You can page through the list with the &#x60;limit&#x60; parameter and by following the &#x60;first&#x60;, &#x60;prev&#x60;, &#x60;next&#x60;, and &#x60;last&#x60; links in the returned &#x60;_links&#x60; field. These links will not be present if the pages they refer to don&#39;t exist. For example, the &#x60;first&#x60; and &#x60;prev&#x60; links will be missing from the response on the first page.  ### Sorting flags  You can sort flags based on the following fields:  - &#x60;creationDate&#x60; sorts by the creation date of the flag. - &#x60;key&#x60; sorts by the key of the flag. - &#x60;maintainerId&#x60; sorts by the flag maintainer. - &#x60;name&#x60; sorts by flag name. - &#x60;tags&#x60; sorts by tags. - &#x60;targetingModifiedDate&#x60; sorts by the date that the flag&#39;s targeting rules were last modified in a given environment. It must be used with &#x60;env&#x60; parameter and it can not be combined with any other sort. If multiple &#x60;env&#x60; values are provided, it will perform sort using the first one. For example, &#x60;sort&#x3D;-targetingModifiedDate&amp;env&#x3D;production&amp;env&#x3D;staging&#x60; returns results sorted by &#x60;targetingModifiedDate&#x60; for the &#x60;production&#x60; environment. - &#x60;type&#x60; sorts by flag type  All fields are sorted in ascending order by default. To sort in descending order, prefix the field with a dash ( - ). For example, &#x60;sort&#x3D;-name&#x60; sorts the response by flag name in descending order.  ### Expanding response  LaunchDarkly supports the &#x60;expand&#x60; query param to include additional fields in the response, with the following fields:  - &#x60;codeReferences&#x60; includes code references for the feature flag - &#x60;evaluation&#x60; includes evaluation information within returned environments including which context kinds the flag has been evaluated for in the past 30 days   For example, &#x60;expand&#x3D;evaluation&#x60; includes the &#x60;evaluation&#x60; field in the response. 
    # @param project_key [String] The project key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :env Filter configurations by environment
    # @option opts [String] :tag Filter feature flags by tag
    # @option opts [Integer] :limit The number of feature flags to return. Defaults to -1, which returns all flags
    # @option opts [Integer] :offset Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;.
    # @option opts [Boolean] :archived A boolean to filter the list to archived flags. When this is absent, only unarchived flags will be returned
    # @option opts [Boolean] :summary By default, flags do _not_ include their lists of prerequisites, targets, or rules for each environment. Set &#x60;summary&#x3D;0&#x60; to include these fields for each flag returned.
    # @option opts [String] :filter A comma-separated list of filters. Each filter is of the form field:value. Read the endpoint description for a full list of available filter fields.
    # @option opts [String] :sort A comma-separated list of fields to sort by. Fields prefixed by a dash ( - ) sort in descending order. Read the endpoint description for a full list of available sort fields.
    # @option opts [Boolean] :compare A boolean to filter results by only flags that have differences between environments
    # @option opts [String] :expand A comma-separated list of fields to expand in the response. Supported fields are explained above.
    # @return [Array<(FeatureFlags, Integer, Hash)>] FeatureFlags data, response status code and response headers
    def get_feature_flags_with_http_info(project_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureFlagsApi.get_feature_flags ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling FeatureFlagsApi.get_feature_flags"
      end
      # resource path
      local_var_path = '/api/v2/flags/{projectKey}'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'env'] = opts[:'env'] if !opts[:'env'].nil?
      query_params[:'tag'] = opts[:'tag'] if !opts[:'tag'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?
      query_params[:'summary'] = opts[:'summary'] if !opts[:'summary'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'compare'] = opts[:'compare'] if !opts[:'compare'].nil?
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FeatureFlags'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"FeatureFlagsApi.get_feature_flags",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureFlagsApi#get_feature_flags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update expiring context targets on feature flag
    # Schedule a context for removal from individual targeting on a feature flag. The flag must already individually target the context.  You can add, update, or remove a scheduled removal date. You can only schedule a context for removal on a single variation per flag.  This request only supports semantic patches. To make a semantic patch request, you must append `domain-model=launchdarkly.semanticpatch` to your `Content-Type` header. To learn more, read [Updates using semantic patch](/reference#updates-using-semantic-patch).  ### Instructions  #### addExpiringTarget  Adds a date and time that LaunchDarkly will remove the context from the flag's individual targeting.  ##### Parameters  * `value`: The time, in Unix milliseconds, when LaunchDarkly should remove the context from individual targeting for this flag * `variationId`: The version of the flag variation to update. You can retrieve this by making a GET request for the flag * `contextKey`: The context key for the context to remove from individual targeting * `contextKind`: The kind of context represented by the `contextKey`  #### updateExpiringTarget  Updates the date and time that LaunchDarkly will remove the context from the flag's individual targeting  ##### Parameters  * `value`: The time, in Unix milliseconds, when LaunchDarkly should remove the context from individual targeting for this flag * `variationId`: The version of the flag variation to update. You can retrieve this by making a GET request for the flag. * `contextKey`: The context key for the context to remove from individual targeting * `contextKind`: The kind of context represented by the `contextKey`  #### removeExpiringTarget  Removes the scheduled removal of the context from the flag's individual targeting. The context will remain part of the flag's individual targeting until you explicitly remove them, or until you schedule another removal.  ##### Parameters  * `variationId`: The version of the flag variation to update. You can retrieve this by making a GET request for the flag. * `contextKey`: The context key for the context to remove from individual targeting * `contextKind`: The kind of context represented by the `contextKey` 
    # @param project_key [String] The project key
    # @param environment_key [String] The environment key
    # @param feature_flag_key [String] The feature flag key
    # @param patch_flags_request [PatchFlagsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ExpiringTargetPatchResponse]
    def patch_expiring_targets(project_key, environment_key, feature_flag_key, patch_flags_request, opts = {})
      data, _status_code, _headers = patch_expiring_targets_with_http_info(project_key, environment_key, feature_flag_key, patch_flags_request, opts)
      data
    end

    # Update expiring context targets on feature flag
    # Schedule a context for removal from individual targeting on a feature flag. The flag must already individually target the context.  You can add, update, or remove a scheduled removal date. You can only schedule a context for removal on a single variation per flag.  This request only supports semantic patches. To make a semantic patch request, you must append &#x60;domain-model&#x3D;launchdarkly.semanticpatch&#x60; to your &#x60;Content-Type&#x60; header. To learn more, read [Updates using semantic patch](/reference#updates-using-semantic-patch).  ### Instructions  #### addExpiringTarget  Adds a date and time that LaunchDarkly will remove the context from the flag&#39;s individual targeting.  ##### Parameters  * &#x60;value&#x60;: The time, in Unix milliseconds, when LaunchDarkly should remove the context from individual targeting for this flag * &#x60;variationId&#x60;: The version of the flag variation to update. You can retrieve this by making a GET request for the flag * &#x60;contextKey&#x60;: The context key for the context to remove from individual targeting * &#x60;contextKind&#x60;: The kind of context represented by the &#x60;contextKey&#x60;  #### updateExpiringTarget  Updates the date and time that LaunchDarkly will remove the context from the flag&#39;s individual targeting  ##### Parameters  * &#x60;value&#x60;: The time, in Unix milliseconds, when LaunchDarkly should remove the context from individual targeting for this flag * &#x60;variationId&#x60;: The version of the flag variation to update. You can retrieve this by making a GET request for the flag. * &#x60;contextKey&#x60;: The context key for the context to remove from individual targeting * &#x60;contextKind&#x60;: The kind of context represented by the &#x60;contextKey&#x60;  #### removeExpiringTarget  Removes the scheduled removal of the context from the flag&#39;s individual targeting. The context will remain part of the flag&#39;s individual targeting until you explicitly remove them, or until you schedule another removal.  ##### Parameters  * &#x60;variationId&#x60;: The version of the flag variation to update. You can retrieve this by making a GET request for the flag. * &#x60;contextKey&#x60;: The context key for the context to remove from individual targeting * &#x60;contextKind&#x60;: The kind of context represented by the &#x60;contextKey&#x60; 
    # @param project_key [String] The project key
    # @param environment_key [String] The environment key
    # @param feature_flag_key [String] The feature flag key
    # @param patch_flags_request [PatchFlagsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpiringTargetPatchResponse, Integer, Hash)>] ExpiringTargetPatchResponse data, response status code and response headers
    def patch_expiring_targets_with_http_info(project_key, environment_key, feature_flag_key, patch_flags_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureFlagsApi.patch_expiring_targets ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling FeatureFlagsApi.patch_expiring_targets"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling FeatureFlagsApi.patch_expiring_targets"
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling FeatureFlagsApi.patch_expiring_targets"
      end
      # verify the required parameter 'patch_flags_request' is set
      if @api_client.config.client_side_validation && patch_flags_request.nil?
        fail ArgumentError, "Missing the required parameter 'patch_flags_request' when calling FeatureFlagsApi.patch_expiring_targets"
      end
      # resource path
      local_var_path = '/api/v2/flags/{projectKey}/{featureFlagKey}/expiring-targets/{environmentKey}'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s)).sub('{' + 'environmentKey' + '}', CGI.escape(environment_key.to_s)).sub('{' + 'featureFlagKey' + '}', CGI.escape(feature_flag_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_flags_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ExpiringTargetPatchResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"FeatureFlagsApi.patch_expiring_targets",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureFlagsApi#patch_expiring_targets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update expiring user targets on feature flag
    # > ### Contexts are now available > > After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should use [Update expiring context targets on feature flag](/tag/Feature-flags#operation/patchExpiringTargets) instead of this endpoint. To learn more, read [Contexts](https://docs.launchdarkly.com/home/contexts).  Schedule a target for removal from individual targeting on a feature flag. The flag must already serve a variation to specific targets based on their key.  You can add, update, or remove a scheduled removal date. You can only schedule a target for removal on a single variation per flag.  This request only supports semantic patches. To make a semantic patch request, you must append `domain-model=launchdarkly.semanticpatch` to your `Content-Type` header. To learn more, read [Updates using semantic patch](/reference#updates-using-semantic-patch).  ### Instructions  #### addExpireUserTargetDate  Adds a date and time that LaunchDarkly will remove the user from the flag's individual targeting.  ##### Parameters  * `value`: The time, in Unix milliseconds, when LaunchDarkly should remove the user from individual targeting for this flag * `variationId`: The version of the flag variation to update. You can retrieve this by making a GET request for the flag. * `userKey`: The user key for the user to remove from individual targeting  #### updateExpireUserTargetDate  Updates the date and time that LaunchDarkly will remove the user from the flag's individual targeting.  ##### Parameters  * `value`: The time, in Unix milliseconds, when LaunchDarkly should remove the user from individual targeting for this flag * `variationId`: The version of the flag variation to update. You can retrieve this by making a GET request for the flag. * `userKey`: The user key for the user to remove from individual targeting  #### removeExpireUserTargetDate  Removes the scheduled removal of the user from the flag's individual targeting. The user will remain part of the flag's individual targeting until you explicitly remove them, or until you schedule another removal.  ##### Parameters  * `variationId`: The version of the flag variation to update. You can retrieve this by making a GET request for the flag. * `userKey`: The user key for the user to remove from individual targeting 
    # @param project_key [String] The project key
    # @param environment_key [String] The environment key
    # @param feature_flag_key [String] The feature flag key
    # @param patch_flags_request [PatchFlagsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ExpiringUserTargetPatchResponse]
    def patch_expiring_user_targets(project_key, environment_key, feature_flag_key, patch_flags_request, opts = {})
      data, _status_code, _headers = patch_expiring_user_targets_with_http_info(project_key, environment_key, feature_flag_key, patch_flags_request, opts)
      data
    end

    # Update expiring user targets on feature flag
    # &gt; ### Contexts are now available &gt; &gt; After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should use [Update expiring context targets on feature flag](/tag/Feature-flags#operation/patchExpiringTargets) instead of this endpoint. To learn more, read [Contexts](https://docs.launchdarkly.com/home/contexts).  Schedule a target for removal from individual targeting on a feature flag. The flag must already serve a variation to specific targets based on their key.  You can add, update, or remove a scheduled removal date. You can only schedule a target for removal on a single variation per flag.  This request only supports semantic patches. To make a semantic patch request, you must append &#x60;domain-model&#x3D;launchdarkly.semanticpatch&#x60; to your &#x60;Content-Type&#x60; header. To learn more, read [Updates using semantic patch](/reference#updates-using-semantic-patch).  ### Instructions  #### addExpireUserTargetDate  Adds a date and time that LaunchDarkly will remove the user from the flag&#39;s individual targeting.  ##### Parameters  * &#x60;value&#x60;: The time, in Unix milliseconds, when LaunchDarkly should remove the user from individual targeting for this flag * &#x60;variationId&#x60;: The version of the flag variation to update. You can retrieve this by making a GET request for the flag. * &#x60;userKey&#x60;: The user key for the user to remove from individual targeting  #### updateExpireUserTargetDate  Updates the date and time that LaunchDarkly will remove the user from the flag&#39;s individual targeting.  ##### Parameters  * &#x60;value&#x60;: The time, in Unix milliseconds, when LaunchDarkly should remove the user from individual targeting for this flag * &#x60;variationId&#x60;: The version of the flag variation to update. You can retrieve this by making a GET request for the flag. * &#x60;userKey&#x60;: The user key for the user to remove from individual targeting  #### removeExpireUserTargetDate  Removes the scheduled removal of the user from the flag&#39;s individual targeting. The user will remain part of the flag&#39;s individual targeting until you explicitly remove them, or until you schedule another removal.  ##### Parameters  * &#x60;variationId&#x60;: The version of the flag variation to update. You can retrieve this by making a GET request for the flag. * &#x60;userKey&#x60;: The user key for the user to remove from individual targeting 
    # @param project_key [String] The project key
    # @param environment_key [String] The environment key
    # @param feature_flag_key [String] The feature flag key
    # @param patch_flags_request [PatchFlagsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpiringUserTargetPatchResponse, Integer, Hash)>] ExpiringUserTargetPatchResponse data, response status code and response headers
    def patch_expiring_user_targets_with_http_info(project_key, environment_key, feature_flag_key, patch_flags_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureFlagsApi.patch_expiring_user_targets ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling FeatureFlagsApi.patch_expiring_user_targets"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling FeatureFlagsApi.patch_expiring_user_targets"
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling FeatureFlagsApi.patch_expiring_user_targets"
      end
      # verify the required parameter 'patch_flags_request' is set
      if @api_client.config.client_side_validation && patch_flags_request.nil?
        fail ArgumentError, "Missing the required parameter 'patch_flags_request' when calling FeatureFlagsApi.patch_expiring_user_targets"
      end
      # resource path
      local_var_path = '/api/v2/flags/{projectKey}/{featureFlagKey}/expiring-user-targets/{environmentKey}'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s)).sub('{' + 'environmentKey' + '}', CGI.escape(environment_key.to_s)).sub('{' + 'featureFlagKey' + '}', CGI.escape(feature_flag_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_flags_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ExpiringUserTargetPatchResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"FeatureFlagsApi.patch_expiring_user_targets",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureFlagsApi#patch_expiring_user_targets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update feature flag
    # Perform a partial update to a feature flag. The request body must be a valid semantic patch or JSON patch.  ### Using semantic patches on a feature flag  To make a semantic patch request, you must append `domain-model=launchdarkly.semanticpatch` to your `Content-Type` header. To learn more, read [Updates using semantic patch](/reference#updates-using-semantic-patch).  The body of a semantic patch request for updating feature flags takes the following properties:  * `comment` (string): (Optional) A description of the update. * `environmentKey` (string): (Required for some instructions only) The key of the LaunchDarkly environment. * `instructions` (array): (Required) A list of actions the update should perform. Each action in the list must be an object with a `kind` property that indicates the instruction. If the action requires parameters, you must include those parameters as additional fields in the object. The body of a single semantic patch can contain many different instructions.  ### Instructions  Semantic patch requests support the following `kind` instructions for updating feature flags.  <details> <summary>Click to expand instructions for turning flags on and off</summary>  These instructions require the `environmentKey` parameter.  #### turnFlagOff  Sets the flag's targeting state to **Off**.  Use this request body:  ```json {   \"environmentKey\": \"environment-key-123abc\",   \"instructions\": [ { \"kind\": \"turnFlagOff\" } ] } ```  #### turnFlagOn  Sets the flag's targeting state to **On**.  Use this request body:  ```json {   \"environmentKey\": \"environment-key-123abc\",   \"instructions\": [ { \"kind\": \"turnFlagOn\" } ] } ```  </details><br />  <details> <summary>Click to expand instructions for working with targeting and variations</summary>  These instructions require the `environmentKey` parameter.  Several of the instructions for working with targeting and variations require flag rule IDs, variation IDs, or clause IDs as parameters. Each of these are returned as part of the [Get feature flag](/tag/Feature-flags#operation/getFeatureFlag) response. The flag rule ID is the `_id` field of each element in the `rules` array within each environment listed in the `environments` object. The variation ID is the `_id` field in each element of the `variations` array. The clause ID is the `_id` field of each element of the `clauses` array within the `rules` array within each environment listed in the `environments` object.  #### addClauses  Adds the given clauses to the rule indicated by `ruleId`.  ##### Parameters  - `ruleId`: ID of a rule in the flag. - `clauses`: Array of clause objects, with `contextKind` (string), `attribute` (string), `op` (string), `negate` (boolean), and `values` (array of strings, numbers, or dates) properties. The `contextKind`, `attribute`, and `values` are case sensitive. The `op` must be lower-case.  Use this request body:  ```json {  \"environmentKey\": \"environment-key-123abc\",  \"instructions\": [{   \"kind\": \"addClauses\",   \"ruleId\": \"a902ef4a-2faf-4eaf-88e1-ecc356708a29\",   \"clauses\": [{    \"contextKind\": \"user\",    \"attribute\": \"country\",    \"op\": \"in\",    \"negate\": false,    \"values\": [\"USA\", \"Canada\"]   }]  }] } ```  #### addPrerequisite  Adds the flag indicated by `key` with variation `variationId` as a prerequisite to the flag in the path parameter.  ##### Parameters  - `key`: Flag key of the prerequisite flag. - `variationId`: ID of a variation of the prerequisite flag.  Use this request body:  ```json {  \"environmentKey\": \"environment-key-123abc\",  \"instructions\": [{   \"kind\": \"addPrerequisite\",   \"key\": \"example-prereq-flag-key\",   \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\"  }] } ```  #### addRule  Adds a new targeting rule to the flag. The rule may contain `clauses` and serve the variation that `variationId` indicates, or serve a percentage rollout that `rolloutWeights`, `rolloutBucketBy`, and `rolloutContextKind` indicate.  If you set `beforeRuleId`, this adds the new rule before the indicated rule. Otherwise, adds the new rule to the end of the list.  ##### Parameters  - `clauses`: Array of clause objects, with `contextKind` (string), `attribute` (string), `op` (string), `negate` (boolean), and `values` (array of strings, numbers, or dates) properties. The `contextKind`, `attribute`, and `values` are case sensitive. The `op` must be lower-case. - `beforeRuleId`: (Optional) ID of a flag rule. - `variationId`: ID of a variation of the flag. - `rolloutWeights`: (Optional) Map of `variationId` to weight, in thousandths of a percent (0-100000). - `rolloutBucketBy`: (Optional) Context attribute available in the specified `rolloutContextKind`. - `rolloutContextKind`: (Optional) Context kind, defaults to `user`  Use this request body:  ```json {   \"environmentKey\": \"environment-key-123abc\",   \"instructions\": [{     \"kind\": \"addRule\",     \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\",     \"clauses\": [{       \"contextKind\": \"organization\",       \"attribute\": \"located_in\",       \"op\": \"in\",       \"negate\": false,       \"values\": [\"Sweden\", \"Norway\"]     }]   }] } ```  #### addTargets  Adds context keys to the individual context targets for the context kind that `contextKind` specifies and the variation that `variationId` specifies. Returns an error if this causes the flag to target the same context key in multiple variations.  ##### Parameters  - `values`: List of context keys. - `contextKind`: (Optional) Context kind to target, defaults to `user` - `variationId`: ID of a variation on the flag.  Use this request body:  ```json {  \"environmentKey\": \"environment-key-123abc\",  \"instructions\": [{   \"kind\": \"addTargets\",   \"values\": [\"context-key-123abc\", \"context-key-456def\"],   \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\"  }] } ```  #### addUserTargets  Adds user keys to the individual user targets for the variation that `variationId` specifies. Returns an error if this causes the flag to target the same user key in multiple variations. If you are working with contexts, use `addTargets` instead of this instruction.  ##### Parameters  - `values`: List of user keys. - `variationId`: ID of a variation on the flag.  Use this request body:  ```json {  \"environmentKey\": \"environment-key-123abc\",  \"instructions\": [{   \"kind\": \"addUserTargets\",   \"values\": [\"user-key-123abc\", \"user-key-456def\"],   \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\"  }] } ```  #### addValuesToClause  Adds `values` to the values of the clause that `ruleId` and `clauseId` indicate. Does not update the context kind, attribute, or operator.  ##### Parameters  - `ruleId`: ID of a rule in the flag. - `clauseId`: ID of a clause in that rule. - `values`: Array of strings, case sensitive.  Use this request body:  ```json {  \"environmentKey\": \"environment-key-123abc\",  \"instructions\": [{   \"kind\": \"addValuesToClause\",   \"ruleId\": \"a902ef4a-2faf-4eaf-88e1-ecc356708a29\",   \"clauseId\": \"10a58772-3121-400f-846b-b8a04e8944ed\",   \"values\": [\"beta_testers\"]  }] } ```  #### addVariation  Adds a variation to the flag.   ##### Parameters  - `value`: The variation value. - `name`: (Optional) The variation name. - `description`: (Optional) A description for the variation.  Use this request body:   ```json {  \"instructions\": [ { \"kind\": \"addVariation\", \"value\": 20, \"name\": \"New variation\" } ] } ```  #### clearTargets  Removes all individual targets from the variation that `variationId` specifies. This includes both user and non-user targets.  ##### Parameters  - `variationId`: ID of a variation on the flag.  Use this request body:  ```json {   \"environmentKey\": \"environment-key-123abc\",   \"instructions\": [ { \"kind\": \"clearTargets\", \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\" } ] } ```  #### clearUserTargets  Removes all individual user targets from the variation that `variationId` specifies. If you are working with contexts, use `clearTargets` instead of this instruction.  ##### Parameters  - `variationId`: ID of a variation on the flag.  Use this request body:  ```json {   \"environmentKey\": \"environment-key-123abc\",   \"instructions\": [ { \"kind\": \"clearUserTargets\", \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\" } ] } ```  #### removeClauses  Removes the clauses specified by `clauseIds` from the rule indicated by `ruleId`.  ##### Parameters  - `ruleId`: ID of a rule in the flag. - `clauseIds`: Array of IDs of clauses in the rule.  Use this request body:  ```json {  \"environmentKey\": \"environment-key-123abc\",  \"instructions\": [{   \"kind\": \"removeClauses\",   \"ruleId\": \"a902ef4a-2faf-4eaf-88e1-ecc356708a29\",   \"clauseIds\": [\"10a58772-3121-400f-846b-b8a04e8944ed\", \"36a461dc-235e-4b08-97b9-73ce9365873e\"]  }] } ```  #### removePrerequisite  Removes the prerequisite flag indicated by `key`. Does nothing if this prerequisite does not exist.  ##### Parameters  - `key`: Flag key of an existing prerequisite flag.  Use this request body:  ```json {   \"environmentKey\": \"environment-key-123abc\",   \"instructions\": [ { \"kind\": \"removePrerequisite\", \"key\": \"prereq-flag-key-123abc\" } ] } ```  #### removeRule  Removes the targeting rule specified by `ruleId`. Does nothing if the rule does not exist.  ##### Parameters  - `ruleId`: ID of a rule in the flag.  Use this request body:  ```json {   \"environmentKey\": \"environment-key-123abc\",   \"instructions\": [ { \"kind\": \"removeRule\", \"ruleId\": \"a902ef4a-2faf-4eaf-88e1-ecc356708a29\" } ] } ```  #### removeTargets  Removes context keys from the individual context targets for the context kind that `contextKind` specifies and the variation that `variationId` specifies. Does nothing if the flag does not target the context keys.  ##### Parameters  - `values`: List of context keys. - `contextKind`: (Optional) Context kind to target, defaults to `user` - `variationId`: ID of a flag variation.  Use this request body:  ```json {  \"environmentKey\": \"environment-key-123abc\",  \"instructions\": [{   \"kind\": \"removeTargets\",   \"values\": [\"context-key-123abc\", \"context-key-456def\"],   \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\"  }] } ```  #### removeUserTargets  Removes user keys from the individual user targets for the variation that `variationId` specifies. Does nothing if the flag does not target the user keys. If you are working with contexts, use `removeTargets` instead of this instruction.  ##### Parameters  - `values`: List of user keys. - `variationId`: ID of a flag variation.  Use this request body:  ```json {  \"environmentKey\": \"environment-key-123abc\",  \"instructions\": [{   \"kind\": \"removeUserTargets\",   \"values\": [\"user-key-123abc\", \"user-key-456def\"],   \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\"  }] } ```  #### removeValuesFromClause  Removes `values` from the values of the clause indicated by `ruleId` and `clauseId`. Does not update the context kind, attribute, or operator.  ##### Parameters  - `ruleId`: ID of a rule in the flag. - `clauseId`: ID of a clause in that rule. - `values`: Array of strings, case sensitive.  Use this request body:  ```json {  \"environmentKey\": \"environment-key-123abc\",  \"instructions\": [{   \"kind\": \"removeValuesFromClause\",   \"ruleId\": \"a902ef4a-2faf-4eaf-88e1-ecc356708a29\",   \"clauseId\": \"10a58772-3121-400f-846b-b8a04e8944ed\",   \"values\": [\"beta_testers\"]  }] } ```  #### removeVariation  Removes a variation from the flag.   ##### Parameters  - `variationId`: ID of a variation of the flag to remove.  Use this request body:   ```json {  \"instructions\": [ { \"kind\": \"removeVariation\", \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\" } ] } ```  #### reorderRules  Rearranges the rules to match the order given in `ruleIds`. Returns an error if `ruleIds` does not match the current set of rules on the flag.  ##### Parameters  - `ruleIds`: Array of IDs of all rules in the flag.  Use this request body:  ```json {  \"environmentKey\": \"environment-key-123abc\",  \"instructions\": [{   \"kind\": \"reorderRules\",   \"ruleIds\": [\"a902ef4a-2faf-4eaf-88e1-ecc356708a29\", \"63c238d1-835d-435e-8f21-c8d5e40b2a3d\"]  }] } ```  #### replacePrerequisites  Removes all existing prerequisites and replaces them with the list you provide.  ##### Parameters  - `prerequisites`: A list of prerequisites. Each item in the list must include a flag `key` and `variationId`.  Use this request body:  ```json {   \"environmentKey\": \"environment-key-123abc\",   \"instructions\": [     {       \"kind\": \"replacePrerequisites\",       \"prerequisites\": [         {           \"key\": \"prereq-flag-key-123abc\",           \"variationId\": \"10a58772-3121-400f-846b-b8a04e8944ed\"         },         {           \"key\": \"another-prereq-flag-key-456def\",           \"variationId\": \"e5830889-1ec5-4b0c-9cc9-c48790090c43\"         }       ]     }   ] } ```  #### replaceRules  Removes all targeting rules for the flag and replaces them with the list you provide.  ##### Parameters  - `rules`: A list of rules.  Use this request body:  ```json {   \"environmentKey\": \"environment-key-123abc\",   \"instructions\": [     {       \"kind\": \"replaceRules\",       \"rules\": [         {           \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\",           \"description\": \"My new rule\",           \"clauses\": [             {               \"contextKind\": \"user\",               \"attribute\": \"segmentMatch\",               \"op\": \"segmentMatch\",               \"values\": [\"test\"]             }           ],           \"trackEvents\": true         }       ]     }   ] } ```  #### replaceTargets  Removes all existing targeting and replaces it with the list of targets you provide.  ##### Parameters  - `targets`: A list of context targeting. Each item in the list includes an optional `contextKind` that defaults to `user`, a required `variationId`, and a required list of `values`.  Use this request body:  ```json {   \"environmentKey\": \"environment-key-123abc\",   \"instructions\": [     {       \"kind\": \"replaceTargets\",       \"targets\": [         {           \"contextKind\": \"user\",           \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\",           \"values\": [\"user-key-123abc\"]         },         {           \"contextKind\": \"device\",           \"variationId\": \"e5830889-1ec5-4b0c-9cc9-c48790090c43\",           \"values\": [\"device-key-456def\"]         }       ]     }       ] } ```  #### replaceUserTargets  Removes all existing user targeting and replaces it with the list of targets you provide. In the list of targets, you must include a target for each of the flag's variations. If you are working with contexts, use `replaceTargets` instead of this instruction.  ##### Parameters  - `targets`: A list of user targeting. Each item in the list must include a `variationId` and a list of `values`.  Use this request body:  ```json {   \"environmentKey\": \"environment-key-123abc\",   \"instructions\": [     {       \"kind\": \"replaceUserTargets\",       \"targets\": [         {           \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\",           \"values\": [\"user-key-123abc\", \"user-key-456def\"]         },         {           \"variationId\": \"e5830889-1ec5-4b0c-9cc9-c48790090c43\",           \"values\": [\"user-key-789ghi\"]         }       ]     }   ] } ```  #### updateClause  Replaces the clause indicated by `ruleId` and `clauseId` with `clause`.  ##### Parameters  - `ruleId`: ID of a rule in the flag. - `clauseId`: ID of a clause in that rule. - `clause`: New `clause` object, with `contextKind` (string), `attribute` (string), `op` (string), `negate` (boolean), and `values` (array of strings, numbers, or dates) properties. The `contextKind`, `attribute`, and `values` are case sensitive. The `op` must be lower-case.  Use this request body:  ```json {   \"environmentKey\": \"environment-key-123abc\",   \"instructions\": [{     \"kind\": \"updateClause\",     \"ruleId\": \"a902ef4a-2faf-4eaf-88e1-ecc356708a29\",     \"clauseId\": \"10c7462a-2062-45ba-a8bb-dfb3de0f8af5\",     \"clause\": {       \"contextKind\": \"user\",       \"attribute\": \"country\",       \"op\": \"in\",       \"negate\": false,       \"values\": [\"Mexico\", \"Canada\"]     }   }] } ```  #### updateDefaultVariation  Updates the default on or off variation of the flag.   ##### Parameters  - `onVariationValue`: (Optional) The value of the variation of the new on variation.  - `offVariationValue`: (Optional) The value of the variation of the new off variation  Use this request body:   ```json {  \"instructions\": [ { \"kind\": \"updateDefaultVariation\", \"OnVariationValue\": true, \"OffVariationValue\": false } ] } ```  #### updateFallthroughVariationOrRollout  Updates the default or \"fallthrough\" rule for the flag, which the flag serves when a context matches none of the targeting rules. The rule can serve either the variation that `variationId` indicates, or a percent rollout that `rolloutWeights` and `rolloutBucketBy` indicate.  ##### Parameters  - `variationId`: ID of a variation of the flag. or - `rolloutWeights`: Map of `variationId` to weight, in thousandths of a percent (0-100000). - `rolloutBucketBy`: (Optional) Context attribute available in the specified `rolloutContextKind`. - `rolloutContextKind`: (Optional) Context kind, defaults to `user`  Use this request body:  ```json {  \"environmentKey\": \"environment-key-123abc\",  \"instructions\": [{   \"kind\": \"updateFallthroughVariationOrRollout\",   \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\"  }] } ```  #### updateOffVariation  Updates the default off variation to `variationId`. The flag serves the default off variation when the flag's targeting is **Off**.  ##### Parameters  - `variationId`: ID of a variation of the flag.  Use this request body:  ```json {   \"environmentKey\": \"environment-key-123abc\",   \"instructions\": [ { \"kind\": \"updateOffVariation\", \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\" } ] } ```  #### updatePrerequisite  Changes the prerequisite flag that `key` indicates to use the variation that `variationId` indicates. Returns an error if this prerequisite does not exist.  ##### Parameters  - `key`: Flag key of an existing prerequisite flag. - `variationId`: ID of a variation of the prerequisite flag.  Use this request body:  ```json {  \"environmentKey\": \"environment-key-123abc\",  \"instructions\": [{   \"kind\": \"updatePrerequisite\",   \"key\": \"example-prereq-flag-key\",   \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\"  }] } ```  #### updateRuleDescription  Updates the description of the feature flag rule.  ##### Parameters  - `description`: The new human-readable description for this rule. - `ruleId`: The ID of the rule. You can retrieve this by making a GET request for the flag.  Use this request body:  ```json {  \"environmentKey\": \"environment-key-123abc\",  \"instructions\": [{   \"kind\": \"updateRuleDescription\",   \"description\": \"New rule description\",   \"ruleId\": \"a902ef4a-2faf-4eaf-88e1-ecc356708a29\"  }] } ```  #### updateRuleTrackEvents  Updates whether or not LaunchDarkly tracks events for the feature flag associated with this rule.  ##### Parameters  - `ruleId`: The ID of the rule. You can retrieve this by making a GET request for the flag. - `trackEvents`: Whether or not events are tracked.  Use this request body:  ```json {  \"environmentKey\": \"environment-key-123abc\",  \"instructions\": [{   \"kind\": \"updateRuleTrackEvents\",   \"ruleId\": \"a902ef4a-2faf-4eaf-88e1-ecc356708a29\",   \"trackEvents\": true  }] } ```  #### updateRuleVariationOrRollout  Updates what `ruleId` serves when its clauses evaluate to true. The rule can serve either the variation that `variationId` indicates, or a percent rollout that `rolloutWeights` and `rolloutBucketBy` indicate.  ##### Parameters  - `ruleId`: ID of a rule in the flag. - `variationId`: ID of a variation of the flag.    or  - `rolloutWeights`: Map of `variationId` to weight, in thousandths of a percent (0-100000). - `rolloutBucketBy`: (Optional) Context attribute available in the specified `rolloutContextKind`. - `rolloutContextKind`: (Optional) Context kind, defaults to `user`  Use this request body:  ```json {  \"environmentKey\": \"environment-key-123abc\",  \"instructions\": [{   \"kind\": \"updateRuleVariationOrRollout\",   \"ruleId\": \"a902ef4a-2faf-4eaf-88e1-ecc356708a29\",   \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\"  }] } ```  #### updateTrackEvents  Updates whether or not LaunchDarkly tracks events for the feature flag, for all rules.  ##### Parameters  - `trackEvents`: Whether or not events are tracked.  Use this request body:  ```json {   \"environmentKey\": \"environment-key-123abc\",   \"instructions\": [ { \"kind\": \"updateTrackEvents\", \"trackEvents\": true } ] } ```  #### updateTrackEventsFallthrough  Updates whether or not LaunchDarkly tracks events for the feature flag, for the default rule.  ##### Parameters  - `trackEvents`: Whether or not events are tracked.  Use this request body:  ```json {   \"environmentKey\": \"environment-key-123abc\",   \"instructions\": [ { \"kind\": \"updateTrackEventsFallthrough\", \"trackEvents\": true } ] } ```  #### updateVariation  Updates a variation of the flag.   ##### Parameters  - `variationId`: The ID of the variation to update. - `name`: (Optional) The updated variation name. - `value`: (Optional) The updated variation value. - `description`: (Optional) The updated variation description.  Use this request body:   ```json {  \"instructions\": [ { \"kind\": \"updateVariation\", \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\", \"value\": 20 } ] } ```  </details><br />  <details> <summary>Click to expand instructions for updating flag settings</summary>  These instructions do not require the `environmentKey` parameter. They make changes that apply to the flag across all environments.  #### addCustomProperties  Adds a new custom property to the feature flag. Custom properties are used to associate feature flags with LaunchDarkly integrations. For example, if you create an integration with an issue tracking service, you may want to associate a flag with a list of issues related to a feature's development.  ##### Parameters   - `key`: The custom property key.  - `name`: The custom property name.  - `values`: A list of the associated values for the custom property.  Use this request body:  ```json {  \"instructions\": [{   \"kind\": \"addCustomProperties\",   \"key\": \"example-custom-property\",   \"name\": \"Example custom property\",   \"values\": [\"value1\", \"value2\"]  }] } ```  #### addTags  Adds tags to the feature flag.  ##### Parameters  - `values`: A list of tags to add.  Use this request body:  ```json {   \"instructions\": [ { \"kind\": \"addTags\", \"values\": [\"tag1\", \"tag2\"] } ] } ```  #### makeFlagPermanent  Marks the feature flag as permanent. LaunchDarkly does not prompt you to remove permanent flags, even if one variation is rolled out to all your customers.  Use this request body:  ```json {   \"instructions\": [ { \"kind\": \"makeFlagPermanent\" } ] } ```  #### makeFlagTemporary  Marks the feature flag as temporary.  Use this request body:  ```json {   \"instructions\": [ { \"kind\": \"makeFlagTemporary\" } ] } ```  #### removeCustomProperties  Removes the associated values from a custom property. If all the associated values are removed, this instruction also removes the custom property.  ##### Parameters   - `key`: The custom property key.  - `values`: A list of the associated values to remove from the custom property.  ```json {  \"instructions\": [{   \"kind\": \"replaceCustomProperties\",   \"key\": \"example-custom-property\",   \"values\": [\"value1\", \"value2\"]  }] } ```  #### removeMaintainer  Removes the flag's maintainer. To set a new maintainer, use the flag's **Settings** tab in the LaunchDarkly user interface.  Use this request body:  ```json {   \"instructions\": [ { \"kind\": \"removeMaintainer\" } ] } ```  #### removeTags  Removes tags from the feature flag.  ##### Parameters  - `values`: A list of tags to remove.  Use this request body:  ```json {   \"instructions\": [ { \"kind\": \"removeTags\", \"values\": [\"tag1\", \"tag2\"] } ] } ```  #### replaceCustomProperties  Replaces the existing associated values for a custom property with the new values.  ##### Parameters   - `key`: The custom property key.  - `name`: The custom property name.  - `values`: A list of the new associated values for the custom property.  Use this request body:  ```json {  \"instructions\": [{    \"kind\": \"replaceCustomProperties\",    \"key\": \"example-custom-property\",    \"name\": \"Example custom property\",    \"values\": [\"value1\", \"value2\"]  }] } ```  #### turnOffClientSideAvailability  Turns off client-side SDK availability for the flag. This is equivalent to unchecking the **SDKs using Mobile Key** and/or **SDKs using client-side ID** boxes for the flag. If you're using a client-side or mobile SDK, you must expose your feature flags in order for the client-side or mobile SDKs to evaluate them.  ##### Parameters  - `value`: Use \"usingMobileKey\" to turn off availability for mobile SDKs. Use \"usingEnvironmentId\" to turn on availability for client-side SDKs.  Use this request body:  ```json {   \"instructions\": [ { \"kind\": \"turnOffClientSideAvailability\", \"value\": \"usingMobileKey\" } ] } ```  #### turnOnClientSideAvailability  Turns on client-side SDK availability for the flag. This is equivalent to unchecking the **SDKs using Mobile Key** and/or **SDKs using client-side ID** boxes for the flag. If you're using a client-side or mobile SDK, you must expose your feature flags in order for the client-side or mobile SDKs to evaluate them.  ##### Parameters  - `value`: Use \"usingMobileKey\" to turn on availability for mobile SDKs. Use \"usingEnvironmentId\" to turn on availability for client-side SDKs.  Use this request body:  ```json {   \"instructions\": [ { \"kind\": \"turnOnClientSideAvailability\", \"value\": \"usingMobileKey\" } ] } ```  #### updateDescription  Updates the feature flag description.  ##### Parameters  - `value`: The new description.  Use this request body:  ```json {   \"instructions\": [ { \"kind\": \"updateDescription\", \"value\": \"Updated flag description\" } ] } ``` #### updateMaintainerMember  Updates the maintainer of the flag to an existing member and removes the existing maintainer.  ##### Parameters  - `value`: The ID of the member.  Use this request body:  ```json {   \"instructions\": [ { \"kind\": \"updateMaintainerMember\", \"value\": \"61e9b714fd47591727db558a\" } ] } ```  #### updateMaintainerTeam  Updates the maintainer of the flag to an existing team and removes the existing maintainer.  ##### Parameters  - `value`: The key of the team.  Use this request body:  ```json {   \"instructions\": [ { \"kind\": \"updateMaintainerTeam\", \"value\": \"example-team-key\" } ] } ```  #### updateName  Updates the feature flag name.  ##### Parameters  - `value`: The new name.  Use this request body:  ```json {   \"instructions\": [ { \"kind\": \"updateName\", \"value\": \"Updated flag name\" } ] } ```  </details><br />  <details> <summary>Click to expand instructions for updating the flag lifecycle</summary>  These instructions do not require the `environmentKey` parameter. They make changes that apply to the flag across all environments.  #### archiveFlag  Archives the feature flag. This retires it from LaunchDarkly without deleting it. You cannot archive a flag that is a prerequisite of other flags.  ```json {   \"instructions\": [ { \"kind\": \"archiveFlag\" } ] } ```  #### deleteFlag  Deletes the feature flag and its rules. You cannot restore a deleted flag. If this flag is requested again, the flag value defined in code will be returned for all contexts.  Use this request body:  ```json {   \"instructions\": [ { \"kind\": \"deleteFlag\" } ] } ```  #### restoreFlag  Restores the feature flag if it was previously archived.  Use this request body:  ```json {   \"instructions\": [ { \"kind\": \"restoreFlag\" } ] } ```  </details>  ### Using JSON Patches on a feature flag If you do not include the header described above, you can use [JSON patch](/reference#updates-using-json-patch).  When using the update feature flag endpoint to add individual targets to a specific variation, there are two different patch documents, depending on whether there are already individual targets for the variation.  If a flag variation already has individual targets, the path for the JSON Patch operation is:  ```json {   \"op\": \"add\",   \"path\": \"/environments/devint/targets/0/values/-\",   \"value\": \"TestClient10\" } ```  If a flag variation does not already have individual targets, the path for the JSON Patch operation is:  ```json [   {     \"op\": \"add\",     \"path\": \"/environments/devint/targets/-\",     \"value\": { \"variation\": 0, \"values\": [\"TestClient10\"] }   } ] ```   ### Required approvals If a request attempts to alter a flag configuration in an environment where approvals are required for the flag, the request will fail with a 405. Changes to the flag configuration in that environment will require creating an [approval request](/tag/Approvals) or a [workflow](/tag/Workflows-(beta)).  ### Conflicts If a flag configuration change made through this endpoint would cause a pending scheduled change or approval request to fail, this endpoint will return a 400. You can ignore this check by adding an `ignoreConflicts` query parameter set to `true`. 
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key. The key identifies the flag in your code.
    # @param patch_with_comment [PatchWithComment] 
    # @param [Hash] opts the optional parameters
    # @return [FeatureFlag]
    def patch_feature_flag(project_key, feature_flag_key, patch_with_comment, opts = {})
      data, _status_code, _headers = patch_feature_flag_with_http_info(project_key, feature_flag_key, patch_with_comment, opts)
      data
    end

    # Update feature flag
    # Perform a partial update to a feature flag. The request body must be a valid semantic patch or JSON patch.  ### Using semantic patches on a feature flag  To make a semantic patch request, you must append &#x60;domain-model&#x3D;launchdarkly.semanticpatch&#x60; to your &#x60;Content-Type&#x60; header. To learn more, read [Updates using semantic patch](/reference#updates-using-semantic-patch).  The body of a semantic patch request for updating feature flags takes the following properties:  * &#x60;comment&#x60; (string): (Optional) A description of the update. * &#x60;environmentKey&#x60; (string): (Required for some instructions only) The key of the LaunchDarkly environment. * &#x60;instructions&#x60; (array): (Required) A list of actions the update should perform. Each action in the list must be an object with a &#x60;kind&#x60; property that indicates the instruction. If the action requires parameters, you must include those parameters as additional fields in the object. The body of a single semantic patch can contain many different instructions.  ### Instructions  Semantic patch requests support the following &#x60;kind&#x60; instructions for updating feature flags.  &lt;details&gt; &lt;summary&gt;Click to expand instructions for turning flags on and off&lt;/summary&gt;  These instructions require the &#x60;environmentKey&#x60; parameter.  #### turnFlagOff  Sets the flag&#39;s targeting state to **Off**.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;turnFlagOff\&quot; } ] } &#x60;&#x60;&#x60;  #### turnFlagOn  Sets the flag&#39;s targeting state to **On**.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;turnFlagOn\&quot; } ] } &#x60;&#x60;&#x60;  &lt;/details&gt;&lt;br /&gt;  &lt;details&gt; &lt;summary&gt;Click to expand instructions for working with targeting and variations&lt;/summary&gt;  These instructions require the &#x60;environmentKey&#x60; parameter.  Several of the instructions for working with targeting and variations require flag rule IDs, variation IDs, or clause IDs as parameters. Each of these are returned as part of the [Get feature flag](/tag/Feature-flags#operation/getFeatureFlag) response. The flag rule ID is the &#x60;_id&#x60; field of each element in the &#x60;rules&#x60; array within each environment listed in the &#x60;environments&#x60; object. The variation ID is the &#x60;_id&#x60; field in each element of the &#x60;variations&#x60; array. The clause ID is the &#x60;_id&#x60; field of each element of the &#x60;clauses&#x60; array within the &#x60;rules&#x60; array within each environment listed in the &#x60;environments&#x60; object.  #### addClauses  Adds the given clauses to the rule indicated by &#x60;ruleId&#x60;.  ##### Parameters  - &#x60;ruleId&#x60;: ID of a rule in the flag. - &#x60;clauses&#x60;: Array of clause objects, with &#x60;contextKind&#x60; (string), &#x60;attribute&#x60; (string), &#x60;op&#x60; (string), &#x60;negate&#x60; (boolean), and &#x60;values&#x60; (array of strings, numbers, or dates) properties. The &#x60;contextKind&#x60;, &#x60;attribute&#x60;, and &#x60;values&#x60; are case sensitive. The &#x60;op&#x60; must be lower-case.  Use this request body:  &#x60;&#x60;&#x60;json {  \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,  \&quot;instructions\&quot;: [{   \&quot;kind\&quot;: \&quot;addClauses\&quot;,   \&quot;ruleId\&quot;: \&quot;a902ef4a-2faf-4eaf-88e1-ecc356708a29\&quot;,   \&quot;clauses\&quot;: [{    \&quot;contextKind\&quot;: \&quot;user\&quot;,    \&quot;attribute\&quot;: \&quot;country\&quot;,    \&quot;op\&quot;: \&quot;in\&quot;,    \&quot;negate\&quot;: false,    \&quot;values\&quot;: [\&quot;USA\&quot;, \&quot;Canada\&quot;]   }]  }] } &#x60;&#x60;&#x60;  #### addPrerequisite  Adds the flag indicated by &#x60;key&#x60; with variation &#x60;variationId&#x60; as a prerequisite to the flag in the path parameter.  ##### Parameters  - &#x60;key&#x60;: Flag key of the prerequisite flag. - &#x60;variationId&#x60;: ID of a variation of the prerequisite flag.  Use this request body:  &#x60;&#x60;&#x60;json {  \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,  \&quot;instructions\&quot;: [{   \&quot;kind\&quot;: \&quot;addPrerequisite\&quot;,   \&quot;key\&quot;: \&quot;example-prereq-flag-key\&quot;,   \&quot;variationId\&quot;: \&quot;2f43f67c-3e4e-4945-a18a-26559378ca00\&quot;  }] } &#x60;&#x60;&#x60;  #### addRule  Adds a new targeting rule to the flag. The rule may contain &#x60;clauses&#x60; and serve the variation that &#x60;variationId&#x60; indicates, or serve a percentage rollout that &#x60;rolloutWeights&#x60;, &#x60;rolloutBucketBy&#x60;, and &#x60;rolloutContextKind&#x60; indicate.  If you set &#x60;beforeRuleId&#x60;, this adds the new rule before the indicated rule. Otherwise, adds the new rule to the end of the list.  ##### Parameters  - &#x60;clauses&#x60;: Array of clause objects, with &#x60;contextKind&#x60; (string), &#x60;attribute&#x60; (string), &#x60;op&#x60; (string), &#x60;negate&#x60; (boolean), and &#x60;values&#x60; (array of strings, numbers, or dates) properties. The &#x60;contextKind&#x60;, &#x60;attribute&#x60;, and &#x60;values&#x60; are case sensitive. The &#x60;op&#x60; must be lower-case. - &#x60;beforeRuleId&#x60;: (Optional) ID of a flag rule. - &#x60;variationId&#x60;: ID of a variation of the flag. - &#x60;rolloutWeights&#x60;: (Optional) Map of &#x60;variationId&#x60; to weight, in thousandths of a percent (0-100000). - &#x60;rolloutBucketBy&#x60;: (Optional) Context attribute available in the specified &#x60;rolloutContextKind&#x60;. - &#x60;rolloutContextKind&#x60;: (Optional) Context kind, defaults to &#x60;user&#x60;  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,   \&quot;instructions\&quot;: [{     \&quot;kind\&quot;: \&quot;addRule\&quot;,     \&quot;variationId\&quot;: \&quot;2f43f67c-3e4e-4945-a18a-26559378ca00\&quot;,     \&quot;clauses\&quot;: [{       \&quot;contextKind\&quot;: \&quot;organization\&quot;,       \&quot;attribute\&quot;: \&quot;located_in\&quot;,       \&quot;op\&quot;: \&quot;in\&quot;,       \&quot;negate\&quot;: false,       \&quot;values\&quot;: [\&quot;Sweden\&quot;, \&quot;Norway\&quot;]     }]   }] } &#x60;&#x60;&#x60;  #### addTargets  Adds context keys to the individual context targets for the context kind that &#x60;contextKind&#x60; specifies and the variation that &#x60;variationId&#x60; specifies. Returns an error if this causes the flag to target the same context key in multiple variations.  ##### Parameters  - &#x60;values&#x60;: List of context keys. - &#x60;contextKind&#x60;: (Optional) Context kind to target, defaults to &#x60;user&#x60; - &#x60;variationId&#x60;: ID of a variation on the flag.  Use this request body:  &#x60;&#x60;&#x60;json {  \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,  \&quot;instructions\&quot;: [{   \&quot;kind\&quot;: \&quot;addTargets\&quot;,   \&quot;values\&quot;: [\&quot;context-key-123abc\&quot;, \&quot;context-key-456def\&quot;],   \&quot;variationId\&quot;: \&quot;2f43f67c-3e4e-4945-a18a-26559378ca00\&quot;  }] } &#x60;&#x60;&#x60;  #### addUserTargets  Adds user keys to the individual user targets for the variation that &#x60;variationId&#x60; specifies. Returns an error if this causes the flag to target the same user key in multiple variations. If you are working with contexts, use &#x60;addTargets&#x60; instead of this instruction.  ##### Parameters  - &#x60;values&#x60;: List of user keys. - &#x60;variationId&#x60;: ID of a variation on the flag.  Use this request body:  &#x60;&#x60;&#x60;json {  \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,  \&quot;instructions\&quot;: [{   \&quot;kind\&quot;: \&quot;addUserTargets\&quot;,   \&quot;values\&quot;: [\&quot;user-key-123abc\&quot;, \&quot;user-key-456def\&quot;],   \&quot;variationId\&quot;: \&quot;2f43f67c-3e4e-4945-a18a-26559378ca00\&quot;  }] } &#x60;&#x60;&#x60;  #### addValuesToClause  Adds &#x60;values&#x60; to the values of the clause that &#x60;ruleId&#x60; and &#x60;clauseId&#x60; indicate. Does not update the context kind, attribute, or operator.  ##### Parameters  - &#x60;ruleId&#x60;: ID of a rule in the flag. - &#x60;clauseId&#x60;: ID of a clause in that rule. - &#x60;values&#x60;: Array of strings, case sensitive.  Use this request body:  &#x60;&#x60;&#x60;json {  \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,  \&quot;instructions\&quot;: [{   \&quot;kind\&quot;: \&quot;addValuesToClause\&quot;,   \&quot;ruleId\&quot;: \&quot;a902ef4a-2faf-4eaf-88e1-ecc356708a29\&quot;,   \&quot;clauseId\&quot;: \&quot;10a58772-3121-400f-846b-b8a04e8944ed\&quot;,   \&quot;values\&quot;: [\&quot;beta_testers\&quot;]  }] } &#x60;&#x60;&#x60;  #### addVariation  Adds a variation to the flag.   ##### Parameters  - &#x60;value&#x60;: The variation value. - &#x60;name&#x60;: (Optional) The variation name. - &#x60;description&#x60;: (Optional) A description for the variation.  Use this request body:   &#x60;&#x60;&#x60;json {  \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;addVariation\&quot;, \&quot;value\&quot;: 20, \&quot;name\&quot;: \&quot;New variation\&quot; } ] } &#x60;&#x60;&#x60;  #### clearTargets  Removes all individual targets from the variation that &#x60;variationId&#x60; specifies. This includes both user and non-user targets.  ##### Parameters  - &#x60;variationId&#x60;: ID of a variation on the flag.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;clearTargets\&quot;, \&quot;variationId\&quot;: \&quot;2f43f67c-3e4e-4945-a18a-26559378ca00\&quot; } ] } &#x60;&#x60;&#x60;  #### clearUserTargets  Removes all individual user targets from the variation that &#x60;variationId&#x60; specifies. If you are working with contexts, use &#x60;clearTargets&#x60; instead of this instruction.  ##### Parameters  - &#x60;variationId&#x60;: ID of a variation on the flag.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;clearUserTargets\&quot;, \&quot;variationId\&quot;: \&quot;2f43f67c-3e4e-4945-a18a-26559378ca00\&quot; } ] } &#x60;&#x60;&#x60;  #### removeClauses  Removes the clauses specified by &#x60;clauseIds&#x60; from the rule indicated by &#x60;ruleId&#x60;.  ##### Parameters  - &#x60;ruleId&#x60;: ID of a rule in the flag. - &#x60;clauseIds&#x60;: Array of IDs of clauses in the rule.  Use this request body:  &#x60;&#x60;&#x60;json {  \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,  \&quot;instructions\&quot;: [{   \&quot;kind\&quot;: \&quot;removeClauses\&quot;,   \&quot;ruleId\&quot;: \&quot;a902ef4a-2faf-4eaf-88e1-ecc356708a29\&quot;,   \&quot;clauseIds\&quot;: [\&quot;10a58772-3121-400f-846b-b8a04e8944ed\&quot;, \&quot;36a461dc-235e-4b08-97b9-73ce9365873e\&quot;]  }] } &#x60;&#x60;&#x60;  #### removePrerequisite  Removes the prerequisite flag indicated by &#x60;key&#x60;. Does nothing if this prerequisite does not exist.  ##### Parameters  - &#x60;key&#x60;: Flag key of an existing prerequisite flag.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;removePrerequisite\&quot;, \&quot;key\&quot;: \&quot;prereq-flag-key-123abc\&quot; } ] } &#x60;&#x60;&#x60;  #### removeRule  Removes the targeting rule specified by &#x60;ruleId&#x60;. Does nothing if the rule does not exist.  ##### Parameters  - &#x60;ruleId&#x60;: ID of a rule in the flag.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;removeRule\&quot;, \&quot;ruleId\&quot;: \&quot;a902ef4a-2faf-4eaf-88e1-ecc356708a29\&quot; } ] } &#x60;&#x60;&#x60;  #### removeTargets  Removes context keys from the individual context targets for the context kind that &#x60;contextKind&#x60; specifies and the variation that &#x60;variationId&#x60; specifies. Does nothing if the flag does not target the context keys.  ##### Parameters  - &#x60;values&#x60;: List of context keys. - &#x60;contextKind&#x60;: (Optional) Context kind to target, defaults to &#x60;user&#x60; - &#x60;variationId&#x60;: ID of a flag variation.  Use this request body:  &#x60;&#x60;&#x60;json {  \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,  \&quot;instructions\&quot;: [{   \&quot;kind\&quot;: \&quot;removeTargets\&quot;,   \&quot;values\&quot;: [\&quot;context-key-123abc\&quot;, \&quot;context-key-456def\&quot;],   \&quot;variationId\&quot;: \&quot;2f43f67c-3e4e-4945-a18a-26559378ca00\&quot;  }] } &#x60;&#x60;&#x60;  #### removeUserTargets  Removes user keys from the individual user targets for the variation that &#x60;variationId&#x60; specifies. Does nothing if the flag does not target the user keys. If you are working with contexts, use &#x60;removeTargets&#x60; instead of this instruction.  ##### Parameters  - &#x60;values&#x60;: List of user keys. - &#x60;variationId&#x60;: ID of a flag variation.  Use this request body:  &#x60;&#x60;&#x60;json {  \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,  \&quot;instructions\&quot;: [{   \&quot;kind\&quot;: \&quot;removeUserTargets\&quot;,   \&quot;values\&quot;: [\&quot;user-key-123abc\&quot;, \&quot;user-key-456def\&quot;],   \&quot;variationId\&quot;: \&quot;2f43f67c-3e4e-4945-a18a-26559378ca00\&quot;  }] } &#x60;&#x60;&#x60;  #### removeValuesFromClause  Removes &#x60;values&#x60; from the values of the clause indicated by &#x60;ruleId&#x60; and &#x60;clauseId&#x60;. Does not update the context kind, attribute, or operator.  ##### Parameters  - &#x60;ruleId&#x60;: ID of a rule in the flag. - &#x60;clauseId&#x60;: ID of a clause in that rule. - &#x60;values&#x60;: Array of strings, case sensitive.  Use this request body:  &#x60;&#x60;&#x60;json {  \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,  \&quot;instructions\&quot;: [{   \&quot;kind\&quot;: \&quot;removeValuesFromClause\&quot;,   \&quot;ruleId\&quot;: \&quot;a902ef4a-2faf-4eaf-88e1-ecc356708a29\&quot;,   \&quot;clauseId\&quot;: \&quot;10a58772-3121-400f-846b-b8a04e8944ed\&quot;,   \&quot;values\&quot;: [\&quot;beta_testers\&quot;]  }] } &#x60;&#x60;&#x60;  #### removeVariation  Removes a variation from the flag.   ##### Parameters  - &#x60;variationId&#x60;: ID of a variation of the flag to remove.  Use this request body:   &#x60;&#x60;&#x60;json {  \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;removeVariation\&quot;, \&quot;variationId\&quot;: \&quot;2f43f67c-3e4e-4945-a18a-26559378ca00\&quot; } ] } &#x60;&#x60;&#x60;  #### reorderRules  Rearranges the rules to match the order given in &#x60;ruleIds&#x60;. Returns an error if &#x60;ruleIds&#x60; does not match the current set of rules on the flag.  ##### Parameters  - &#x60;ruleIds&#x60;: Array of IDs of all rules in the flag.  Use this request body:  &#x60;&#x60;&#x60;json {  \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,  \&quot;instructions\&quot;: [{   \&quot;kind\&quot;: \&quot;reorderRules\&quot;,   \&quot;ruleIds\&quot;: [\&quot;a902ef4a-2faf-4eaf-88e1-ecc356708a29\&quot;, \&quot;63c238d1-835d-435e-8f21-c8d5e40b2a3d\&quot;]  }] } &#x60;&#x60;&#x60;  #### replacePrerequisites  Removes all existing prerequisites and replaces them with the list you provide.  ##### Parameters  - &#x60;prerequisites&#x60;: A list of prerequisites. Each item in the list must include a flag &#x60;key&#x60; and &#x60;variationId&#x60;.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,   \&quot;instructions\&quot;: [     {       \&quot;kind\&quot;: \&quot;replacePrerequisites\&quot;,       \&quot;prerequisites\&quot;: [         {           \&quot;key\&quot;: \&quot;prereq-flag-key-123abc\&quot;,           \&quot;variationId\&quot;: \&quot;10a58772-3121-400f-846b-b8a04e8944ed\&quot;         },         {           \&quot;key\&quot;: \&quot;another-prereq-flag-key-456def\&quot;,           \&quot;variationId\&quot;: \&quot;e5830889-1ec5-4b0c-9cc9-c48790090c43\&quot;         }       ]     }   ] } &#x60;&#x60;&#x60;  #### replaceRules  Removes all targeting rules for the flag and replaces them with the list you provide.  ##### Parameters  - &#x60;rules&#x60;: A list of rules.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,   \&quot;instructions\&quot;: [     {       \&quot;kind\&quot;: \&quot;replaceRules\&quot;,       \&quot;rules\&quot;: [         {           \&quot;variationId\&quot;: \&quot;2f43f67c-3e4e-4945-a18a-26559378ca00\&quot;,           \&quot;description\&quot;: \&quot;My new rule\&quot;,           \&quot;clauses\&quot;: [             {               \&quot;contextKind\&quot;: \&quot;user\&quot;,               \&quot;attribute\&quot;: \&quot;segmentMatch\&quot;,               \&quot;op\&quot;: \&quot;segmentMatch\&quot;,               \&quot;values\&quot;: [\&quot;test\&quot;]             }           ],           \&quot;trackEvents\&quot;: true         }       ]     }   ] } &#x60;&#x60;&#x60;  #### replaceTargets  Removes all existing targeting and replaces it with the list of targets you provide.  ##### Parameters  - &#x60;targets&#x60;: A list of context targeting. Each item in the list includes an optional &#x60;contextKind&#x60; that defaults to &#x60;user&#x60;, a required &#x60;variationId&#x60;, and a required list of &#x60;values&#x60;.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,   \&quot;instructions\&quot;: [     {       \&quot;kind\&quot;: \&quot;replaceTargets\&quot;,       \&quot;targets\&quot;: [         {           \&quot;contextKind\&quot;: \&quot;user\&quot;,           \&quot;variationId\&quot;: \&quot;2f43f67c-3e4e-4945-a18a-26559378ca00\&quot;,           \&quot;values\&quot;: [\&quot;user-key-123abc\&quot;]         },         {           \&quot;contextKind\&quot;: \&quot;device\&quot;,           \&quot;variationId\&quot;: \&quot;e5830889-1ec5-4b0c-9cc9-c48790090c43\&quot;,           \&quot;values\&quot;: [\&quot;device-key-456def\&quot;]         }       ]     }       ] } &#x60;&#x60;&#x60;  #### replaceUserTargets  Removes all existing user targeting and replaces it with the list of targets you provide. In the list of targets, you must include a target for each of the flag&#39;s variations. If you are working with contexts, use &#x60;replaceTargets&#x60; instead of this instruction.  ##### Parameters  - &#x60;targets&#x60;: A list of user targeting. Each item in the list must include a &#x60;variationId&#x60; and a list of &#x60;values&#x60;.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,   \&quot;instructions\&quot;: [     {       \&quot;kind\&quot;: \&quot;replaceUserTargets\&quot;,       \&quot;targets\&quot;: [         {           \&quot;variationId\&quot;: \&quot;2f43f67c-3e4e-4945-a18a-26559378ca00\&quot;,           \&quot;values\&quot;: [\&quot;user-key-123abc\&quot;, \&quot;user-key-456def\&quot;]         },         {           \&quot;variationId\&quot;: \&quot;e5830889-1ec5-4b0c-9cc9-c48790090c43\&quot;,           \&quot;values\&quot;: [\&quot;user-key-789ghi\&quot;]         }       ]     }   ] } &#x60;&#x60;&#x60;  #### updateClause  Replaces the clause indicated by &#x60;ruleId&#x60; and &#x60;clauseId&#x60; with &#x60;clause&#x60;.  ##### Parameters  - &#x60;ruleId&#x60;: ID of a rule in the flag. - &#x60;clauseId&#x60;: ID of a clause in that rule. - &#x60;clause&#x60;: New &#x60;clause&#x60; object, with &#x60;contextKind&#x60; (string), &#x60;attribute&#x60; (string), &#x60;op&#x60; (string), &#x60;negate&#x60; (boolean), and &#x60;values&#x60; (array of strings, numbers, or dates) properties. The &#x60;contextKind&#x60;, &#x60;attribute&#x60;, and &#x60;values&#x60; are case sensitive. The &#x60;op&#x60; must be lower-case.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,   \&quot;instructions\&quot;: [{     \&quot;kind\&quot;: \&quot;updateClause\&quot;,     \&quot;ruleId\&quot;: \&quot;a902ef4a-2faf-4eaf-88e1-ecc356708a29\&quot;,     \&quot;clauseId\&quot;: \&quot;10c7462a-2062-45ba-a8bb-dfb3de0f8af5\&quot;,     \&quot;clause\&quot;: {       \&quot;contextKind\&quot;: \&quot;user\&quot;,       \&quot;attribute\&quot;: \&quot;country\&quot;,       \&quot;op\&quot;: \&quot;in\&quot;,       \&quot;negate\&quot;: false,       \&quot;values\&quot;: [\&quot;Mexico\&quot;, \&quot;Canada\&quot;]     }   }] } &#x60;&#x60;&#x60;  #### updateDefaultVariation  Updates the default on or off variation of the flag.   ##### Parameters  - &#x60;onVariationValue&#x60;: (Optional) The value of the variation of the new on variation.  - &#x60;offVariationValue&#x60;: (Optional) The value of the variation of the new off variation  Use this request body:   &#x60;&#x60;&#x60;json {  \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;updateDefaultVariation\&quot;, \&quot;OnVariationValue\&quot;: true, \&quot;OffVariationValue\&quot;: false } ] } &#x60;&#x60;&#x60;  #### updateFallthroughVariationOrRollout  Updates the default or \&quot;fallthrough\&quot; rule for the flag, which the flag serves when a context matches none of the targeting rules. The rule can serve either the variation that &#x60;variationId&#x60; indicates, or a percent rollout that &#x60;rolloutWeights&#x60; and &#x60;rolloutBucketBy&#x60; indicate.  ##### Parameters  - &#x60;variationId&#x60;: ID of a variation of the flag. or - &#x60;rolloutWeights&#x60;: Map of &#x60;variationId&#x60; to weight, in thousandths of a percent (0-100000). - &#x60;rolloutBucketBy&#x60;: (Optional) Context attribute available in the specified &#x60;rolloutContextKind&#x60;. - &#x60;rolloutContextKind&#x60;: (Optional) Context kind, defaults to &#x60;user&#x60;  Use this request body:  &#x60;&#x60;&#x60;json {  \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,  \&quot;instructions\&quot;: [{   \&quot;kind\&quot;: \&quot;updateFallthroughVariationOrRollout\&quot;,   \&quot;variationId\&quot;: \&quot;2f43f67c-3e4e-4945-a18a-26559378ca00\&quot;  }] } &#x60;&#x60;&#x60;  #### updateOffVariation  Updates the default off variation to &#x60;variationId&#x60;. The flag serves the default off variation when the flag&#39;s targeting is **Off**.  ##### Parameters  - &#x60;variationId&#x60;: ID of a variation of the flag.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;updateOffVariation\&quot;, \&quot;variationId\&quot;: \&quot;2f43f67c-3e4e-4945-a18a-26559378ca00\&quot; } ] } &#x60;&#x60;&#x60;  #### updatePrerequisite  Changes the prerequisite flag that &#x60;key&#x60; indicates to use the variation that &#x60;variationId&#x60; indicates. Returns an error if this prerequisite does not exist.  ##### Parameters  - &#x60;key&#x60;: Flag key of an existing prerequisite flag. - &#x60;variationId&#x60;: ID of a variation of the prerequisite flag.  Use this request body:  &#x60;&#x60;&#x60;json {  \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,  \&quot;instructions\&quot;: [{   \&quot;kind\&quot;: \&quot;updatePrerequisite\&quot;,   \&quot;key\&quot;: \&quot;example-prereq-flag-key\&quot;,   \&quot;variationId\&quot;: \&quot;2f43f67c-3e4e-4945-a18a-26559378ca00\&quot;  }] } &#x60;&#x60;&#x60;  #### updateRuleDescription  Updates the description of the feature flag rule.  ##### Parameters  - &#x60;description&#x60;: The new human-readable description for this rule. - &#x60;ruleId&#x60;: The ID of the rule. You can retrieve this by making a GET request for the flag.  Use this request body:  &#x60;&#x60;&#x60;json {  \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,  \&quot;instructions\&quot;: [{   \&quot;kind\&quot;: \&quot;updateRuleDescription\&quot;,   \&quot;description\&quot;: \&quot;New rule description\&quot;,   \&quot;ruleId\&quot;: \&quot;a902ef4a-2faf-4eaf-88e1-ecc356708a29\&quot;  }] } &#x60;&#x60;&#x60;  #### updateRuleTrackEvents  Updates whether or not LaunchDarkly tracks events for the feature flag associated with this rule.  ##### Parameters  - &#x60;ruleId&#x60;: The ID of the rule. You can retrieve this by making a GET request for the flag. - &#x60;trackEvents&#x60;: Whether or not events are tracked.  Use this request body:  &#x60;&#x60;&#x60;json {  \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,  \&quot;instructions\&quot;: [{   \&quot;kind\&quot;: \&quot;updateRuleTrackEvents\&quot;,   \&quot;ruleId\&quot;: \&quot;a902ef4a-2faf-4eaf-88e1-ecc356708a29\&quot;,   \&quot;trackEvents\&quot;: true  }] } &#x60;&#x60;&#x60;  #### updateRuleVariationOrRollout  Updates what &#x60;ruleId&#x60; serves when its clauses evaluate to true. The rule can serve either the variation that &#x60;variationId&#x60; indicates, or a percent rollout that &#x60;rolloutWeights&#x60; and &#x60;rolloutBucketBy&#x60; indicate.  ##### Parameters  - &#x60;ruleId&#x60;: ID of a rule in the flag. - &#x60;variationId&#x60;: ID of a variation of the flag.    or  - &#x60;rolloutWeights&#x60;: Map of &#x60;variationId&#x60; to weight, in thousandths of a percent (0-100000). - &#x60;rolloutBucketBy&#x60;: (Optional) Context attribute available in the specified &#x60;rolloutContextKind&#x60;. - &#x60;rolloutContextKind&#x60;: (Optional) Context kind, defaults to &#x60;user&#x60;  Use this request body:  &#x60;&#x60;&#x60;json {  \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,  \&quot;instructions\&quot;: [{   \&quot;kind\&quot;: \&quot;updateRuleVariationOrRollout\&quot;,   \&quot;ruleId\&quot;: \&quot;a902ef4a-2faf-4eaf-88e1-ecc356708a29\&quot;,   \&quot;variationId\&quot;: \&quot;2f43f67c-3e4e-4945-a18a-26559378ca00\&quot;  }] } &#x60;&#x60;&#x60;  #### updateTrackEvents  Updates whether or not LaunchDarkly tracks events for the feature flag, for all rules.  ##### Parameters  - &#x60;trackEvents&#x60;: Whether or not events are tracked.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;updateTrackEvents\&quot;, \&quot;trackEvents\&quot;: true } ] } &#x60;&#x60;&#x60;  #### updateTrackEventsFallthrough  Updates whether or not LaunchDarkly tracks events for the feature flag, for the default rule.  ##### Parameters  - &#x60;trackEvents&#x60;: Whether or not events are tracked.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;environmentKey\&quot;: \&quot;environment-key-123abc\&quot;,   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;updateTrackEventsFallthrough\&quot;, \&quot;trackEvents\&quot;: true } ] } &#x60;&#x60;&#x60;  #### updateVariation  Updates a variation of the flag.   ##### Parameters  - &#x60;variationId&#x60;: The ID of the variation to update. - &#x60;name&#x60;: (Optional) The updated variation name. - &#x60;value&#x60;: (Optional) The updated variation value. - &#x60;description&#x60;: (Optional) The updated variation description.  Use this request body:   &#x60;&#x60;&#x60;json {  \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;updateVariation\&quot;, \&quot;variationId\&quot;: \&quot;2f43f67c-3e4e-4945-a18a-26559378ca00\&quot;, \&quot;value\&quot;: 20 } ] } &#x60;&#x60;&#x60;  &lt;/details&gt;&lt;br /&gt;  &lt;details&gt; &lt;summary&gt;Click to expand instructions for updating flag settings&lt;/summary&gt;  These instructions do not require the &#x60;environmentKey&#x60; parameter. They make changes that apply to the flag across all environments.  #### addCustomProperties  Adds a new custom property to the feature flag. Custom properties are used to associate feature flags with LaunchDarkly integrations. For example, if you create an integration with an issue tracking service, you may want to associate a flag with a list of issues related to a feature&#39;s development.  ##### Parameters   - &#x60;key&#x60;: The custom property key.  - &#x60;name&#x60;: The custom property name.  - &#x60;values&#x60;: A list of the associated values for the custom property.  Use this request body:  &#x60;&#x60;&#x60;json {  \&quot;instructions\&quot;: [{   \&quot;kind\&quot;: \&quot;addCustomProperties\&quot;,   \&quot;key\&quot;: \&quot;example-custom-property\&quot;,   \&quot;name\&quot;: \&quot;Example custom property\&quot;,   \&quot;values\&quot;: [\&quot;value1\&quot;, \&quot;value2\&quot;]  }] } &#x60;&#x60;&#x60;  #### addTags  Adds tags to the feature flag.  ##### Parameters  - &#x60;values&#x60;: A list of tags to add.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;addTags\&quot;, \&quot;values\&quot;: [\&quot;tag1\&quot;, \&quot;tag2\&quot;] } ] } &#x60;&#x60;&#x60;  #### makeFlagPermanent  Marks the feature flag as permanent. LaunchDarkly does not prompt you to remove permanent flags, even if one variation is rolled out to all your customers.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;makeFlagPermanent\&quot; } ] } &#x60;&#x60;&#x60;  #### makeFlagTemporary  Marks the feature flag as temporary.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;makeFlagTemporary\&quot; } ] } &#x60;&#x60;&#x60;  #### removeCustomProperties  Removes the associated values from a custom property. If all the associated values are removed, this instruction also removes the custom property.  ##### Parameters   - &#x60;key&#x60;: The custom property key.  - &#x60;values&#x60;: A list of the associated values to remove from the custom property.  &#x60;&#x60;&#x60;json {  \&quot;instructions\&quot;: [{   \&quot;kind\&quot;: \&quot;replaceCustomProperties\&quot;,   \&quot;key\&quot;: \&quot;example-custom-property\&quot;,   \&quot;values\&quot;: [\&quot;value1\&quot;, \&quot;value2\&quot;]  }] } &#x60;&#x60;&#x60;  #### removeMaintainer  Removes the flag&#39;s maintainer. To set a new maintainer, use the flag&#39;s **Settings** tab in the LaunchDarkly user interface.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;removeMaintainer\&quot; } ] } &#x60;&#x60;&#x60;  #### removeTags  Removes tags from the feature flag.  ##### Parameters  - &#x60;values&#x60;: A list of tags to remove.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;removeTags\&quot;, \&quot;values\&quot;: [\&quot;tag1\&quot;, \&quot;tag2\&quot;] } ] } &#x60;&#x60;&#x60;  #### replaceCustomProperties  Replaces the existing associated values for a custom property with the new values.  ##### Parameters   - &#x60;key&#x60;: The custom property key.  - &#x60;name&#x60;: The custom property name.  - &#x60;values&#x60;: A list of the new associated values for the custom property.  Use this request body:  &#x60;&#x60;&#x60;json {  \&quot;instructions\&quot;: [{    \&quot;kind\&quot;: \&quot;replaceCustomProperties\&quot;,    \&quot;key\&quot;: \&quot;example-custom-property\&quot;,    \&quot;name\&quot;: \&quot;Example custom property\&quot;,    \&quot;values\&quot;: [\&quot;value1\&quot;, \&quot;value2\&quot;]  }] } &#x60;&#x60;&#x60;  #### turnOffClientSideAvailability  Turns off client-side SDK availability for the flag. This is equivalent to unchecking the **SDKs using Mobile Key** and/or **SDKs using client-side ID** boxes for the flag. If you&#39;re using a client-side or mobile SDK, you must expose your feature flags in order for the client-side or mobile SDKs to evaluate them.  ##### Parameters  - &#x60;value&#x60;: Use \&quot;usingMobileKey\&quot; to turn off availability for mobile SDKs. Use \&quot;usingEnvironmentId\&quot; to turn on availability for client-side SDKs.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;turnOffClientSideAvailability\&quot;, \&quot;value\&quot;: \&quot;usingMobileKey\&quot; } ] } &#x60;&#x60;&#x60;  #### turnOnClientSideAvailability  Turns on client-side SDK availability for the flag. This is equivalent to unchecking the **SDKs using Mobile Key** and/or **SDKs using client-side ID** boxes for the flag. If you&#39;re using a client-side or mobile SDK, you must expose your feature flags in order for the client-side or mobile SDKs to evaluate them.  ##### Parameters  - &#x60;value&#x60;: Use \&quot;usingMobileKey\&quot; to turn on availability for mobile SDKs. Use \&quot;usingEnvironmentId\&quot; to turn on availability for client-side SDKs.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;turnOnClientSideAvailability\&quot;, \&quot;value\&quot;: \&quot;usingMobileKey\&quot; } ] } &#x60;&#x60;&#x60;  #### updateDescription  Updates the feature flag description.  ##### Parameters  - &#x60;value&#x60;: The new description.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;updateDescription\&quot;, \&quot;value\&quot;: \&quot;Updated flag description\&quot; } ] } &#x60;&#x60;&#x60; #### updateMaintainerMember  Updates the maintainer of the flag to an existing member and removes the existing maintainer.  ##### Parameters  - &#x60;value&#x60;: The ID of the member.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;updateMaintainerMember\&quot;, \&quot;value\&quot;: \&quot;61e9b714fd47591727db558a\&quot; } ] } &#x60;&#x60;&#x60;  #### updateMaintainerTeam  Updates the maintainer of the flag to an existing team and removes the existing maintainer.  ##### Parameters  - &#x60;value&#x60;: The key of the team.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;updateMaintainerTeam\&quot;, \&quot;value\&quot;: \&quot;example-team-key\&quot; } ] } &#x60;&#x60;&#x60;  #### updateName  Updates the feature flag name.  ##### Parameters  - &#x60;value&#x60;: The new name.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;updateName\&quot;, \&quot;value\&quot;: \&quot;Updated flag name\&quot; } ] } &#x60;&#x60;&#x60;  &lt;/details&gt;&lt;br /&gt;  &lt;details&gt; &lt;summary&gt;Click to expand instructions for updating the flag lifecycle&lt;/summary&gt;  These instructions do not require the &#x60;environmentKey&#x60; parameter. They make changes that apply to the flag across all environments.  #### archiveFlag  Archives the feature flag. This retires it from LaunchDarkly without deleting it. You cannot archive a flag that is a prerequisite of other flags.  &#x60;&#x60;&#x60;json {   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;archiveFlag\&quot; } ] } &#x60;&#x60;&#x60;  #### deleteFlag  Deletes the feature flag and its rules. You cannot restore a deleted flag. If this flag is requested again, the flag value defined in code will be returned for all contexts.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;deleteFlag\&quot; } ] } &#x60;&#x60;&#x60;  #### restoreFlag  Restores the feature flag if it was previously archived.  Use this request body:  &#x60;&#x60;&#x60;json {   \&quot;instructions\&quot;: [ { \&quot;kind\&quot;: \&quot;restoreFlag\&quot; } ] } &#x60;&#x60;&#x60;  &lt;/details&gt;  ### Using JSON Patches on a feature flag If you do not include the header described above, you can use [JSON patch](/reference#updates-using-json-patch).  When using the update feature flag endpoint to add individual targets to a specific variation, there are two different patch documents, depending on whether there are already individual targets for the variation.  If a flag variation already has individual targets, the path for the JSON Patch operation is:  &#x60;&#x60;&#x60;json {   \&quot;op\&quot;: \&quot;add\&quot;,   \&quot;path\&quot;: \&quot;/environments/devint/targets/0/values/-\&quot;,   \&quot;value\&quot;: \&quot;TestClient10\&quot; } &#x60;&#x60;&#x60;  If a flag variation does not already have individual targets, the path for the JSON Patch operation is:  &#x60;&#x60;&#x60;json [   {     \&quot;op\&quot;: \&quot;add\&quot;,     \&quot;path\&quot;: \&quot;/environments/devint/targets/-\&quot;,     \&quot;value\&quot;: { \&quot;variation\&quot;: 0, \&quot;values\&quot;: [\&quot;TestClient10\&quot;] }   } ] &#x60;&#x60;&#x60;   ### Required approvals If a request attempts to alter a flag configuration in an environment where approvals are required for the flag, the request will fail with a 405. Changes to the flag configuration in that environment will require creating an [approval request](/tag/Approvals) or a [workflow](/tag/Workflows-(beta)).  ### Conflicts If a flag configuration change made through this endpoint would cause a pending scheduled change or approval request to fail, this endpoint will return a 400. You can ignore this check by adding an &#x60;ignoreConflicts&#x60; query parameter set to &#x60;true&#x60;. 
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key. The key identifies the flag in your code.
    # @param patch_with_comment [PatchWithComment] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeatureFlag, Integer, Hash)>] FeatureFlag data, response status code and response headers
    def patch_feature_flag_with_http_info(project_key, feature_flag_key, patch_with_comment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureFlagsApi.patch_feature_flag ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling FeatureFlagsApi.patch_feature_flag"
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling FeatureFlagsApi.patch_feature_flag"
      end
      # verify the required parameter 'patch_with_comment' is set
      if @api_client.config.client_side_validation && patch_with_comment.nil?
        fail ArgumentError, "Missing the required parameter 'patch_with_comment' when calling FeatureFlagsApi.patch_feature_flag"
      end
      # resource path
      local_var_path = '/api/v2/flags/{projectKey}/{featureFlagKey}'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s)).sub('{' + 'featureFlagKey' + '}', CGI.escape(feature_flag_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_with_comment)

      # return_type
      return_type = opts[:debug_return_type] || 'FeatureFlag'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"FeatureFlagsApi.patch_feature_flag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureFlagsApi#patch_feature_flag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a feature flag
    # Create a feature flag with the given name, key, and variations.
    # @param project_key [String] The project key
    # @param feature_flag_body [FeatureFlagBody] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :clone The key of the feature flag to be cloned. The key identifies the flag in your code. For example, setting &#x60;clone&#x3D;flagKey&#x60; copies the full targeting configuration for all environments, including &#x60;on/off&#x60; state, from the original flag to the new flag.
    # @return [FeatureFlag]
    def post_feature_flag(project_key, feature_flag_body, opts = {})
      data, _status_code, _headers = post_feature_flag_with_http_info(project_key, feature_flag_body, opts)
      data
    end

    # Create a feature flag
    # Create a feature flag with the given name, key, and variations.
    # @param project_key [String] The project key
    # @param feature_flag_body [FeatureFlagBody] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :clone The key of the feature flag to be cloned. The key identifies the flag in your code. For example, setting &#x60;clone&#x3D;flagKey&#x60; copies the full targeting configuration for all environments, including &#x60;on/off&#x60; state, from the original flag to the new flag.
    # @return [Array<(FeatureFlag, Integer, Hash)>] FeatureFlag data, response status code and response headers
    def post_feature_flag_with_http_info(project_key, feature_flag_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureFlagsApi.post_feature_flag ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling FeatureFlagsApi.post_feature_flag"
      end
      # verify the required parameter 'feature_flag_body' is set
      if @api_client.config.client_side_validation && feature_flag_body.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_body' when calling FeatureFlagsApi.post_feature_flag"
      end
      # resource path
      local_var_path = '/api/v2/flags/{projectKey}'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'clone'] = opts[:'clone'] if !opts[:'clone'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(feature_flag_body)

      # return_type
      return_type = opts[:debug_return_type] || 'FeatureFlag'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"FeatureFlagsApi.post_feature_flag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureFlagsApi#post_feature_flag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
