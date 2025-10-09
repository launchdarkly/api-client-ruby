=begin
#LaunchDarkly REST API

#This documentation describes LaunchDarkly's REST API. To access the complete OpenAPI spec directly, use [Get OpenAPI spec](https://launchdarkly.com/docs/api/other/get-openapi-spec).  To learn how to use LaunchDarkly using the user interface (UI) instead, read our [product documentation](https://launchdarkly.com/docs/home).  ## Authentication  LaunchDarkly's REST API uses the HTTPS protocol with a minimum TLS version of 1.2.  All REST API resources are authenticated with either [personal or service access tokens](https://launchdarkly.com/docs/home/account/api), or session cookies. Other authentication mechanisms are not supported. You can manage personal access tokens on your [**Authorization**](https://app.launchdarkly.com/settings/authorization) page in the LaunchDarkly UI.  LaunchDarkly also has SDK keys, mobile keys, and client-side IDs that are used by our server-side SDKs, mobile SDKs, and JavaScript-based SDKs, respectively. **These keys cannot be used to access our REST API**. These keys are environment-specific, and can only perform read-only operations such as fetching feature flag settings.  | Auth mechanism                                                                                  | Allowed resources                                                                                     | Use cases                                          | | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | -------------------------------------------------- | | [Personal or service access tokens](https://launchdarkly.com/docs/home/account/api) | Can be customized on a per-token basis                                                                | Building scripts, custom integrations, data export. | | SDK keys                                                                                        | Can only access read-only resources specific to server-side SDKs. Restricted to a single environment. | Server-side SDKs                     | | Mobile keys                                                                                     | Can only access read-only resources specific to mobile SDKs, and only for flags marked available to mobile keys. Restricted to a single environment.           | Mobile SDKs                                        | | Client-side ID                                                                                  | Can only access read-only resources specific to JavaScript-based client-side SDKs, and only for flags marked available to client-side. Restricted to a single environment.           | Client-side JavaScript                             |  > #### Keep your access tokens and SDK keys private > > Access tokens should _never_ be exposed in untrusted contexts. Never put an access token in client-side JavaScript, or embed it in a mobile application. LaunchDarkly has special mobile keys that you can embed in mobile apps. If you accidentally expose an access token or SDK key, you can reset it from your [**Authorization**](https://app.launchdarkly.com/settings/authorization) page. > > The client-side ID is safe to embed in untrusted contexts. It's designed for use in client-side JavaScript.  ### Authentication using request header  The preferred way to authenticate with the API is by adding an `Authorization` header containing your access token to your requests. The value of the `Authorization` header must be your access token.  Manage personal access tokens from the [**Authorization**](https://app.launchdarkly.com/settings/authorization) page.  ### Authentication using session cookie  For testing purposes, you can make API calls directly from your web browser. If you are logged in to the LaunchDarkly application, the API will use your existing session to authenticate calls.  Depending on the permissions granted as part of your [role](https://launchdarkly.com/docs/home/account/roles), you may not have permission to perform some API calls. You will receive a `401` response code in that case.  > ### Modifying the Origin header causes an error > > LaunchDarkly validates that the Origin header for any API request authenticated by a session cookie matches the expected Origin header. The expected Origin header is `https://app.launchdarkly.com`. > > If the Origin header does not match what's expected, LaunchDarkly returns an error. This error can prevent the LaunchDarkly app from working correctly. > > Any browser extension that intentionally changes the Origin header can cause this problem. For example, the `Allow-Control-Allow-Origin: *` Chrome extension changes the Origin header to `http://evil.com` and causes the app to fail. > > To prevent this error, do not modify your Origin header. > > LaunchDarkly does not require origin matching when authenticating with an access token, so this issue does not affect normal API usage.  ## Representations  All resources expect and return JSON response bodies. Error responses also send a JSON body. To learn more about the error format of the API, read [Errors](https://launchdarkly.com/docs/api#errors).  In practice this means that you always get a response with a `Content-Type` header set to `application/json`.  In addition, request bodies for `PATCH`, `POST`, and `PUT` requests must be encoded as JSON with a `Content-Type` header set to `application/json`.  ### Summary and detailed representations  When you fetch a list of resources, the response includes only the most important attributes of each resource. This is a _summary representation_ of the resource. When you fetch an individual resource, such as a single feature flag, you receive a _detailed representation_ of the resource.  The best way to find a detailed representation is to follow links. Every summary representation includes a link to its detailed representation.  ### Expanding responses  Sometimes the detailed representation of a resource does not include all of the attributes of the resource by default. If this is the case, the request method will clearly document this and describe which attributes you can include in an expanded response.  To include the additional attributes, append the `expand` request parameter to your request and add a comma-separated list of the attributes to include. For example, when you append `?expand=members,maintainers` to the [Get team](https://launchdarkly.com/docs/api/teams/get-team) endpoint, the expanded response includes both of these attributes.  ### Links and addressability  The best way to navigate the API is by following links. These are attributes in representations that link to other resources. The API always uses the same format for links:  - Links to other resources within the API are encapsulated in a `_links` object - If the resource has a corresponding link to HTML content on the site, it is stored in a special `_site` link  Each link has two attributes:  - An `href`, which contains the URL - A `type`, which describes the content type  For example, a feature resource might return the following:  ```json {   \"_links\": {     \"parent\": {       \"href\": \"/api/features\",       \"type\": \"application/json\"     },     \"self\": {       \"href\": \"/api/features/sort.order\",       \"type\": \"application/json\"     }   },   \"_site\": {     \"href\": \"/features/sort.order\",     \"type\": \"text/html\"   } } ```  From this, you can navigate to the parent collection of features by following the `parent` link, or navigate to the site page for the feature by following the `_site` link.  Collections are always represented as a JSON object with an `items` attribute containing an array of representations. Like all other representations, collections have `_links` defined at the top level.  Paginated collections include `first`, `last`, `next`, and `prev` links containing a URL with the respective set of elements in the collection.  ## Updates  Resources that accept partial updates use the `PATCH` verb. Most resources support the [JSON patch](https://launchdarkly.com/docs/api#updates-using-json-patch) format. Some resources also support the [JSON merge patch](https://launchdarkly.com/docs/api#updates-using-json-merge-patch) format, and some resources support the [semantic patch](https://launchdarkly.com/docs/api#updates-using-semantic-patch) format, which is a way to specify the modifications to perform as a set of executable instructions. Each resource supports optional [comments](https://launchdarkly.com/docs/api#updates-with-comments) that you can submit with updates. Comments appear in outgoing webhooks, the audit log, and other integrations.  When a resource supports both JSON patch and semantic patch, we document both in the request method. However, the specific request body fields and descriptions included in our documentation only match one type of patch or the other.  ### Updates using JSON patch  [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) is a way to specify the modifications to perform on a resource. JSON patch uses paths and a limited set of operations to describe how to transform the current state of the resource into a new state. JSON patch documents are always arrays, where each element contains an operation, a path to the field to update, and the new value.  For example, in this feature flag representation:  ```json {     \"name\": \"New recommendations engine\",     \"key\": \"engine.enable\",     \"description\": \"This is the description\",     ... } ``` You can change the feature flag's description with the following patch document:  ```json [{ \"op\": \"replace\", \"path\": \"/description\", \"value\": \"This is the new description\" }] ```  You can specify multiple modifications to perform in a single request. You can also test that certain preconditions are met before applying the patch:  ```json [   { \"op\": \"test\", \"path\": \"/version\", \"value\": 10 },   { \"op\": \"replace\", \"path\": \"/description\", \"value\": \"The new description\" } ] ```  The above patch request tests whether the feature flag's `version` is `10`, and if so, changes the feature flag's description.  Attributes that are not editable, such as a resource's `_links`, have names that start with an underscore.  ### Updates using JSON merge patch  [JSON merge patch](https://datatracker.ietf.org/doc/html/rfc7386) is another format for specifying the modifications to perform on a resource. JSON merge patch is less expressive than JSON patch. However, in many cases it is simpler to construct a merge patch document. For example, you can change a feature flag's description with the following merge patch document:  ```json {   \"description\": \"New flag description\" } ```  ### Updates using semantic patch  Some resources support the semantic patch format. A semantic patch is a way to specify the modifications to perform on a resource as a set of executable instructions.  Semantic patch allows you to be explicit about intent using precise, custom instructions. In many cases, you can define semantic patch instructions independently of the current state of the resource. This can be useful when defining a change that may be applied at a future date.  To make a semantic patch request, you must append `domain-model=launchdarkly.semanticpatch` to your `Content-Type` header.  Here's how:  ``` Content-Type: application/json; domain-model=launchdarkly.semanticpatch ```  If you call a semantic patch resource without this header, you will receive a `400` response because your semantic patch will be interpreted as a JSON patch.  The body of a semantic patch request takes the following properties:  * `comment` (string): (Optional) A description of the update. * `environmentKey` (string): (Required for some resources only) The environment key. * `instructions` (array): (Required) A list of actions the update should perform. Each action in the list must be an object with a `kind` property that indicates the instruction. If the instruction requires parameters, you must include those parameters as additional fields in the object. The documentation for each resource that supports semantic patch includes the available instructions and any additional parameters.  For example:  ```json {   \"comment\": \"optional comment\",   \"instructions\": [ {\"kind\": \"turnFlagOn\"} ] } ```  Semantic patches are not applied partially; either all of the instructions are applied or none of them are. If **any** instruction is invalid, the endpoint returns an error and will not change the resource. If all instructions are valid, the request succeeds and the resources are updated if necessary, or left unchanged if they are already in the state you request.  ### Updates with comments  You can submit optional comments with `PATCH` changes.  To submit a comment along with a JSON patch document, use the following format:  ```json {   \"comment\": \"This is a comment string\",   \"patch\": [{ \"op\": \"replace\", \"path\": \"/description\", \"value\": \"The new description\" }] } ```  To submit a comment along with a JSON merge patch document, use the following format:  ```json {   \"comment\": \"This is a comment string\",   \"merge\": { \"description\": \"New flag description\" } } ```  To submit a comment along with a semantic patch, use the following format:  ```json {   \"comment\": \"This is a comment string\",   \"instructions\": [ {\"kind\": \"turnFlagOn\"} ] } ```  ## Errors  The API always returns errors in a common format. Here's an example:  ```json {   \"code\": \"invalid_request\",   \"message\": \"A feature with that key already exists\",   \"id\": \"30ce6058-87da-11e4-b116-123b93f75cba\" } ```  The `code` indicates the general class of error. The `message` is a human-readable explanation of what went wrong. The `id` is a unique identifier. Use it when you're working with LaunchDarkly Support to debug a problem with a specific API call.  ### HTTP status error response codes  | Code | Definition        | Description                                                                                       | Possible Solution                                                | | ---- | ----------------- | ------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- | | 400  | Invalid request       | The request cannot be understood.                                    | Ensure JSON syntax in request body is correct.                   | | 401  | Invalid access token      | Requestor is unauthorized or does not have permission for this API call.                                                | Ensure your API access token is valid and has the appropriate permissions.                                     | | 403  | Forbidden         | Requestor does not have access to this resource.                                                | Ensure that the account member or access token has proper permissions set. | | 404  | Invalid resource identifier | The requested resource is not valid. | Ensure that the resource is correctly identified by ID or key. | | 405  | Method not allowed | The request method is not allowed on this resource. | Ensure that the HTTP verb is correct. | | 409  | Conflict          | The API request can not be completed because it conflicts with a concurrent API request. | Retry your request.                                              | | 422  | Unprocessable entity | The API request can not be completed because the update description can not be understood. | Ensure that the request body is correct for the type of patch you are using, either JSON patch or semantic patch. | 429  | Too many requests | Read [Rate limiting](https://launchdarkly.com/docs/api#rate-limiting).                                               | Wait and try again later.                                        |  ## CORS  The LaunchDarkly API supports Cross Origin Resource Sharing (CORS) for AJAX requests from any origin. If an `Origin` header is given in a request, it will be echoed as an explicitly allowed origin. Otherwise the request returns a wildcard, `Access-Control-Allow-Origin: *`. For more information on CORS, read the [CORS W3C Recommendation](http://www.w3.org/TR/cors). Example CORS headers might look like:  ```http Access-Control-Allow-Headers: Accept, Content-Type, Content-Length, Accept-Encoding, Authorization Access-Control-Allow-Methods: OPTIONS, GET, DELETE, PATCH Access-Control-Allow-Origin: * Access-Control-Max-Age: 300 ```  You can make authenticated CORS calls just as you would make same-origin calls, using either [token or session-based authentication](https://launchdarkly.com/docs/api#authentication). If you are using session authentication, you should set the `withCredentials` property for your `xhr` request to `true`. You should never expose your access tokens to untrusted entities.  ## Rate limiting  We use several rate limiting strategies to ensure the availability of our APIs. Rate-limited calls to our APIs return a `429` status code. Calls to our APIs include headers indicating the current rate limit status. The specific headers returned depend on the API route being called. The limits differ based on the route, authentication mechanism, and other factors. Routes that are not rate limited may not contain any of the headers described below.  > ### Rate limiting and SDKs > > LaunchDarkly SDKs are never rate limited and do not use the API endpoints defined here. LaunchDarkly uses a different set of approaches, including streaming/server-sent events and a global CDN, to ensure availability to the routes used by LaunchDarkly SDKs.  ### Global rate limits  Authenticated requests are subject to a global limit. This is the maximum number of calls that your account can make to the API per ten seconds. All service and personal access tokens on the account share this limit, so exceeding the limit with one access token will impact other tokens. Calls that are subject to global rate limits may return the headers below:  | Header name                    | Description                                                                      | | ------------------------------ | -------------------------------------------------------------------------------- | | `X-Ratelimit-Global-Remaining` | The maximum number of requests the account is permitted to make per ten seconds. | | `X-Ratelimit-Reset`            | The time at which the current rate limit window resets in epoch milliseconds.    |  We do not publicly document the specific number of calls that can be made globally. This limit may change, and we encourage clients to program against the specification, relying on the two headers defined above, rather than hardcoding to the current limit.  ### Route-level rate limits  Some authenticated routes have custom rate limits. These also reset every ten seconds. Any service or personal access tokens hitting the same route share this limit, so exceeding the limit with one access token may impact other tokens. Calls that are subject to route-level rate limits return the headers below:  | Header name                   | Description                                                                                           | | ----------------------------- | ----------------------------------------------------------------------------------------------------- | | `X-Ratelimit-Route-Remaining` | The maximum number of requests to the current route the account is permitted to make per ten seconds. | | `X-Ratelimit-Reset`           | The time at which the current rate limit window resets in epoch milliseconds.                         |  A _route_ represents a specific URL pattern and verb. For example, the [Delete environment](https://launchdarkly.com/docs/api/environments/delete-environment) endpoint is considered a single route, and each call to delete an environment counts against your route-level rate limit for that route.  We do not publicly document the specific number of calls that an account can make to each endpoint per ten seconds. These limits may change, and we encourage clients to program against the specification, relying on the two headers defined above, rather than hardcoding to the current limits.  ### IP-based rate limiting  We also employ IP-based rate limiting on some API routes. If you hit an IP-based rate limit, your API response will include a `Retry-After` header indicating how long to wait before re-trying the call. Clients must wait at least `Retry-After` seconds before making additional calls to our API, and should employ jitter and backoff strategies to avoid triggering rate limits again.  ## OpenAPI (Swagger) and client libraries  We have a [complete OpenAPI (Swagger) specification](https://app.launchdarkly.com/api/v2/openapi.json) for our API.  We auto-generate multiple client libraries based on our OpenAPI specification. To learn more, visit the [collection of client libraries on GitHub](https://github.com/search?q=topic%3Alaunchdarkly-api+org%3Alaunchdarkly&type=Repositories). You can also use this specification to generate client libraries to interact with our REST API in your language of choice.  Our OpenAPI specification is supported by several API-based tools such as Postman and Insomnia. In many cases, you can directly import our specification to explore our APIs.  ## Method overriding  Some firewalls and HTTP clients restrict the use of verbs other than `GET` and `POST`. In those environments, our API endpoints that use `DELETE`, `PATCH`, and `PUT` verbs are inaccessible.  To avoid this issue, our API supports the `X-HTTP-Method-Override` header, allowing clients to \"tunnel\" `DELETE`, `PATCH`, and `PUT` requests using a `POST` request.  For example, to call a `PATCH` endpoint using a `POST` request, you can include `X-HTTP-Method-Override:PATCH` as a header.  ## Beta resources  We sometimes release new API resources in **beta** status before we release them with general availability.  Resources that are in beta are still undergoing testing and development. They may change without notice, including becoming backwards incompatible.  We try to promote resources into general availability as quickly as possible. This happens after sufficient testing and when we're satisfied that we no longer need to make backwards-incompatible changes.  We mark beta resources with a \"Beta\" callout in our documentation, pictured below:  > ### This feature is in beta > > To use this feature, pass in a header including the `LD-API-Version` key with value set to `beta`. Use this header with each call. To learn more, read [Beta resources](https://launchdarkly.com/docs/api#beta-resources). > > Resources that are in beta are still undergoing testing and development. They may change without notice, including becoming backwards incompatible.  ### Using beta resources  To use a beta resource, you must include a header in the request. If you call a beta resource without this header, you receive a `403` response.  Use this header:  ``` LD-API-Version: beta ```  ## Federal and EU environments  In addition to the commercial versions, LaunchDarkly offers instances for federal agencies and those based in the European Union (EU).  ### Federal environments  The version of LaunchDarkly that is available on domains controlled by the United States government is different from the version of LaunchDarkly available to the general public. If you are an employee or contractor for a United States federal agency and use LaunchDarkly in your work, you likely use the federal instance of LaunchDarkly.  If you are working in the federal instance of LaunchDarkly, the base URI for each request is `https://app.launchdarkly.us`.  To learn more, read [LaunchDarkly in federal environments](https://launchdarkly.com/docs/home/infrastructure/federal).  ### EU environments  The version of LaunchDarkly that is available in the EU is different from the version of LaunchDarkly available to other regions. If you are based in the EU, you likely use the EU instance of LaunchDarkly. The LaunchDarkly EU instance complies with EU data residency principles, including the protection and confidentiality of EU customer information.  If you are working in the EU instance of LaunchDarkly, the base URI for each request is `https://app.eu.launchdarkly.com`.  To learn more, read [LaunchDarkly in the European Union (EU)](https://launchdarkly.com/docs/home/infrastructure/eu).  ## Versioning  We try hard to keep our REST API backwards compatible, but we occasionally have to make backwards-incompatible changes in the process of shipping new features. These breaking changes can cause unexpected behavior if you don't prepare for them accordingly.  Updates to our REST API include support for the latest features in LaunchDarkly. We also release a new version of our REST API every time we make a breaking change. We provide simultaneous support for multiple API versions so you can migrate from your current API version to a new version at your own pace.  ### Setting the API version per request  You can set the API version on a specific request by sending an `LD-API-Version` header, as shown in the example below:  ``` LD-API-Version: 20240415 ```  The header value is the version number of the API version you would like to request. The number for each version corresponds to the date the version was released in `yyyymmdd` format. In the example above the version `20240415` corresponds to April 15, 2024.  ### Setting the API version per access token  When you create an access token, you must specify a specific version of the API to use. This ensures that integrations using this token cannot be broken by version changes.  Tokens created before versioning was released have their version set to `20160426`, which is the version of the API that existed before the current versioning scheme, so that they continue working the same way they did before versioning.  If you would like to upgrade your integration to use a new API version, you can explicitly set the header described above.  > ### Best practice: Set the header for every client or integration > > We recommend that you set the API version header explicitly in any client or integration you build. > > Only rely on the access token API version during manual testing.  ### API version changelog  <table>   <tr>     <th>Version</th>     <th>Changes</th>     <th>End of life (EOL)</th>   </tr>   <tr>     <td>`20240415`</td>     <td>       <ul><li>Changed several endpoints from unpaginated to paginated. Use the `limit` and `offset` query parameters to page through the results.</li> <li>Changed the [list access tokens](https://launchdarkly.com/docs/api/access-tokens/get-tokens) endpoint: <ul><li>Response is now paginated with a default limit of `25`</li></ul></li> <li>Changed the [list account members](https://launchdarkly.com/docs/api/account-members/get-members) endpoint: <ul><li>The `accessCheck` filter is no longer available</li></ul></li> <li>Changed the [list custom roles](https://launchdarkly.com/docs/api/custom-roles/get-custom-roles) endpoint: <ul><li>Response is now paginated with a default limit of `20`</li></ul></li> <li>Changed the [list feature flags](https://launchdarkly.com/docs/api/feature-flags/get-feature-flags) endpoint: <ul><li>Response is now paginated with a default limit of `20`</li><li>The `environments` field is now only returned if the request is filtered by environment, using the `filterEnv` query parameter</li><li>The `followerId`, `hasDataExport`, `status`, `contextKindTargeted`, and `segmentTargeted` filters are no longer available</li><li>The `compare` query parameter is no longer available</li></ul></li> <li>Changed the [list segments](https://launchdarkly.com/docs/api/segments/get-segments) endpoint: <ul><li>Response is now paginated with a default limit of `20`</li></ul></li> <li>Changed the [list teams](https://launchdarkly.com/docs/api/teams/get-teams) endpoint: <ul><li>The `expand` parameter no longer supports including `projects` or `roles`</li><li>In paginated results, the maximum page size is now 100</li></ul></li> <li>Changed the [get workflows](https://launchdarkly.com/docs/api/workflows/get-workflows) endpoint: <ul><li>Response is now paginated with a default limit of `20`</li><li>The `_conflicts` field in the response is no longer available</li></ul></li> </ul>     </td>     <td>Current</td>   </tr>   <tr>     <td>`20220603`</td>     <td>       <ul><li>Changed the [list projects](https://launchdarkly.com/docs/api/projects/get-projects) return value:<ul><li>Response is now paginated with a default limit of `20`.</li><li>Added support for filter and sort.</li><li>The project `environments` field is now expandable. This field is omitted by default.</li></ul></li><li>Changed the [get project](https://launchdarkly.com/docs/api/projects/get-project) return value:<ul><li>The `environments` field is now expandable. This field is omitted by default.</li></ul></li></ul>     </td>     <td>2025-04-15</td>   </tr>   <tr>     <td>`20210729`</td>     <td>       <ul><li>Changed the [create approval request](https://launchdarkly.com/docs/api/approvals/post-approval-request) return value. It now returns HTTP Status Code `201` instead of `200`.</li><li> Changed the [get user](https://launchdarkly.com/docs/api/users/get-user) return value. It now returns a user record, not a user. </li><li>Added additional optional fields to environment, segments, flags, members, and segments, including the ability to create big segments. </li><li> Added default values for flag variations when new environments are created. </li><li>Added filtering and pagination for getting flags and members, including `limit`, `number`, `filter`, and `sort` query parameters. </li><li>Added endpoints for expiring user targets for flags and segments, scheduled changes, access tokens, Relay Proxy configuration, integrations and subscriptions, and approvals. </li></ul>     </td>     <td>2023-06-03</td>   </tr>   <tr>     <td>`20191212`</td>     <td>       <ul><li>[List feature flags](https://launchdarkly.com/docs/api/feature-flags/get-feature-flags) now defaults to sending summaries of feature flag configurations, equivalent to setting the query parameter `summary=true`. Summaries omit flag targeting rules and individual user targets from the payload. </li><li> Added endpoints for flags, flag status, projects, environments, audit logs, members, users, custom roles, segments, usage, streams, events, and data export. </li></ul>     </td>     <td>2022-07-29</td>   </tr>   <tr>     <td>`20160426`</td>     <td>       <ul><li>Initial versioning of API. Tokens created before versioning have their version set to this.</li></ul>     </td>     <td>2020-12-12</td>   </tr> </table>  To learn more about how EOL is determined, read LaunchDarkly's [End of Life (EOL) Policy](https://launchdarkly.com/policies/end-of-life-policy/). 

The version of the OpenAPI document: 2.0
Contact: support@launchdarkly.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'cgi'

module LaunchDarklyApi
  class ApprovalsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete approval request
    # Delete an approval request.
    # @param id [String] The approval request ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_approval_request(id, opts = {})
      delete_approval_request_with_http_info(id, opts)
      nil
    end

    # Delete approval request
    # Delete an approval request.
    # @param id [String] The approval request ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_approval_request_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApprovalsApi.delete_approval_request ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApprovalsApi.delete_approval_request"
      end
      # resource path
      local_var_path = '/api/v2/approval-requests/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"ApprovalsApi.delete_approval_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApprovalsApi#delete_approval_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete approval request for a flag
    # Delete an approval request for a feature flag.
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key
    # @param environment_key [String] The environment key
    # @param id [String] The feature flag approval request ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_approval_request_for_flag(project_key, feature_flag_key, environment_key, id, opts = {})
      delete_approval_request_for_flag_with_http_info(project_key, feature_flag_key, environment_key, id, opts)
      nil
    end

    # Delete approval request for a flag
    # Delete an approval request for a feature flag.
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key
    # @param environment_key [String] The environment key
    # @param id [String] The feature flag approval request ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_approval_request_for_flag_with_http_info(project_key, feature_flag_key, environment_key, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApprovalsApi.delete_approval_request_for_flag ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling ApprovalsApi.delete_approval_request_for_flag"
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling ApprovalsApi.delete_approval_request_for_flag"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling ApprovalsApi.delete_approval_request_for_flag"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApprovalsApi.delete_approval_request_for_flag"
      end
      # resource path
      local_var_path = '/api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{id}'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s)).sub('{' + 'featureFlagKey' + '}', CGI.escape(feature_flag_key.to_s)).sub('{' + 'environmentKey' + '}', CGI.escape(environment_key.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"ApprovalsApi.delete_approval_request_for_flag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApprovalsApi#delete_approval_request_for_flag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get approval request for a flag
    # Get a single approval request for a feature flag.
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key
    # @param environment_key [String] The environment key
    # @param id [String] The feature flag approval request ID
    # @param [Hash] opts the optional parameters
    # @return [FlagConfigApprovalRequestResponse]
    def get_approval_for_flag(project_key, feature_flag_key, environment_key, id, opts = {})
      data, _status_code, _headers = get_approval_for_flag_with_http_info(project_key, feature_flag_key, environment_key, id, opts)
      data
    end

    # Get approval request for a flag
    # Get a single approval request for a feature flag.
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key
    # @param environment_key [String] The environment key
    # @param id [String] The feature flag approval request ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(FlagConfigApprovalRequestResponse, Integer, Hash)>] FlagConfigApprovalRequestResponse data, response status code and response headers
    def get_approval_for_flag_with_http_info(project_key, feature_flag_key, environment_key, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApprovalsApi.get_approval_for_flag ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling ApprovalsApi.get_approval_for_flag"
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling ApprovalsApi.get_approval_for_flag"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling ApprovalsApi.get_approval_for_flag"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApprovalsApi.get_approval_for_flag"
      end
      # resource path
      local_var_path = '/api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{id}'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s)).sub('{' + 'featureFlagKey' + '}', CGI.escape(feature_flag_key.to_s)).sub('{' + 'environmentKey' + '}', CGI.escape(environment_key.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'FlagConfigApprovalRequestResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ApprovalsApi.get_approval_for_flag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApprovalsApi#get_approval_for_flag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get approval request
    # Get an approval request by approval request ID.  ### Expanding approval response  LaunchDarkly supports the `expand` query param to include additional fields in the response, with the following fields:  - `environments` includes the environments the approval request relates to - `flag` includes the flag the approval request belongs to - `project` includes the project the approval request belongs to - `resource` includes details on the resource (flag or segment) the approval request relates to  For example, `expand=project,flag` includes the `project` and `flag` fields in the response. 
    # @param id [String] The approval request ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand A comma-separated list of fields to expand in the response. Supported fields are explained above.
    # @return [ExpandableApprovalRequestResponse]
    def get_approval_request(id, opts = {})
      data, _status_code, _headers = get_approval_request_with_http_info(id, opts)
      data
    end

    # Get approval request
    # Get an approval request by approval request ID.  ### Expanding approval response  LaunchDarkly supports the &#x60;expand&#x60; query param to include additional fields in the response, with the following fields:  - &#x60;environments&#x60; includes the environments the approval request relates to - &#x60;flag&#x60; includes the flag the approval request belongs to - &#x60;project&#x60; includes the project the approval request belongs to - &#x60;resource&#x60; includes details on the resource (flag or segment) the approval request relates to  For example, &#x60;expand&#x3D;project,flag&#x60; includes the &#x60;project&#x60; and &#x60;flag&#x60; fields in the response. 
    # @param id [String] The approval request ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand A comma-separated list of fields to expand in the response. Supported fields are explained above.
    # @return [Array<(ExpandableApprovalRequestResponse, Integer, Hash)>] ExpandableApprovalRequestResponse data, response status code and response headers
    def get_approval_request_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApprovalsApi.get_approval_request ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApprovalsApi.get_approval_request"
      end
      # resource path
      local_var_path = '/api/v2/approval-requests/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'ExpandableApprovalRequestResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ApprovalsApi.get_approval_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApprovalsApi#get_approval_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List approval requests
    # Get all approval requests.  ### Filtering approvals  LaunchDarkly supports the `filter` query param for filtering, with the following fields:  - `notifyMemberIds` filters for only approvals that are assigned to a member in the specified list. For example: `filter=notifyMemberIds anyOf [\"memberId1\", \"memberId2\"]`. - `requestorId` filters for only approvals that correspond to the ID of the member who requested the approval. For example: `filter=requestorId equals 457034721476302714390214`. - `resourceId` filters for only approvals that correspond to the the specified resource identifier. For example: `filter=resourceId equals proj/my-project:env/my-environment:flag/my-flag`. - `resourceKind` filters for only approvals that correspond to the specified resource kind. For example: `filter=resourceKind equals flag`. Currently, `flag`, `segment`, and `aiConfig` resource kinds are supported. - `reviewStatus` filters for only approvals which correspond to the review status in the specified list. The possible values are `approved`, `declined`, and `pending`. For example: `filter=reviewStatus anyOf [\"pending\", \"approved\"]`. - `status` filters for only approvals which correspond to the status in the specified list. The possible values are `pending`, `scheduled`, `failed`, and `completed`. For example: `filter=status anyOf [\"pending\", \"scheduled\"]`.  You can also apply multiple filters at once. For example, setting `filter=projectKey equals my-project, reviewStatus anyOf [\"pending\",\"approved\"]` matches approval requests which correspond to the `my-project` project key, and a review status of either `pending` or `approved`.  ### Expanding approval response  LaunchDarkly supports the `expand` query param to include additional fields in the response, with the following fields:  - `flag` includes the flag the approval request belongs to - `project` includes the project the approval request belongs to - `environments` includes the environments the approval request relates to  For example, `expand=project,flag` includes the `project` and `flag` fields in the response. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter A comma-separated list of filters. Each filter is of the form &#x60;field operator value&#x60;. Supported fields are explained above.
    # @option opts [String] :expand A comma-separated list of fields to expand in the response. Supported fields are explained above.
    # @option opts [Integer] :limit The number of approvals to return. Defaults to 20. Maximum limit is 200.
    # @option opts [Integer] :offset Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;.
    # @return [ExpandableApprovalRequestsResponse]
    def get_approval_requests(opts = {})
      data, _status_code, _headers = get_approval_requests_with_http_info(opts)
      data
    end

    # List approval requests
    # Get all approval requests.  ### Filtering approvals  LaunchDarkly supports the &#x60;filter&#x60; query param for filtering, with the following fields:  - &#x60;notifyMemberIds&#x60; filters for only approvals that are assigned to a member in the specified list. For example: &#x60;filter&#x3D;notifyMemberIds anyOf [\&quot;memberId1\&quot;, \&quot;memberId2\&quot;]&#x60;. - &#x60;requestorId&#x60; filters for only approvals that correspond to the ID of the member who requested the approval. For example: &#x60;filter&#x3D;requestorId equals 457034721476302714390214&#x60;. - &#x60;resourceId&#x60; filters for only approvals that correspond to the the specified resource identifier. For example: &#x60;filter&#x3D;resourceId equals proj/my-project:env/my-environment:flag/my-flag&#x60;. - &#x60;resourceKind&#x60; filters for only approvals that correspond to the specified resource kind. For example: &#x60;filter&#x3D;resourceKind equals flag&#x60;. Currently, &#x60;flag&#x60;, &#x60;segment&#x60;, and &#x60;aiConfig&#x60; resource kinds are supported. - &#x60;reviewStatus&#x60; filters for only approvals which correspond to the review status in the specified list. The possible values are &#x60;approved&#x60;, &#x60;declined&#x60;, and &#x60;pending&#x60;. For example: &#x60;filter&#x3D;reviewStatus anyOf [\&quot;pending\&quot;, \&quot;approved\&quot;]&#x60;. - &#x60;status&#x60; filters for only approvals which correspond to the status in the specified list. The possible values are &#x60;pending&#x60;, &#x60;scheduled&#x60;, &#x60;failed&#x60;, and &#x60;completed&#x60;. For example: &#x60;filter&#x3D;status anyOf [\&quot;pending\&quot;, \&quot;scheduled\&quot;]&#x60;.  You can also apply multiple filters at once. For example, setting &#x60;filter&#x3D;projectKey equals my-project, reviewStatus anyOf [\&quot;pending\&quot;,\&quot;approved\&quot;]&#x60; matches approval requests which correspond to the &#x60;my-project&#x60; project key, and a review status of either &#x60;pending&#x60; or &#x60;approved&#x60;.  ### Expanding approval response  LaunchDarkly supports the &#x60;expand&#x60; query param to include additional fields in the response, with the following fields:  - &#x60;flag&#x60; includes the flag the approval request belongs to - &#x60;project&#x60; includes the project the approval request belongs to - &#x60;environments&#x60; includes the environments the approval request relates to  For example, &#x60;expand&#x3D;project,flag&#x60; includes the &#x60;project&#x60; and &#x60;flag&#x60; fields in the response. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter A comma-separated list of filters. Each filter is of the form &#x60;field operator value&#x60;. Supported fields are explained above.
    # @option opts [String] :expand A comma-separated list of fields to expand in the response. Supported fields are explained above.
    # @option opts [Integer] :limit The number of approvals to return. Defaults to 20. Maximum limit is 200.
    # @option opts [Integer] :offset Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;.
    # @return [Array<(ExpandableApprovalRequestsResponse, Integer, Hash)>] ExpandableApprovalRequestsResponse data, response status code and response headers
    def get_approval_requests_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApprovalsApi.get_approval_requests ...'
      end
      # resource path
      local_var_path = '/api/v2/approval-requests'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ExpandableApprovalRequestsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ApprovalsApi.get_approval_requests",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApprovalsApi#get_approval_requests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List approval requests for a flag
    # Get all approval requests for a feature flag.
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key
    # @param environment_key [String] The environment key
    # @param [Hash] opts the optional parameters
    # @return [FlagConfigApprovalRequestsResponse]
    def get_approvals_for_flag(project_key, feature_flag_key, environment_key, opts = {})
      data, _status_code, _headers = get_approvals_for_flag_with_http_info(project_key, feature_flag_key, environment_key, opts)
      data
    end

    # List approval requests for a flag
    # Get all approval requests for a feature flag.
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key
    # @param environment_key [String] The environment key
    # @param [Hash] opts the optional parameters
    # @return [Array<(FlagConfigApprovalRequestsResponse, Integer, Hash)>] FlagConfigApprovalRequestsResponse data, response status code and response headers
    def get_approvals_for_flag_with_http_info(project_key, feature_flag_key, environment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApprovalsApi.get_approvals_for_flag ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling ApprovalsApi.get_approvals_for_flag"
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling ApprovalsApi.get_approvals_for_flag"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling ApprovalsApi.get_approvals_for_flag"
      end
      # resource path
      local_var_path = '/api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s)).sub('{' + 'featureFlagKey' + '}', CGI.escape(feature_flag_key.to_s)).sub('{' + 'environmentKey' + '}', CGI.escape(environment_key.to_s))

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
      return_type = opts[:debug_return_type] || 'FlagConfigApprovalRequestsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ApprovalsApi.get_approvals_for_flag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApprovalsApi#get_approvals_for_flag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create approval request
    # Create an approval request.  This endpoint requires a list of `instructions`, in semantic patch format, that will be applied when the approval request is approved and applied.  ### Flags  If you are creating an approval request for a flag, you can use the following `instructions`:  - `addVariation` - `removeVariation` - `updateVariation` - `updateDefaultVariation`  For details on using these instructions, read [Update feature flag](https://launchdarkly.com/docs/api/feature-flags/patch-feature-flag).  To create an approval for a flag specific to an environment, use [Create approval request for a flag](https://launchdarkly.com/docs/api/approvals/post-approval-request-for-flag).  ### AI Configs  If you are creating an approval request for an AI Config, you can use the semantic patch instructions listed under [Update AI Config targeting](https://launchdarkly.com/docs/api/ai-configs-beta/patch-ai-config-targeting).  ### Segments  If you are creating an approval request for a segment, you can use the semantic patch instructions listed under [Patch segment](https://launchdarkly.com/docs/api/segments/patch-segment). 
    # @param create_approval_request_request [CreateApprovalRequestRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ApprovalRequestResponse]
    def post_approval_request(create_approval_request_request, opts = {})
      data, _status_code, _headers = post_approval_request_with_http_info(create_approval_request_request, opts)
      data
    end

    # Create approval request
    # Create an approval request.  This endpoint requires a list of &#x60;instructions&#x60;, in semantic patch format, that will be applied when the approval request is approved and applied.  ### Flags  If you are creating an approval request for a flag, you can use the following &#x60;instructions&#x60;:  - &#x60;addVariation&#x60; - &#x60;removeVariation&#x60; - &#x60;updateVariation&#x60; - &#x60;updateDefaultVariation&#x60;  For details on using these instructions, read [Update feature flag](https://launchdarkly.com/docs/api/feature-flags/patch-feature-flag).  To create an approval for a flag specific to an environment, use [Create approval request for a flag](https://launchdarkly.com/docs/api/approvals/post-approval-request-for-flag).  ### AI Configs  If you are creating an approval request for an AI Config, you can use the semantic patch instructions listed under [Update AI Config targeting](https://launchdarkly.com/docs/api/ai-configs-beta/patch-ai-config-targeting).  ### Segments  If you are creating an approval request for a segment, you can use the semantic patch instructions listed under [Patch segment](https://launchdarkly.com/docs/api/segments/patch-segment). 
    # @param create_approval_request_request [CreateApprovalRequestRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApprovalRequestResponse, Integer, Hash)>] ApprovalRequestResponse data, response status code and response headers
    def post_approval_request_with_http_info(create_approval_request_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApprovalsApi.post_approval_request ...'
      end
      # verify the required parameter 'create_approval_request_request' is set
      if @api_client.config.client_side_validation && create_approval_request_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_approval_request_request' when calling ApprovalsApi.post_approval_request"
      end
      # resource path
      local_var_path = '/api/v2/approval-requests'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_approval_request_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ApprovalRequestResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ApprovalsApi.post_approval_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApprovalsApi#post_approval_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Apply approval request
    # Apply an approval request that has been approved. This endpoint works with any approval requests.
    # @param id [String] The approval request ID
    # @param post_approval_request_apply_request [PostApprovalRequestApplyRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ApprovalRequestResponse]
    def post_approval_request_apply(id, post_approval_request_apply_request, opts = {})
      data, _status_code, _headers = post_approval_request_apply_with_http_info(id, post_approval_request_apply_request, opts)
      data
    end

    # Apply approval request
    # Apply an approval request that has been approved. This endpoint works with any approval requests.
    # @param id [String] The approval request ID
    # @param post_approval_request_apply_request [PostApprovalRequestApplyRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApprovalRequestResponse, Integer, Hash)>] ApprovalRequestResponse data, response status code and response headers
    def post_approval_request_apply_with_http_info(id, post_approval_request_apply_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApprovalsApi.post_approval_request_apply ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApprovalsApi.post_approval_request_apply"
      end
      # verify the required parameter 'post_approval_request_apply_request' is set
      if @api_client.config.client_side_validation && post_approval_request_apply_request.nil?
        fail ArgumentError, "Missing the required parameter 'post_approval_request_apply_request' when calling ApprovalsApi.post_approval_request_apply"
      end
      # resource path
      local_var_path = '/api/v2/approval-requests/{id}/apply'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_approval_request_apply_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ApprovalRequestResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ApprovalsApi.post_approval_request_apply",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApprovalsApi#post_approval_request_apply\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Apply approval request for a flag
    # Apply an approval request that has been approved. This endpoint requires a feature flag key, and can only be used for applying approval requests on flags.
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key
    # @param environment_key [String] The environment key
    # @param id [String] The feature flag approval request ID
    # @param post_approval_request_apply_request [PostApprovalRequestApplyRequest] 
    # @param [Hash] opts the optional parameters
    # @return [FlagConfigApprovalRequestResponse]
    def post_approval_request_apply_for_flag(project_key, feature_flag_key, environment_key, id, post_approval_request_apply_request, opts = {})
      data, _status_code, _headers = post_approval_request_apply_for_flag_with_http_info(project_key, feature_flag_key, environment_key, id, post_approval_request_apply_request, opts)
      data
    end

    # Apply approval request for a flag
    # Apply an approval request that has been approved. This endpoint requires a feature flag key, and can only be used for applying approval requests on flags.
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key
    # @param environment_key [String] The environment key
    # @param id [String] The feature flag approval request ID
    # @param post_approval_request_apply_request [PostApprovalRequestApplyRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FlagConfigApprovalRequestResponse, Integer, Hash)>] FlagConfigApprovalRequestResponse data, response status code and response headers
    def post_approval_request_apply_for_flag_with_http_info(project_key, feature_flag_key, environment_key, id, post_approval_request_apply_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApprovalsApi.post_approval_request_apply_for_flag ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling ApprovalsApi.post_approval_request_apply_for_flag"
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling ApprovalsApi.post_approval_request_apply_for_flag"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling ApprovalsApi.post_approval_request_apply_for_flag"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApprovalsApi.post_approval_request_apply_for_flag"
      end
      # verify the required parameter 'post_approval_request_apply_request' is set
      if @api_client.config.client_side_validation && post_approval_request_apply_request.nil?
        fail ArgumentError, "Missing the required parameter 'post_approval_request_apply_request' when calling ApprovalsApi.post_approval_request_apply_for_flag"
      end
      # resource path
      local_var_path = '/api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{id}/apply'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s)).sub('{' + 'featureFlagKey' + '}', CGI.escape(feature_flag_key.to_s)).sub('{' + 'environmentKey' + '}', CGI.escape(environment_key.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_approval_request_apply_request)

      # return_type
      return_type = opts[:debug_return_type] || 'FlagConfigApprovalRequestResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ApprovalsApi.post_approval_request_apply_for_flag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApprovalsApi#post_approval_request_apply_for_flag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create approval request for a flag
    # Create an approval request for a feature flag.
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key
    # @param environment_key [String] The environment key
    # @param create_flag_config_approval_request_request [CreateFlagConfigApprovalRequestRequest] 
    # @param [Hash] opts the optional parameters
    # @return [FlagConfigApprovalRequestResponse]
    def post_approval_request_for_flag(project_key, feature_flag_key, environment_key, create_flag_config_approval_request_request, opts = {})
      data, _status_code, _headers = post_approval_request_for_flag_with_http_info(project_key, feature_flag_key, environment_key, create_flag_config_approval_request_request, opts)
      data
    end

    # Create approval request for a flag
    # Create an approval request for a feature flag.
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key
    # @param environment_key [String] The environment key
    # @param create_flag_config_approval_request_request [CreateFlagConfigApprovalRequestRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FlagConfigApprovalRequestResponse, Integer, Hash)>] FlagConfigApprovalRequestResponse data, response status code and response headers
    def post_approval_request_for_flag_with_http_info(project_key, feature_flag_key, environment_key, create_flag_config_approval_request_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApprovalsApi.post_approval_request_for_flag ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling ApprovalsApi.post_approval_request_for_flag"
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling ApprovalsApi.post_approval_request_for_flag"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling ApprovalsApi.post_approval_request_for_flag"
      end
      # verify the required parameter 'create_flag_config_approval_request_request' is set
      if @api_client.config.client_side_validation && create_flag_config_approval_request_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_flag_config_approval_request_request' when calling ApprovalsApi.post_approval_request_for_flag"
      end
      # resource path
      local_var_path = '/api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s)).sub('{' + 'featureFlagKey' + '}', CGI.escape(feature_flag_key.to_s)).sub('{' + 'environmentKey' + '}', CGI.escape(environment_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_flag_config_approval_request_request)

      # return_type
      return_type = opts[:debug_return_type] || 'FlagConfigApprovalRequestResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ApprovalsApi.post_approval_request_for_flag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApprovalsApi#post_approval_request_for_flag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Review approval request
    # Review an approval request by approving or denying changes.
    # @param id [String] The approval request ID
    # @param post_approval_request_review_request [PostApprovalRequestReviewRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ApprovalRequestResponse]
    def post_approval_request_review(id, post_approval_request_review_request, opts = {})
      data, _status_code, _headers = post_approval_request_review_with_http_info(id, post_approval_request_review_request, opts)
      data
    end

    # Review approval request
    # Review an approval request by approving or denying changes.
    # @param id [String] The approval request ID
    # @param post_approval_request_review_request [PostApprovalRequestReviewRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApprovalRequestResponse, Integer, Hash)>] ApprovalRequestResponse data, response status code and response headers
    def post_approval_request_review_with_http_info(id, post_approval_request_review_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApprovalsApi.post_approval_request_review ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApprovalsApi.post_approval_request_review"
      end
      # verify the required parameter 'post_approval_request_review_request' is set
      if @api_client.config.client_side_validation && post_approval_request_review_request.nil?
        fail ArgumentError, "Missing the required parameter 'post_approval_request_review_request' when calling ApprovalsApi.post_approval_request_review"
      end
      # resource path
      local_var_path = '/api/v2/approval-requests/{id}/reviews'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_approval_request_review_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ApprovalRequestResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ApprovalsApi.post_approval_request_review",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApprovalsApi#post_approval_request_review\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Review approval request for a flag
    # Review an approval request by approving or denying changes.
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key
    # @param environment_key [String] The environment key
    # @param id [String] The feature flag approval request ID
    # @param post_approval_request_review_request [PostApprovalRequestReviewRequest] 
    # @param [Hash] opts the optional parameters
    # @return [FlagConfigApprovalRequestResponse]
    def post_approval_request_review_for_flag(project_key, feature_flag_key, environment_key, id, post_approval_request_review_request, opts = {})
      data, _status_code, _headers = post_approval_request_review_for_flag_with_http_info(project_key, feature_flag_key, environment_key, id, post_approval_request_review_request, opts)
      data
    end

    # Review approval request for a flag
    # Review an approval request by approving or denying changes.
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key
    # @param environment_key [String] The environment key
    # @param id [String] The feature flag approval request ID
    # @param post_approval_request_review_request [PostApprovalRequestReviewRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FlagConfigApprovalRequestResponse, Integer, Hash)>] FlagConfigApprovalRequestResponse data, response status code and response headers
    def post_approval_request_review_for_flag_with_http_info(project_key, feature_flag_key, environment_key, id, post_approval_request_review_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApprovalsApi.post_approval_request_review_for_flag ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling ApprovalsApi.post_approval_request_review_for_flag"
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling ApprovalsApi.post_approval_request_review_for_flag"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling ApprovalsApi.post_approval_request_review_for_flag"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApprovalsApi.post_approval_request_review_for_flag"
      end
      # verify the required parameter 'post_approval_request_review_request' is set
      if @api_client.config.client_side_validation && post_approval_request_review_request.nil?
        fail ArgumentError, "Missing the required parameter 'post_approval_request_review_request' when calling ApprovalsApi.post_approval_request_review_for_flag"
      end
      # resource path
      local_var_path = '/api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{id}/reviews'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s)).sub('{' + 'featureFlagKey' + '}', CGI.escape(feature_flag_key.to_s)).sub('{' + 'environmentKey' + '}', CGI.escape(environment_key.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_approval_request_review_request)

      # return_type
      return_type = opts[:debug_return_type] || 'FlagConfigApprovalRequestResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ApprovalsApi.post_approval_request_review_for_flag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApprovalsApi#post_approval_request_review_for_flag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create approval request to copy flag configurations across environments
    # Create an approval request to copy a feature flag's configuration across environments.
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key
    # @param environment_key [String] The environment key for the target environment
    # @param create_copy_flag_config_approval_request_request [CreateCopyFlagConfigApprovalRequestRequest] 
    # @param [Hash] opts the optional parameters
    # @return [FlagConfigApprovalRequestResponse]
    def post_flag_copy_config_approval_request(project_key, feature_flag_key, environment_key, create_copy_flag_config_approval_request_request, opts = {})
      data, _status_code, _headers = post_flag_copy_config_approval_request_with_http_info(project_key, feature_flag_key, environment_key, create_copy_flag_config_approval_request_request, opts)
      data
    end

    # Create approval request to copy flag configurations across environments
    # Create an approval request to copy a feature flag&#39;s configuration across environments.
    # @param project_key [String] The project key
    # @param feature_flag_key [String] The feature flag key
    # @param environment_key [String] The environment key for the target environment
    # @param create_copy_flag_config_approval_request_request [CreateCopyFlagConfigApprovalRequestRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FlagConfigApprovalRequestResponse, Integer, Hash)>] FlagConfigApprovalRequestResponse data, response status code and response headers
    def post_flag_copy_config_approval_request_with_http_info(project_key, feature_flag_key, environment_key, create_copy_flag_config_approval_request_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApprovalsApi.post_flag_copy_config_approval_request ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling ApprovalsApi.post_flag_copy_config_approval_request"
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling ApprovalsApi.post_flag_copy_config_approval_request"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling ApprovalsApi.post_flag_copy_config_approval_request"
      end
      # verify the required parameter 'create_copy_flag_config_approval_request_request' is set
      if @api_client.config.client_side_validation && create_copy_flag_config_approval_request_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_copy_flag_config_approval_request_request' when calling ApprovalsApi.post_flag_copy_config_approval_request"
      end
      # resource path
      local_var_path = '/api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests-flag-copy'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s)).sub('{' + 'featureFlagKey' + '}', CGI.escape(feature_flag_key.to_s)).sub('{' + 'environmentKey' + '}', CGI.escape(environment_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_copy_flag_config_approval_request_request)

      # return_type
      return_type = opts[:debug_return_type] || 'FlagConfigApprovalRequestResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ApprovalsApi.post_flag_copy_config_approval_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApprovalsApi#post_flag_copy_config_approval_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
