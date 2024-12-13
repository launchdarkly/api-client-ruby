=begin
#LaunchDarkly REST API

## Overview  ## Authentication  LaunchDarkly's REST API uses the HTTPS protocol with a minimum TLS version of 1.2.  All REST API resources are authenticated with either [personal or service access tokens](https://docs.launchdarkly.com/home/account/api), or session cookies. Other authentication mechanisms are not supported. You can manage personal access tokens on your [**Authorization**](https://app.launchdarkly.com/settings/authorization) page in the LaunchDarkly UI.  LaunchDarkly also has SDK keys, mobile keys, and client-side IDs that are used by our server-side SDKs, mobile SDKs, and JavaScript-based SDKs, respectively. **These keys cannot be used to access our REST API**. These keys are environment-specific, and can only perform read-only operations such as fetching feature flag settings.  | Auth mechanism                                                                                  | Allowed resources                                                                                     | Use cases                                          | | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | -------------------------------------------------- | | [Personal or service access tokens](https://docs.launchdarkly.com/home/account/api) | Can be customized on a per-token basis                                                                | Building scripts, custom integrations, data export. | | SDK keys                                                                                        | Can only access read-only resources specific to server-side SDKs. Restricted to a single environment. | Server-side SDKs                     | | Mobile keys                                                                                     | Can only access read-only resources specific to mobile SDKs, and only for flags marked available to mobile keys. Restricted to a single environment.           | Mobile SDKs                                        | | Client-side ID                                                                                  | Can only access read-only resources specific to JavaScript-based client-side SDKs, and only for flags marked available to client-side. Restricted to a single environment.           | Client-side JavaScript                             |  > #### Keep your access tokens and SDK keys private > > Access tokens should _never_ be exposed in untrusted contexts. Never put an access token in client-side JavaScript, or embed it in a mobile application. LaunchDarkly has special mobile keys that you can embed in mobile apps. If you accidentally expose an access token or SDK key, you can reset it from your [**Authorization**](https://app.launchdarkly.com/settings/authorization) page. > > The client-side ID is safe to embed in untrusted contexts. It's designed for use in client-side JavaScript.  ### Authentication using request header  The preferred way to authenticate with the API is by adding an `Authorization` header containing your access token to your requests. The value of the `Authorization` header must be your access token.  Manage personal access tokens from the [**Authorization**](https://app.launchdarkly.com/settings/authorization) page.  ### Authentication using session cookie  For testing purposes, you can make API calls directly from your web browser. If you are logged in to the LaunchDarkly application, the API will use your existing session to authenticate calls.  If you have a [role](https://docs.launchdarkly.com/home/account/built-in-roles) other than Admin, or have a [custom role](https://docs.launchdarkly.com/home/account/custom-roles) defined, you may not have permission to perform some API calls. You will receive a `401` response code in that case.  > ### Modifying the Origin header causes an error > > LaunchDarkly validates that the Origin header for any API request authenticated by a session cookie matches the expected Origin header. The expected Origin header is `https://app.launchdarkly.com`. > > If the Origin header does not match what's expected, LaunchDarkly returns an error. This error can prevent the LaunchDarkly app from working correctly. > > Any browser extension that intentionally changes the Origin header can cause this problem. For example, the `Allow-Control-Allow-Origin: *` Chrome extension changes the Origin header to `http://evil.com` and causes the app to fail. > > To prevent this error, do not modify your Origin header. > > LaunchDarkly does not require origin matching when authenticating with an access token, so this issue does not affect normal API usage.  ## Representations  All resources expect and return JSON response bodies. Error responses also send a JSON body. To learn more about the error format of the API, read [Errors](/#section/Overview/Errors).  In practice this means that you always get a response with a `Content-Type` header set to `application/json`.  In addition, request bodies for `PATCH`, `POST`, and `PUT` requests must be encoded as JSON with a `Content-Type` header set to `application/json`.  ### Summary and detailed representations  When you fetch a list of resources, the response includes only the most important attributes of each resource. This is a _summary representation_ of the resource. When you fetch an individual resource, such as a single feature flag, you receive a _detailed representation_ of the resource.  The best way to find a detailed representation is to follow links. Every summary representation includes a link to its detailed representation.  ### Expanding responses  Sometimes the detailed representation of a resource does not include all of the attributes of the resource by default. If this is the case, the request method will clearly document this and describe which attributes you can include in an expanded response.  To include the additional attributes, append the `expand` request parameter to your request and add a comma-separated list of the attributes to include. For example, when you append `?expand=members,maintainers` to the [Get team](/tag/Teams#operation/getTeam) endpoint, the expanded response includes both of these attributes.  ### Links and addressability  The best way to navigate the API is by following links. These are attributes in representations that link to other resources. The API always uses the same format for links:  - Links to other resources within the API are encapsulated in a `_links` object - If the resource has a corresponding link to HTML content on the site, it is stored in a special `_site` link  Each link has two attributes:  - An `href`, which contains the URL - A `type`, which describes the content type  For example, a feature resource might return the following:  ```json {   \"_links\": {     \"parent\": {       \"href\": \"/api/features\",       \"type\": \"application/json\"     },     \"self\": {       \"href\": \"/api/features/sort.order\",       \"type\": \"application/json\"     }   },   \"_site\": {     \"href\": \"/features/sort.order\",     \"type\": \"text/html\"   } } ```  From this, you can navigate to the parent collection of features by following the `parent` link, or navigate to the site page for the feature by following the `_site` link.  Collections are always represented as a JSON object with an `items` attribute containing an array of representations. Like all other representations, collections have `_links` defined at the top level.  Paginated collections include `first`, `last`, `next`, and `prev` links containing a URL with the respective set of elements in the collection.  ## Updates  Resources that accept partial updates use the `PATCH` verb. Most resources support the [JSON patch](/reference#updates-using-json-patch) format. Some resources also support the [JSON merge patch](/reference#updates-using-json-merge-patch) format, and some resources support the [semantic patch](/reference#updates-using-semantic-patch) format, which is a way to specify the modifications to perform as a set of executable instructions. Each resource supports optional [comments](/reference#updates-with-comments) that you can submit with updates. Comments appear in outgoing webhooks, the audit log, and other integrations.  When a resource supports both JSON patch and semantic patch, we document both in the request method. However, the specific request body fields and descriptions included in our documentation only match one type of patch or the other.  ### Updates using JSON patch  [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) is a way to specify the modifications to perform on a resource. JSON patch uses paths and a limited set of operations to describe how to transform the current state of the resource into a new state. JSON patch documents are always arrays, where each element contains an operation, a path to the field to update, and the new value.  For example, in this feature flag representation:  ```json {     \"name\": \"New recommendations engine\",     \"key\": \"engine.enable\",     \"description\": \"This is the description\",     ... } ``` You can change the feature flag's description with the following patch document:  ```json [{ \"op\": \"replace\", \"path\": \"/description\", \"value\": \"This is the new description\" }] ```  You can specify multiple modifications to perform in a single request. You can also test that certain preconditions are met before applying the patch:  ```json [   { \"op\": \"test\", \"path\": \"/version\", \"value\": 10 },   { \"op\": \"replace\", \"path\": \"/description\", \"value\": \"The new description\" } ] ```  The above patch request tests whether the feature flag's `version` is `10`, and if so, changes the feature flag's description.  Attributes that are not editable, such as a resource's `_links`, have names that start with an underscore.  ### Updates using JSON merge patch  [JSON merge patch](https://datatracker.ietf.org/doc/html/rfc7386) is another format for specifying the modifications to perform on a resource. JSON merge patch is less expressive than JSON patch. However, in many cases it is simpler to construct a merge patch document. For example, you can change a feature flag's description with the following merge patch document:  ```json {   \"description\": \"New flag description\" } ```  ### Updates using semantic patch  Some resources support the semantic patch format. A semantic patch is a way to specify the modifications to perform on a resource as a set of executable instructions.  Semantic patch allows you to be explicit about intent using precise, custom instructions. In many cases, you can define semantic patch instructions independently of the current state of the resource. This can be useful when defining a change that may be applied at a future date.  To make a semantic patch request, you must append `domain-model=launchdarkly.semanticpatch` to your `Content-Type` header.  Here's how:  ``` Content-Type: application/json; domain-model=launchdarkly.semanticpatch ```  If you call a semantic patch resource without this header, you will receive a `400` response because your semantic patch will be interpreted as a JSON patch.  The body of a semantic patch request takes the following properties:  * `comment` (string): (Optional) A description of the update. * `environmentKey` (string): (Required for some resources only) The environment key. * `instructions` (array): (Required) A list of actions the update should perform. Each action in the list must be an object with a `kind` property that indicates the instruction. If the instruction requires parameters, you must include those parameters as additional fields in the object. The documentation for each resource that supports semantic patch includes the available instructions and any additional parameters.  For example:  ```json {   \"comment\": \"optional comment\",   \"instructions\": [ {\"kind\": \"turnFlagOn\"} ] } ```  Semantic patches are not applied partially; either all of the instructions are applied or none of them are. If **any** instruction is invalid, the endpoint returns an error and will not change the resource. If all instructions are valid, the request succeeds and the resources are updated if necessary, or left unchanged if they are already in the state you request.  ### Updates with comments  You can submit optional comments with `PATCH` changes.  To submit a comment along with a JSON patch document, use the following format:  ```json {   \"comment\": \"This is a comment string\",   \"patch\": [{ \"op\": \"replace\", \"path\": \"/description\", \"value\": \"The new description\" }] } ```  To submit a comment along with a JSON merge patch document, use the following format:  ```json {   \"comment\": \"This is a comment string\",   \"merge\": { \"description\": \"New flag description\" } } ```  To submit a comment along with a semantic patch, use the following format:  ```json {   \"comment\": \"This is a comment string\",   \"instructions\": [ {\"kind\": \"turnFlagOn\"} ] } ```  ## Errors  The API always returns errors in a common format. Here's an example:  ```json {   \"code\": \"invalid_request\",   \"message\": \"A feature with that key already exists\",   \"id\": \"30ce6058-87da-11e4-b116-123b93f75cba\" } ```  The `code` indicates the general class of error. The `message` is a human-readable explanation of what went wrong. The `id` is a unique identifier. Use it when you're working with LaunchDarkly Support to debug a problem with a specific API call.  ### HTTP status error response codes  | Code | Definition        | Description                                                                                       | Possible Solution                                                | | ---- | ----------------- | ------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- | | 400  | Invalid request       | The request cannot be understood.                                    | Ensure JSON syntax in request body is correct.                   | | 401  | Invalid access token      | Requestor is unauthorized or does not have permission for this API call.                                                | Ensure your API access token is valid and has the appropriate permissions.                                     | | 403  | Forbidden         | Requestor does not have access to this resource.                                                | Ensure that the account member or access token has proper permissions set. | | 404  | Invalid resource identifier | The requested resource is not valid. | Ensure that the resource is correctly identified by ID or key. | | 405  | Method not allowed | The request method is not allowed on this resource. | Ensure that the HTTP verb is correct. | | 409  | Conflict          | The API request can not be completed because it conflicts with a concurrent API request. | Retry your request.                                              | | 422  | Unprocessable entity | The API request can not be completed because the update description can not be understood. | Ensure that the request body is correct for the type of patch you are using, either JSON patch or semantic patch. | 429  | Too many requests | Read [Rate limiting](/#section/Overview/Rate-limiting).                                               | Wait and try again later.                                        |  ## CORS  The LaunchDarkly API supports Cross Origin Resource Sharing (CORS) for AJAX requests from any origin. If an `Origin` header is given in a request, it will be echoed as an explicitly allowed origin. Otherwise the request returns a wildcard, `Access-Control-Allow-Origin: *`. For more information on CORS, read the [CORS W3C Recommendation](http://www.w3.org/TR/cors). Example CORS headers might look like:  ```http Access-Control-Allow-Headers: Accept, Content-Type, Content-Length, Accept-Encoding, Authorization Access-Control-Allow-Methods: OPTIONS, GET, DELETE, PATCH Access-Control-Allow-Origin: * Access-Control-Max-Age: 300 ```  You can make authenticated CORS calls just as you would make same-origin calls, using either [token or session-based authentication](/#section/Overview/Authentication). If you are using session authentication, you should set the `withCredentials` property for your `xhr` request to `true`. You should never expose your access tokens to untrusted entities.  ## Rate limiting  We use several rate limiting strategies to ensure the availability of our APIs. Rate-limited calls to our APIs return a `429` status code. Calls to our APIs include headers indicating the current rate limit status. The specific headers returned depend on the API route being called. The limits differ based on the route, authentication mechanism, and other factors. Routes that are not rate limited may not contain any of the headers described below.  > ### Rate limiting and SDKs > > LaunchDarkly SDKs are never rate limited and do not use the API endpoints defined here. LaunchDarkly uses a different set of approaches, including streaming/server-sent events and a global CDN, to ensure availability to the routes used by LaunchDarkly SDKs.  ### Global rate limits  Authenticated requests are subject to a global limit. This is the maximum number of calls that your account can make to the API per ten seconds. All service and personal access tokens on the account share this limit, so exceeding the limit with one access token will impact other tokens. Calls that are subject to global rate limits may return the headers below:  | Header name                    | Description                                                                      | | ------------------------------ | -------------------------------------------------------------------------------- | | `X-Ratelimit-Global-Remaining` | The maximum number of requests the account is permitted to make per ten seconds. | | `X-Ratelimit-Reset`            | The time at which the current rate limit window resets in epoch milliseconds.    |  We do not publicly document the specific number of calls that can be made globally. This limit may change, and we encourage clients to program against the specification, relying on the two headers defined above, rather than hardcoding to the current limit.  ### Route-level rate limits  Some authenticated routes have custom rate limits. These also reset every ten seconds. Any service or personal access tokens hitting the same route share this limit, so exceeding the limit with one access token may impact other tokens. Calls that are subject to route-level rate limits return the headers below:  | Header name                   | Description                                                                                           | | ----------------------------- | ----------------------------------------------------------------------------------------------------- | | `X-Ratelimit-Route-Remaining` | The maximum number of requests to the current route the account is permitted to make per ten seconds. | | `X-Ratelimit-Reset`           | The time at which the current rate limit window resets in epoch milliseconds.                         |  A _route_ represents a specific URL pattern and verb. For example, the [Delete environment](/tag/Environments#operation/deleteEnvironment) endpoint is considered a single route, and each call to delete an environment counts against your route-level rate limit for that route.  We do not publicly document the specific number of calls that an account can make to each endpoint per ten seconds. These limits may change, and we encourage clients to program against the specification, relying on the two headers defined above, rather than hardcoding to the current limits.  ### IP-based rate limiting  We also employ IP-based rate limiting on some API routes. If you hit an IP-based rate limit, your API response will include a `Retry-After` header indicating how long to wait before re-trying the call. Clients must wait at least `Retry-After` seconds before making additional calls to our API, and should employ jitter and backoff strategies to avoid triggering rate limits again.  ## OpenAPI (Swagger) and client libraries  We have a [complete OpenAPI (Swagger) specification](https://app.launchdarkly.com/api/v2/openapi.json) for our API.  We auto-generate multiple client libraries based on our OpenAPI specification. To learn more, visit the [collection of client libraries on GitHub](https://github.com/search?q=topic%3Alaunchdarkly-api+org%3Alaunchdarkly&type=Repositories). You can also use this specification to generate client libraries to interact with our REST API in your language of choice.  Our OpenAPI specification is supported by several API-based tools such as Postman and Insomnia. In many cases, you can directly import our specification to explore our APIs.  ## Method overriding  Some firewalls and HTTP clients restrict the use of verbs other than `GET` and `POST`. In those environments, our API endpoints that use `DELETE`, `PATCH`, and `PUT` verbs are inaccessible.  To avoid this issue, our API supports the `X-HTTP-Method-Override` header, allowing clients to \"tunnel\" `DELETE`, `PATCH`, and `PUT` requests using a `POST` request.  For example, to call a `PATCH` endpoint using a `POST` request, you can include `X-HTTP-Method-Override:PATCH` as a header.  ## Beta resources  We sometimes release new API resources in **beta** status before we release them with general availability.  Resources that are in beta are still undergoing testing and development. They may change without notice, including becoming backwards incompatible.  We try to promote resources into general availability as quickly as possible. This happens after sufficient testing and when we're satisfied that we no longer need to make backwards-incompatible changes.  We mark beta resources with a \"Beta\" callout in our documentation, pictured below:  > ### This feature is in beta > > To use this feature, pass in a header including the `LD-API-Version` key with value set to `beta`. Use this header with each call. To learn more, read [Beta resources](/#section/Overview/Beta-resources). > > Resources that are in beta are still undergoing testing and development. They may change without notice, including becoming backwards incompatible.  ### Using beta resources  To use a beta resource, you must include a header in the request. If you call a beta resource without this header, you receive a `403` response.  Use this header:  ``` LD-API-Version: beta ```  ## Federal environments  The version of LaunchDarkly that is available on domains controlled by the United States government is different from the version of LaunchDarkly available to the general public. If you are an employee or contractor for a United States federal agency and use LaunchDarkly in your work, you likely use the federal instance of LaunchDarkly.  If you are working in the federal instance of LaunchDarkly, the base URI for each request is `https://app.launchdarkly.us`. In the \"Try it\" sandbox for each request, click the request path to view the complete resource path for the federal environment.  To learn more, read [LaunchDarkly in federal environments](https://docs.launchdarkly.com/home/infrastructure/federal).  ## Versioning  We try hard to keep our REST API backwards compatible, but we occasionally have to make backwards-incompatible changes in the process of shipping new features. These breaking changes can cause unexpected behavior if you don't prepare for them accordingly.  Updates to our REST API include support for the latest features in LaunchDarkly. We also release a new version of our REST API every time we make a breaking change. We provide simultaneous support for multiple API versions so you can migrate from your current API version to a new version at your own pace.  ### Setting the API version per request  You can set the API version on a specific request by sending an `LD-API-Version` header, as shown in the example below:  ``` LD-API-Version: 20240415 ```  The header value is the version number of the API version you would like to request. The number for each version corresponds to the date the version was released in `yyyymmdd` format. In the example above the version `20240415` corresponds to April 15, 2024.  ### Setting the API version per access token  When you create an access token, you must specify a specific version of the API to use. This ensures that integrations using this token cannot be broken by version changes.  Tokens created before versioning was released have their version set to `20160426`, which is the version of the API that existed before the current versioning scheme, so that they continue working the same way they did before versioning.  If you would like to upgrade your integration to use a new API version, you can explicitly set the header described above.  > ### Best practice: Set the header for every client or integration > > We recommend that you set the API version header explicitly in any client or integration you build. > > Only rely on the access token API version during manual testing.  ### API version changelog  |<div style=\"width:75px\">Version</div> | Changes | End of life (EOL) |---|---|---| | `20240415` | <ul><li>Changed several endpoints from unpaginated to paginated. Use the `limit` and `offset` query parameters to page through the results.</li> <li>Changed the [list access tokens](/tag/Access-tokens#operation/getTokens) endpoint: <ul><li>Response is now paginated with a default limit of `25`</li></ul></li> <li>Changed the [list account members](/tag/Account-members#operation/getMembers) endpoint: <ul><li>The `accessCheck` filter is no longer available</li></ul></li> <li>Changed the [list custom roles](/tag/Custom-roles#operation/getCustomRoles) endpoint: <ul><li>Response is now paginated with a default limit of `20`</li></ul></li> <li>Changed the [list feature flags](/tag/Feature-flags#operation/getFeatureFlags) endpoint: <ul><li>Response is now paginated with a default limit of `20`</li><li>The `environments` field is now only returned if the request is filtered by environment, using the `filterEnv` query parameter</li><li>The `filterEnv` query parameter supports a maximum of three environments</li><li>The `followerId`, `hasDataExport`, `status`, `contextKindTargeted`, and `segmentTargeted` filters are no longer available</li></ul></li> <li>Changed the [list segments](/tag/Segments#operation/getSegments) endpoint: <ul><li>Response is now paginated with a default limit of `20`</li></ul></li> <li>Changed the [list teams](/tag/Teams#operation/getTeams) endpoint: <ul><li>The `expand` parameter no longer supports including `projects` or `roles`</li><li>In paginated results, the maximum page size is now 100</li></ul></li> <li>Changed the [get workflows](/tag/Workflows#operation/getWorkflows) endpoint: <ul><li>Response is now paginated with a default limit of `20`</li><li>The `_conflicts` field in the response is no longer available</li></ul></li> </ul>  | Current | | `20220603` | <ul><li>Changed the [list projects](/tag/Projects#operation/getProjects) return value:<ul><li>Response is now paginated with a default limit of `20`.</li><li>Added support for filter and sort.</li><li>The project `environments` field is now expandable. This field is omitted by default.</li></ul></li><li>Changed the [get project](/tag/Projects#operation/getProject) return value:<ul><li>The `environments` field is now expandable. This field is omitted by default.</li></ul></li></ul> | 2025-04-15 | | `20210729` | <ul><li>Changed the [create approval request](/tag/Approvals#operation/postApprovalRequest) return value. It now returns HTTP Status Code `201` instead of `200`.</li><li> Changed the [get users](/tag/Users#operation/getUser) return value. It now returns a user record, not a user. </li><li>Added additional optional fields to environment, segments, flags, members, and segments, including the ability to create big segments. </li><li> Added default values for flag variations when new environments are created. </li><li>Added filtering and pagination for getting flags and members, including `limit`, `number`, `filter`, and `sort` query parameters. </li><li>Added endpoints for expiring user targets for flags and segments, scheduled changes, access tokens, Relay Proxy configuration, integrations and subscriptions, and approvals. </li></ul> | 2023-06-03 | | `20191212` | <ul><li>[List feature flags](/tag/Feature-flags#operation/getFeatureFlags) now defaults to sending summaries of feature flag configurations, equivalent to setting the query parameter `summary=true`. Summaries omit flag targeting rules and individual user targets from the payload. </li><li> Added endpoints for flags, flag status, projects, environments, audit logs, members, users, custom roles, segments, usage, streams, events, and data export. </li></ul> | 2022-07-29 | | `20160426` | <ul><li>Initial versioning of API. Tokens created before versioning have their version set to this.</li></ul> | 2020-12-12 |  To learn more about how EOL is determined, read LaunchDarkly's [End of Life (EOL) Policy](https://launchdarkly.com/policies/end-of-life-policy/). 

The version of the OpenAPI document: 2.0
Contact: support@launchdarkly.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

require 'cgi'

module LaunchDarklyApi
  class AccountUsageBetaApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get data export events usage
    # Get a time-series array of the number of monthly data export events from your account. The granularity is always daily, with a maximum of 31 days.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month.
    # @option opts [String] :to The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time.
    # @option opts [String] :project_key A project key. If specified, &#x60;environmentKey&#x60; is required and results apply to the corresponding environment in this project.
    # @option opts [String] :environment_key An environment key. If specified, &#x60;projectKey&#x60; is required and results apply to the corresponding environment in this project.
    # @return [SeriesIntervalsRep]
    def get_data_export_events_usage(opts = {})
      data, _status_code, _headers = get_data_export_events_usage_with_http_info(opts)
      data
    end

    # Get data export events usage
    # Get a time-series array of the number of monthly data export events from your account. The granularity is always daily, with a maximum of 31 days.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month.
    # @option opts [String] :to The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time.
    # @option opts [String] :project_key A project key. If specified, &#x60;environmentKey&#x60; is required and results apply to the corresponding environment in this project.
    # @option opts [String] :environment_key An environment key. If specified, &#x60;projectKey&#x60; is required and results apply to the corresponding environment in this project.
    # @return [Array<(SeriesIntervalsRep, Integer, Hash)>] SeriesIntervalsRep data, response status code and response headers
    def get_data_export_events_usage_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountUsageBetaApi.get_data_export_events_usage ...'
      end
      # resource path
      local_var_path = '/api/v2/usage/data-export-events'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'projectKey'] = opts[:'project_key'] if !opts[:'project_key'].nil?
      query_params[:'environmentKey'] = opts[:'environment_key'] if !opts[:'environment_key'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SeriesIntervalsRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"AccountUsageBetaApi.get_data_export_events_usage",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountUsageBetaApi#get_data_export_events_usage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get evaluations usage
    # Get time-series arrays of the number of times a flag is evaluated, broken down by the variation that resulted from that evaluation. The granularity of the data depends on the age of the data requested. If the requested range is within the past two hours, minutely data is returned. If it is within the last two days, hourly data is returned. Otherwise, daily data is returned.
    # @param project_key [String] The project key
    # @param environment_key [String] The environment key
    # @param feature_flag_key [String] The feature flag key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The series of data returned starts from this timestamp. Defaults to 30 days ago.
    # @option opts [String] :to The series of data returned ends at this timestamp. Defaults to the current time.
    # @option opts [String] :tz The timezone to use for breaks between days when returning daily data.
    # @return [SeriesListRep]
    def get_evaluations_usage(project_key, environment_key, feature_flag_key, opts = {})
      data, _status_code, _headers = get_evaluations_usage_with_http_info(project_key, environment_key, feature_flag_key, opts)
      data
    end

    # Get evaluations usage
    # Get time-series arrays of the number of times a flag is evaluated, broken down by the variation that resulted from that evaluation. The granularity of the data depends on the age of the data requested. If the requested range is within the past two hours, minutely data is returned. If it is within the last two days, hourly data is returned. Otherwise, daily data is returned.
    # @param project_key [String] The project key
    # @param environment_key [String] The environment key
    # @param feature_flag_key [String] The feature flag key
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The series of data returned starts from this timestamp. Defaults to 30 days ago.
    # @option opts [String] :to The series of data returned ends at this timestamp. Defaults to the current time.
    # @option opts [String] :tz The timezone to use for breaks between days when returning daily data.
    # @return [Array<(SeriesListRep, Integer, Hash)>] SeriesListRep data, response status code and response headers
    def get_evaluations_usage_with_http_info(project_key, environment_key, feature_flag_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountUsageBetaApi.get_evaluations_usage ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling AccountUsageBetaApi.get_evaluations_usage"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling AccountUsageBetaApi.get_evaluations_usage"
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling AccountUsageBetaApi.get_evaluations_usage"
      end
      # resource path
      local_var_path = '/api/v2/usage/evaluations/{projectKey}/{environmentKey}/{featureFlagKey}'.sub('{' + 'projectKey' + '}', CGI.escape(project_key.to_s)).sub('{' + 'environmentKey' + '}', CGI.escape(environment_key.to_s)).sub('{' + 'featureFlagKey' + '}', CGI.escape(feature_flag_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'tz'] = opts[:'tz'] if !opts[:'tz'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SeriesListRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"AccountUsageBetaApi.get_evaluations_usage",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountUsageBetaApi#get_evaluations_usage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get events usage
    # Get time-series arrays of the number of times a flag is evaluated, broken down by the variation that resulted from that evaluation. The granularity of the data depends on the age of the data requested. If the requested range is within the past two hours, minutely data is returned. If it is within the last two days, hourly data is returned. Otherwise, daily data is returned.
    # @param type [String] The type of event to retrieve. Must be either &#x60;received&#x60; or &#x60;published&#x60;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The series of data returned starts from this timestamp. Defaults to 24 hours ago.
    # @option opts [String] :to The series of data returned ends at this timestamp. Defaults to the current time.
    # @return [SeriesListRep]
    def get_events_usage(type, opts = {})
      data, _status_code, _headers = get_events_usage_with_http_info(type, opts)
      data
    end

    # Get events usage
    # Get time-series arrays of the number of times a flag is evaluated, broken down by the variation that resulted from that evaluation. The granularity of the data depends on the age of the data requested. If the requested range is within the past two hours, minutely data is returned. If it is within the last two days, hourly data is returned. Otherwise, daily data is returned.
    # @param type [String] The type of event to retrieve. Must be either &#x60;received&#x60; or &#x60;published&#x60;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The series of data returned starts from this timestamp. Defaults to 24 hours ago.
    # @option opts [String] :to The series of data returned ends at this timestamp. Defaults to the current time.
    # @return [Array<(SeriesListRep, Integer, Hash)>] SeriesListRep data, response status code and response headers
    def get_events_usage_with_http_info(type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountUsageBetaApi.get_events_usage ...'
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling AccountUsageBetaApi.get_events_usage"
      end
      # resource path
      local_var_path = '/api/v2/usage/events/{type}'.sub('{' + 'type' + '}', CGI.escape(type.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'SeriesListRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"AccountUsageBetaApi.get_events_usage",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountUsageBetaApi#get_events_usage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get experimentation keys usage
    # Get a time-series array of the number of monthly experimentation keys from your account. The granularity is always daily, with a maximum of 31 days.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month.
    # @option opts [String] :to The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time.
    # @option opts [String] :project_key A project key. If specified, &#x60;environmentKey&#x60; is required and results apply to the corresponding environment in this project.
    # @option opts [String] :environment_key An environment key. If specified, &#x60;projectKey&#x60; is required and results apply to the corresponding environment in this project.
    # @return [SeriesIntervalsRep]
    def get_experimentation_keys_usage(opts = {})
      data, _status_code, _headers = get_experimentation_keys_usage_with_http_info(opts)
      data
    end

    # Get experimentation keys usage
    # Get a time-series array of the number of monthly experimentation keys from your account. The granularity is always daily, with a maximum of 31 days.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month.
    # @option opts [String] :to The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time.
    # @option opts [String] :project_key A project key. If specified, &#x60;environmentKey&#x60; is required and results apply to the corresponding environment in this project.
    # @option opts [String] :environment_key An environment key. If specified, &#x60;projectKey&#x60; is required and results apply to the corresponding environment in this project.
    # @return [Array<(SeriesIntervalsRep, Integer, Hash)>] SeriesIntervalsRep data, response status code and response headers
    def get_experimentation_keys_usage_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountUsageBetaApi.get_experimentation_keys_usage ...'
      end
      # resource path
      local_var_path = '/api/v2/usage/experimentation-keys'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'projectKey'] = opts[:'project_key'] if !opts[:'project_key'].nil?
      query_params[:'environmentKey'] = opts[:'environment_key'] if !opts[:'environment_key'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SeriesIntervalsRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"AccountUsageBetaApi.get_experimentation_keys_usage",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountUsageBetaApi#get_experimentation_keys_usage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get experimentation units usage
    # Get a time-series array of the number of monthly experimentation units from your account. The granularity is always daily, with a maximum of 31 days.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month.
    # @option opts [String] :to The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time.
    # @option opts [String] :project_key A project key. If specified, &#x60;environmentKey&#x60; is required and results apply to the corresponding environment in this project.
    # @option opts [String] :environment_key An environment key. If specified, &#x60;projectKey&#x60; is required and results apply to the corresponding environment in this project.
    # @return [SeriesIntervalsRep]
    def get_experimentation_units_usage(opts = {})
      data, _status_code, _headers = get_experimentation_units_usage_with_http_info(opts)
      data
    end

    # Get experimentation units usage
    # Get a time-series array of the number of monthly experimentation units from your account. The granularity is always daily, with a maximum of 31 days.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month.
    # @option opts [String] :to The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time.
    # @option opts [String] :project_key A project key. If specified, &#x60;environmentKey&#x60; is required and results apply to the corresponding environment in this project.
    # @option opts [String] :environment_key An environment key. If specified, &#x60;projectKey&#x60; is required and results apply to the corresponding environment in this project.
    # @return [Array<(SeriesIntervalsRep, Integer, Hash)>] SeriesIntervalsRep data, response status code and response headers
    def get_experimentation_units_usage_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountUsageBetaApi.get_experimentation_units_usage ...'
      end
      # resource path
      local_var_path = '/api/v2/usage/experimentation-units'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'projectKey'] = opts[:'project_key'] if !opts[:'project_key'].nil?
      query_params[:'environmentKey'] = opts[:'environment_key'] if !opts[:'environment_key'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SeriesIntervalsRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"AccountUsageBetaApi.get_experimentation_units_usage",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountUsageBetaApi#get_experimentation_units_usage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get MAU SDKs by type
    # Get a list of SDKs. These are all of the SDKs that have connected to LaunchDarkly by monthly active users (MAU) in the requested time period.<br/><br/>Endpoints for retrieving monthly active users (MAU) do not return information about active context instances. After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should not rely on this endpoint. To learn more, read [Account usage metrics](https://docs.launchdarkly.com/home/account/metrics).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The data returned starts from this timestamp. Defaults to seven days ago. The timestamp is in Unix milliseconds, for example, 1656694800000.
    # @option opts [String] :to The data returned ends at this timestamp. Defaults to the current time. The timestamp is in Unix milliseconds, for example, 1657904400000.
    # @option opts [String] :sdktype The type of SDK with monthly active users (MAU) to list. Must be either &#x60;client&#x60; or &#x60;server&#x60;.
    # @return [SdkListRep]
    def get_mau_sdks_by_type(opts = {})
      data, _status_code, _headers = get_mau_sdks_by_type_with_http_info(opts)
      data
    end

    # Get MAU SDKs by type
    # Get a list of SDKs. These are all of the SDKs that have connected to LaunchDarkly by monthly active users (MAU) in the requested time period.&lt;br/&gt;&lt;br/&gt;Endpoints for retrieving monthly active users (MAU) do not return information about active context instances. After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should not rely on this endpoint. To learn more, read [Account usage metrics](https://docs.launchdarkly.com/home/account/metrics).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The data returned starts from this timestamp. Defaults to seven days ago. The timestamp is in Unix milliseconds, for example, 1656694800000.
    # @option opts [String] :to The data returned ends at this timestamp. Defaults to the current time. The timestamp is in Unix milliseconds, for example, 1657904400000.
    # @option opts [String] :sdktype The type of SDK with monthly active users (MAU) to list. Must be either &#x60;client&#x60; or &#x60;server&#x60;.
    # @return [Array<(SdkListRep, Integer, Hash)>] SdkListRep data, response status code and response headers
    def get_mau_sdks_by_type_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountUsageBetaApi.get_mau_sdks_by_type ...'
      end
      # resource path
      local_var_path = '/api/v2/usage/mau/sdks'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'sdktype'] = opts[:'sdktype'] if !opts[:'sdktype'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SdkListRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"AccountUsageBetaApi.get_mau_sdks_by_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountUsageBetaApi#get_mau_sdks_by_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get MAU usage
    # Get a time-series array of the number of monthly active users (MAU) seen by LaunchDarkly from your account. The granularity is always daily.<br/><br/>Endpoints for retrieving monthly active users (MAU) do not return information about active context instances. After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should not rely on this endpoint. To learn more, read [Account usage metrics](https://docs.launchdarkly.com/home/account/metrics).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The series of data returned starts from this timestamp. Defaults to 30 days ago.
    # @option opts [String] :to The series of data returned ends at this timestamp. Defaults to the current time.
    # @option opts [String] :project A project key to filter results to. Can be specified multiple times, one query parameter per project key, to view data for multiple projects.
    # @option opts [String] :environment An environment key to filter results to. When using this parameter, exactly one project key must also be set. Can be specified multiple times as separate query parameters to view data for multiple environments within a single project.
    # @option opts [String] :sdktype An SDK type to filter results to. Can be specified multiple times, one query parameter per SDK type. Valid values: client, server
    # @option opts [String] :sdk An SDK name to filter results to. Can be specified multiple times, one query parameter per SDK.
    # @option opts [String] :anonymous If specified, filters results to either anonymous or nonanonymous users.
    # @option opts [String] :groupby If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions (for example, to group by both project and SDK). Valid values: project, environment, sdktype, sdk, anonymous
    # @return [SeriesListRep]
    def get_mau_usage(opts = {})
      data, _status_code, _headers = get_mau_usage_with_http_info(opts)
      data
    end

    # Get MAU usage
    # Get a time-series array of the number of monthly active users (MAU) seen by LaunchDarkly from your account. The granularity is always daily.&lt;br/&gt;&lt;br/&gt;Endpoints for retrieving monthly active users (MAU) do not return information about active context instances. After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should not rely on this endpoint. To learn more, read [Account usage metrics](https://docs.launchdarkly.com/home/account/metrics).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The series of data returned starts from this timestamp. Defaults to 30 days ago.
    # @option opts [String] :to The series of data returned ends at this timestamp. Defaults to the current time.
    # @option opts [String] :project A project key to filter results to. Can be specified multiple times, one query parameter per project key, to view data for multiple projects.
    # @option opts [String] :environment An environment key to filter results to. When using this parameter, exactly one project key must also be set. Can be specified multiple times as separate query parameters to view data for multiple environments within a single project.
    # @option opts [String] :sdktype An SDK type to filter results to. Can be specified multiple times, one query parameter per SDK type. Valid values: client, server
    # @option opts [String] :sdk An SDK name to filter results to. Can be specified multiple times, one query parameter per SDK.
    # @option opts [String] :anonymous If specified, filters results to either anonymous or nonanonymous users.
    # @option opts [String] :groupby If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions (for example, to group by both project and SDK). Valid values: project, environment, sdktype, sdk, anonymous
    # @return [Array<(SeriesListRep, Integer, Hash)>] SeriesListRep data, response status code and response headers
    def get_mau_usage_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountUsageBetaApi.get_mau_usage ...'
      end
      # resource path
      local_var_path = '/api/v2/usage/mau'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'project'] = opts[:'project'] if !opts[:'project'].nil?
      query_params[:'environment'] = opts[:'environment'] if !opts[:'environment'].nil?
      query_params[:'sdktype'] = opts[:'sdktype'] if !opts[:'sdktype'].nil?
      query_params[:'sdk'] = opts[:'sdk'] if !opts[:'sdk'].nil?
      query_params[:'anonymous'] = opts[:'anonymous'] if !opts[:'anonymous'].nil?
      query_params[:'groupby'] = opts[:'groupby'] if !opts[:'groupby'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SeriesListRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"AccountUsageBetaApi.get_mau_usage",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountUsageBetaApi#get_mau_usage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get MAU usage by category
    # Get time-series arrays of the number of monthly active users (MAU) seen by LaunchDarkly from your account, broken down by the category of users. The category is either `browser`, `mobile`, or `backend`.<br/><br/>Endpoints for retrieving monthly active users (MAU) do not return information about active context instances. After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should not rely on this endpoint. To learn more, read [Account usage metrics](https://docs.launchdarkly.com/home/account/metrics).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The series of data returned starts from this timestamp. Defaults to 30 days ago.
    # @option opts [String] :to The series of data returned ends at this timestamp. Defaults to the current time.
    # @return [SeriesListRep]
    def get_mau_usage_by_category(opts = {})
      data, _status_code, _headers = get_mau_usage_by_category_with_http_info(opts)
      data
    end

    # Get MAU usage by category
    # Get time-series arrays of the number of monthly active users (MAU) seen by LaunchDarkly from your account, broken down by the category of users. The category is either &#x60;browser&#x60;, &#x60;mobile&#x60;, or &#x60;backend&#x60;.&lt;br/&gt;&lt;br/&gt;Endpoints for retrieving monthly active users (MAU) do not return information about active context instances. After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should not rely on this endpoint. To learn more, read [Account usage metrics](https://docs.launchdarkly.com/home/account/metrics).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The series of data returned starts from this timestamp. Defaults to 30 days ago.
    # @option opts [String] :to The series of data returned ends at this timestamp. Defaults to the current time.
    # @return [Array<(SeriesListRep, Integer, Hash)>] SeriesListRep data, response status code and response headers
    def get_mau_usage_by_category_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountUsageBetaApi.get_mau_usage_by_category ...'
      end
      # resource path
      local_var_path = '/api/v2/usage/mau/bycategory'

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'SeriesListRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"AccountUsageBetaApi.get_mau_usage_by_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountUsageBetaApi#get_mau_usage_by_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get service connection usage
    # Get a time-series array of the number of monthly service connections from your account. The granularity is always daily, with a maximum of 31 days.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month.
    # @option opts [String] :to The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time.
    # @option opts [String] :project_key A project key. If specified, &#x60;environmentKey&#x60; is required and results apply to the corresponding environment in this project.
    # @option opts [String] :environment_key An environment key. If specified, &#x60;projectKey&#x60; is required and results apply to the corresponding environment in this project.
    # @return [SeriesIntervalsRep]
    def get_service_connection_usage(opts = {})
      data, _status_code, _headers = get_service_connection_usage_with_http_info(opts)
      data
    end

    # Get service connection usage
    # Get a time-series array of the number of monthly service connections from your account. The granularity is always daily, with a maximum of 31 days.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month.
    # @option opts [String] :to The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time.
    # @option opts [String] :project_key A project key. If specified, &#x60;environmentKey&#x60; is required and results apply to the corresponding environment in this project.
    # @option opts [String] :environment_key An environment key. If specified, &#x60;projectKey&#x60; is required and results apply to the corresponding environment in this project.
    # @return [Array<(SeriesIntervalsRep, Integer, Hash)>] SeriesIntervalsRep data, response status code and response headers
    def get_service_connection_usage_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountUsageBetaApi.get_service_connection_usage ...'
      end
      # resource path
      local_var_path = '/api/v2/usage/service-connections'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'projectKey'] = opts[:'project_key'] if !opts[:'project_key'].nil?
      query_params[:'environmentKey'] = opts[:'environment_key'] if !opts[:'environment_key'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SeriesIntervalsRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"AccountUsageBetaApi.get_service_connection_usage",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountUsageBetaApi#get_service_connection_usage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get stream usage
    # Get a time-series array of the number of streaming connections to LaunchDarkly in each time period. The granularity of the data depends on the age of the data requested. If the requested range is within the past two hours, minutely data is returned. If it is within the last two days, hourly data is returned. Otherwise, daily data is returned.
    # @param source [String] The source of streaming connections to describe. Must be either &#x60;client&#x60; or &#x60;server&#x60;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The series of data returned starts from this timestamp. Defaults to 30 days ago.
    # @option opts [String] :to The series of data returned ends at this timestamp. Defaults to the current time.
    # @option opts [String] :tz The timezone to use for breaks between days when returning daily data.
    # @return [SeriesListRep]
    def get_stream_usage(source, opts = {})
      data, _status_code, _headers = get_stream_usage_with_http_info(source, opts)
      data
    end

    # Get stream usage
    # Get a time-series array of the number of streaming connections to LaunchDarkly in each time period. The granularity of the data depends on the age of the data requested. If the requested range is within the past two hours, minutely data is returned. If it is within the last two days, hourly data is returned. Otherwise, daily data is returned.
    # @param source [String] The source of streaming connections to describe. Must be either &#x60;client&#x60; or &#x60;server&#x60;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The series of data returned starts from this timestamp. Defaults to 30 days ago.
    # @option opts [String] :to The series of data returned ends at this timestamp. Defaults to the current time.
    # @option opts [String] :tz The timezone to use for breaks between days when returning daily data.
    # @return [Array<(SeriesListRep, Integer, Hash)>] SeriesListRep data, response status code and response headers
    def get_stream_usage_with_http_info(source, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountUsageBetaApi.get_stream_usage ...'
      end
      # verify the required parameter 'source' is set
      if @api_client.config.client_side_validation && source.nil?
        fail ArgumentError, "Missing the required parameter 'source' when calling AccountUsageBetaApi.get_stream_usage"
      end
      # resource path
      local_var_path = '/api/v2/usage/streams/{source}'.sub('{' + 'source' + '}', CGI.escape(source.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'tz'] = opts[:'tz'] if !opts[:'tz'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SeriesListRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"AccountUsageBetaApi.get_stream_usage",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountUsageBetaApi#get_stream_usage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get stream usage by SDK version
    # Get multiple series of the number of streaming connections to LaunchDarkly in each time period, separated by SDK type and version. Information about each series is in the metadata array. The granularity of the data depends on the age of the data requested. If the requested range is within the past 2 hours, minutely data is returned. If it is within the last two days, hourly data is returned. Otherwise, daily data is returned.
    # @param source [String] The source of streaming connections to describe. Must be either &#x60;client&#x60; or &#x60;server&#x60;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The series of data returned starts from this timestamp. Defaults to 24 hours ago.
    # @option opts [String] :to The series of data returned ends at this timestamp. Defaults to the current time.
    # @option opts [String] :tz The timezone to use for breaks between days when returning daily data.
    # @option opts [String] :sdk If included, this filters the returned series to only those that match this SDK name.
    # @option opts [String] :version If included, this filters the returned series to only those that match this SDK version.
    # @return [SeriesListRep]
    def get_stream_usage_by_sdk_version(source, opts = {})
      data, _status_code, _headers = get_stream_usage_by_sdk_version_with_http_info(source, opts)
      data
    end

    # Get stream usage by SDK version
    # Get multiple series of the number of streaming connections to LaunchDarkly in each time period, separated by SDK type and version. Information about each series is in the metadata array. The granularity of the data depends on the age of the data requested. If the requested range is within the past 2 hours, minutely data is returned. If it is within the last two days, hourly data is returned. Otherwise, daily data is returned.
    # @param source [String] The source of streaming connections to describe. Must be either &#x60;client&#x60; or &#x60;server&#x60;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The series of data returned starts from this timestamp. Defaults to 24 hours ago.
    # @option opts [String] :to The series of data returned ends at this timestamp. Defaults to the current time.
    # @option opts [String] :tz The timezone to use for breaks between days when returning daily data.
    # @option opts [String] :sdk If included, this filters the returned series to only those that match this SDK name.
    # @option opts [String] :version If included, this filters the returned series to only those that match this SDK version.
    # @return [Array<(SeriesListRep, Integer, Hash)>] SeriesListRep data, response status code and response headers
    def get_stream_usage_by_sdk_version_with_http_info(source, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountUsageBetaApi.get_stream_usage_by_sdk_version ...'
      end
      # verify the required parameter 'source' is set
      if @api_client.config.client_side_validation && source.nil?
        fail ArgumentError, "Missing the required parameter 'source' when calling AccountUsageBetaApi.get_stream_usage_by_sdk_version"
      end
      # resource path
      local_var_path = '/api/v2/usage/streams/{source}/bysdkversion'.sub('{' + 'source' + '}', CGI.escape(source.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'tz'] = opts[:'tz'] if !opts[:'tz'].nil?
      query_params[:'sdk'] = opts[:'sdk'] if !opts[:'sdk'].nil?
      query_params[:'version'] = opts[:'version'] if !opts[:'version'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SeriesListRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"AccountUsageBetaApi.get_stream_usage_by_sdk_version",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountUsageBetaApi#get_stream_usage_by_sdk_version\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get stream usage SDK versions
    # Get a list of SDK version objects, which contain an SDK name and version. These are all of the SDKs that have connected to LaunchDarkly from your account in the past 60 days.
    # @param source [String] The source of streaming connections to describe. Must be either &#x60;client&#x60; or &#x60;server&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [SdkVersionListRep]
    def get_stream_usage_sdkversion(source, opts = {})
      data, _status_code, _headers = get_stream_usage_sdkversion_with_http_info(source, opts)
      data
    end

    # Get stream usage SDK versions
    # Get a list of SDK version objects, which contain an SDK name and version. These are all of the SDKs that have connected to LaunchDarkly from your account in the past 60 days.
    # @param source [String] The source of streaming connections to describe. Must be either &#x60;client&#x60; or &#x60;server&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SdkVersionListRep, Integer, Hash)>] SdkVersionListRep data, response status code and response headers
    def get_stream_usage_sdkversion_with_http_info(source, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountUsageBetaApi.get_stream_usage_sdkversion ...'
      end
      # verify the required parameter 'source' is set
      if @api_client.config.client_side_validation && source.nil?
        fail ArgumentError, "Missing the required parameter 'source' when calling AccountUsageBetaApi.get_stream_usage_sdkversion"
      end
      # resource path
      local_var_path = '/api/v2/usage/streams/{source}/sdkversions'.sub('{' + 'source' + '}', CGI.escape(source.to_s))

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
      return_type = opts[:debug_return_type] || 'SdkVersionListRep'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"AccountUsageBetaApi.get_stream_usage_sdkversion",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountUsageBetaApi#get_stream_usage_sdkversion\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
