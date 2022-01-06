=begin
#LaunchDarkly REST API

## Overview  ## Authentication  All REST API resources are authenticated with either [personal or service access tokens](https://docs.launchdarkly.com/home/account-security/api-access-tokens), or session cookies. Other authentication mechanisms are not supported. You can manage personal access tokens on your [Account settings](https://app.launchdarkly.com/settings/tokens) page.  LaunchDarkly also has SDK keys, mobile keys, and client-side IDs that are used by our server-side SDKs, mobile SDKs, and client-side SDKs, respectively. **These keys cannot be used to access our REST API**. These keys are environment-specific, and can only perform read-only operations (fetching feature flag settings).  | Auth mechanism                                                                                  | Allowed resources                                                                                     | Use cases                                          | | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | -------------------------------------------------- | | [Personal access tokens](https://docs.launchdarkly.com/home/account-security/api-access-tokens) | Can be customized on a per-token basis                                                                | Building scripts, custom integrations, data export | | SDK keys                                                                                        | Can only access read-only SDK-specific resources and the firehose, restricted to a single environment | Server-side SDKs, Firehose API                     | | Mobile keys                                                                                     | Can only access read-only mobile SDK-specific resources, restricted to a single environment           | Mobile SDKs                                        | | Client-side ID                                                                                  | Single environment, only flags marked available to client-side                                        | Client-side JavaScript                             |  > #### Keep your access tokens and SDK keys private > > Access tokens should _never_ be exposed in untrusted contexts. Never put an access token in client-side JavaScript, or embed it in a mobile application. LaunchDarkly has special mobile keys that you can embed in mobile apps. If you accidentally expose an access token or SDK key, you can reset it from your [Account Settings](https://app.launchdarkly.com/settings#/tokens) page. > > The client-side ID is safe to embed in untrusted contexts. It's designed for use in client-side JavaScript.  ### Via request header  The preferred way to authenticate with the API is by adding an `Authorization` header containing your access token to your requests. The value of the `Authorization` header must be your access token.  Manage personal access tokens from the [Account Settings](https://app.launchdarkly.com/settings/tokens) page.  ### Via session cookie  For testing purposes, you can make API calls directly from your web browser. If you're logged in to the application, the API will use your existing session to authenticate calls.  If you have a [role](https://docs.launchdarkly.com/home/team/built-in-roles) other than Admin, or have a [custom role](https://docs.launchdarkly.com/home/team/custom-roles) defined, you may not have permission to perform some API calls. You will receive a `401` response code in that case.  > ### Modifying the Origin header causes an error > > LaunchDarkly validates that the Origin header for any API request authenticated by a session cookie matches the expected Origin header. The expected Origin header is `https://app.launchdarkly.com`. > > If the Origin header does not match what's expected, LaunchDarkly returns an error. This error can prevent the LaunchDarkly app from working correctly. > > Any browser extension that intentionally changes the Origin header can cause this problem. For example, the `Allow-Control-Allow-Origin: *` Chrome extension changes the Origin header to `http://evil.com` and causes the app to fail. > > To prevent this error, do not modify your Origin header. > > LaunchDarkly does not require origin matching when authenticating with an access token, so this issue does not affect normal API usage.  ## Representations  All resources expect and return JSON response bodies. Error responses will also send a JSON body. Read [Errors](#section/Errors) for a more detailed description of the error format used by the API.  In practice this means that you always get a response with a `Content-Type` header set to `application/json`.  In addition, request bodies for `PUT`, `POST`, `REPORT` and `PATCH` requests must be encoded as JSON with a `Content-Type` header set to `application/json`.  ### Summary and detailed representations  When you fetch a list of resources, the response includes only the most important attributes of each resource. This is a _summary representation_ of the resource. When you fetch an individual resource (for example, a single feature flag), you receive a _detailed representation_ containing all of the attributes of the resource.  The best way to find a detailed representation is to follow links. Every summary representation includes a link to its detailed representation.  ### Links and addressability  The best way to navigate the API is by following links. These are attributes in representations that link to other resources. The API always uses the same format for links:  - Links to other resources within the API are encapsulated in a `_links` object. - If the resource has a corresponding link to HTML content on the site, it is stored in a special `_site` link.  Each link has two attributes: an href (the URL) and a type (the content type). For example, a feature resource might return the following:  ```json {   \"_links\": {     \"parent\": {       \"href\": \"/api/features\",       \"type\": \"application/json\"     },     \"self\": {       \"href\": \"/api/features/sort.order\",       \"type\": \"application/json\"     }   },   \"_site\": {     \"href\": \"/features/sort.order\",     \"type\": \"text/html\"   } } ```  From this, you can navigate to the parent collection of features by following the `parent` link, or navigate to the site page for the feature by following the `_site` link.  Collections are always represented as a JSON object with an `items` attribute containing an array of representations. Like all other representations, collections have `_links` defined at the top level.  Paginated collections include `first`, `last`, `next`, and `prev` links containing a URL with the respective set of elements in the collection.  ## Updates  Resources that accept partial updates use the `PATCH` verb, and support the [JSON Patch](https://datatracker.ietf.org/doc/html/rfc6902) format. Some resources also support the [JSON Merge Patch](https://datatracker.ietf.org/doc/html/rfc7386) format. In addition, some resources support optional comments that can be submitted with updates. Comments appear in outgoing webhooks, the audit log, and other integrations.  ### Updates via JSON Patch  [JSON Patch](https://datatracker.ietf.org/doc/html/rfc6902) is a way to specify the modifications to perform on a resource. For example, in this feature flag representation:  ```json {     \"name\": \"New recommendations engine\",     \"key\": \"engine.enable\",     \"description\": \"This is the description\",     ... } ```  You can change the feature flag's description with the following patch document:  ```json [{ \"op\": \"replace\", \"path\": \"/description\", \"value\": \"This is the new description\" }] ```  JSON Patch documents are always arrays. You can specify multiple modifications to perform in a single request. You can also test that certain preconditions are met before applying the patch:  ```json [   { \"op\": \"test\", \"path\": \"/version\", \"value\": 10 },   { \"op\": \"replace\", \"path\": \"/description\", \"value\": \"The new description\" } ] ```  The above patch request tests whether the feature flag's `version` is `10`, and if so, changes the feature flag's description.  Attributes that aren't editable, like a resource's `_links`, have names that start with an underscore.  ### Updates via JSON Merge Patch  The API also supports the [JSON Merge Patch](https://datatracker.ietf.org/doc/html/rfc7386) format, as well as the [Update feature flag](/tag/Feature-flags#operation/patchFeatureFlag) resource.  JSON Merge Patch is less expressive than JSON Patch but in many cases, it is simpler to construct a merge patch document. For example, you can change a feature flag's description with the following merge patch document:  ```json {   \"description\": \"New flag description\" } ```  ### Updates with comments  You can submit optional comments with `PATCH` changes. The [Update feature flag](/tag/Feature-flags#operation/patchFeatureFlag) resource supports comments.  To submit a comment along with a JSON Patch document, use the following format:  ```json {   \"comment\": \"This is a comment string\",   \"patch\": [{ \"op\": \"replace\", \"path\": \"/description\", \"value\": \"The new description\" }] } ```  To submit a comment along with a JSON Merge Patch document, use the following format:  ```json {   \"comment\": \"This is a comment string\",   \"merge\": { \"description\": \"New flag description\" } } ```  ### Updates via semantic patches  The API also supports the Semantic patch format. A semantic `PATCH` is a way to specify the modifications to perform on a resource as a set of executable instructions.  JSON Patch uses paths and a limited set of operations to describe how to transform the current state of the resource into a new state. Semantic patch allows you to be explicit about intent using precise, custom instructions. In many cases, semantic patch instructions can also be defined independently of the current state of the resource. This can be useful when defining a change that may be applied at a future date.  For example, in this feature flag configuration in environment Production:  ```json {     \"name\": \"Alternate sort order\",     \"kind\": \"boolean\",     \"key\": \"sort.order\",    ...     \"environments\": {         \"production\": {             \"on\": true,             \"archived\": false,             \"salt\": \"c29ydC5vcmRlcg==\",             \"sel\": \"8de1085cb7354b0ab41c0e778376dfd3\",             \"lastModified\": 1469131558260,             \"version\": 81,             \"targets\": [                 {                     \"values\": [                         \"Gerhard.Little@yahoo.com\"                     ],                     \"variation\": 0                 },                 {                     \"values\": [                         \"1461797806429-33-861961230\",                         \"438580d8-02ee-418d-9eec-0085cab2bdf0\"                     ],                     \"variation\": 1                 }             ],             \"rules\": [],             \"fallthrough\": {                 \"variation\": 0             },             \"offVariation\": 1,             \"prerequisites\": [],             \"_site\": {                 \"href\": \"/default/production/features/sort.order\",                 \"type\": \"text/html\"             }        }     } } ```  You can add a date you want a user to be removed from the feature flag's user targets. For example, “remove user 1461797806429-33-861961230 from the user target for variation 0 on the Alternate sort order flag in the production environment on Wed Jul 08 2020 at 15:27:41 pm”. This is done using the following:  ```json {   \"comment\": \"update expiring user targets\",   \"instructions\": [     {       \"kind\": \"removeExpireUserTargetDate\",       \"userKey\": \"userKey\",       \"variationId\": \"978d53f9-7fe3-4a63-992d-97bcb4535dc8\"     },     {       \"kind\": \"updateExpireUserTargetDate\",       \"userKey\": \"userKey2\",       \"variationId\": \"978d53f9-7fe3-4a63-992d-97bcb4535dc8\",       \"value\": 1587582000000     },     {       \"kind\": \"addExpireUserTargetDate\",       \"userKey\": \"userKey3\",       \"variationId\": \"978d53f9-7fe3-4a63-992d-97bcb4535dc8\",       \"value\": 1594247266386     }   ] } ```  Here is another example. In this feature flag configuration:  ```json {   \"name\": \"New recommendations engine\",   \"key\": \"engine.enable\",   \"environments\": {     \"test\": {       \"on\": true     }   } } ```  You can change the feature flag's description with the following patch document as a set of executable instructions. For example, “add user X to targets for variation Y and remove user A from targets for variation B for test flag”:  ```json {   \"comment\": \"\",   \"instructions\": [     {       \"kind\": \"removeUserTargets\",       \"values\": [\"438580d8-02ee-418d-9eec-0085cab2bdf0\"],       \"variationId\": \"852cb784-54ff-46b9-8c35-5498d2e4f270\"     },     {       \"kind\": \"addUserTargets\",       \"values\": [\"438580d8-02ee-418d-9eec-0085cab2bdf0\"],       \"variationId\": \"1bb18465-33b6-49aa-a3bd-eeb6650b33ad\"     }   ] } ```  > ### Supported semantic patch API endpoints > > - [Update feature flag](/tag/Feature-flags#operation/patchFeatureFlag) > - [Update expiring user targets on feature flag](/tag/Feature-flags#operation/patchExpiringUserTargets) > - [Update expiring user target for flags](/tag/User-settings#operation/patchExpiringFlagsForUser) > - [Update expiring user targets on segment](/tag/Segments#operation/patchExpiringUserTargetsForSegment)  ## Errors  The API always returns errors in a common format. Here's an example:  ```json {   \"code\": \"invalid_request\",   \"message\": \"A feature with that key already exists\",   \"id\": \"30ce6058-87da-11e4-b116-123b93f75cba\" } ```  The general class of error is indicated by the `code`. The `message` is a human-readable explanation of what went wrong. The `id` is a unique identifier. Use it when you're working with LaunchDarkly support to debug a problem with a specific API call.  ### HTTP Status - Error Response Codes  | Code | Definition        | Desc.                                                                                       | Possible Solution                                                | | ---- | ----------------- | ------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- | | 400  | Bad Request       | A request that fails may return this HTTP response code.                                    | Ensure JSON syntax in request body is correct.                   | | 401  | Unauthorized      | User doesn't have permission to an API call.                                                | Ensure your SDK key is good.                                     | | 403  | Forbidden         | User does not have permission for operation.                                                | Ensure that the user or access token has proper permissions set. | | 409  | Conflict          | The API request could not be completed because it conflicted with a concurrent API request. | Retry your request.                                              | | 429  | Too many requests | See [Rate limiting](/#section/Rate-limiting).                                               | Wait and try again later.                                        |  ## CORS  The LaunchDarkly API supports Cross Origin Resource Sharing (CORS) for AJAX requests from any origin. If an `Origin` header is given in a request, it will be echoed as an explicitly allowed origin. Otherwise, a wildcard is returned: `Access-Control-Allow-Origin: *`. For more information on CORS, see the [CORS W3C Recommendation](http://www.w3.org/TR/cors). Example CORS headers might look like:  ```http Access-Control-Allow-Headers: Accept, Content-Type, Content-Length, Accept-Encoding, Authorization Access-Control-Allow-Methods: OPTIONS, GET, DELETE, PATCH Access-Control-Allow-Origin: * Access-Control-Max-Age: 300 ```  You can make authenticated CORS calls just as you would make same-origin calls, using either [token or session-based authentication](#section/Authentication). If you’re using session auth, you should set the `withCredentials` property for your `xhr` request to `true`. You should never expose your access tokens to untrusted users.  ## Rate limiting  We use several rate limiting strategies to ensure the availability of our APIs. Rate-limited calls to our APIs will return a `429` status code. Calls to our APIs will include headers indicating the current rate limit status. The specific headers returned depend on the API route being called. The limits differ based on the route, authentication mechanism, and other factors. Routes that are not rate limited may not contain any of the headers described below.  > ### Rate limiting and SDKs > > LaunchDarkly SDKs are never rate limited and do not use the API endpoints defined here. LaunchDarkly uses a different set of approaches, including streaming/server-sent events and a global CDN, to ensure availability to the routes used by LaunchDarkly SDKs. > > The client-side ID is safe to embed in untrusted contexts. It's designed for use in client-side JavaScript.  ### Global rate limits  Authenticated requests are subject to a global limit. This is the maximum number of calls that can be made to the API per ten seconds. All personal access tokens on the account share this limit, so exceeding the limit with one access token will impact other tokens. Calls that are subject to global rate limits will return the headers below:  | Header name                    | Description                                                                      | | ------------------------------ | -------------------------------------------------------------------------------- | | `X-Ratelimit-Global-Remaining` | The maximum number of requests the account is permitted to make per ten seconds. | | `X-Ratelimit-Reset`            | The time at which the current rate limit window resets in epoch milliseconds.    |  We do not publicly document the specific number of calls that can be made globally. This limit may change, and we encourage clients to program against the specification, relying on the two headers defined above, rather than hardcoding to the current limit.  ### Route-level rate limits  Some authenticated routes have custom rate limits. These also reset every ten seconds. Any access tokens hitting the same route share this limit, so exceeding the limit with one access token may impact other tokens. Calls that are subject to route-level rate limits will return the headers below:  | Header name                   | Description                                                                                           | | ----------------------------- | ----------------------------------------------------------------------------------------------------- | | `X-Ratelimit-Route-Remaining` | The maximum number of requests to the current route the account is permitted to make per ten seconds. | | `X-Ratelimit-Reset`           | The time at which the current rate limit window resets in epoch milliseconds.                         |  A _route_ represents a specific URL pattern and verb. For example, the [Delete environment](/tag/Environments#operation/deleteEnvironment) endpoint is considered a single route, and each call to delete an environment counts against your route-level rate limit for that route.  We do not publicly document the specific number of calls that can be made to each endpoint per ten seconds. These limits may change, and we encourage clients to program against the specification, relying on the two headers defined above, rather than hardcoding to the current limits.  ### IP-based rate limiting  We also employ IP-based rate limiting on some API routes. If you hit an IP-based rate limit, your API response will include a `Retry-After` header indicating how long to wait before re-trying the call. Clients must wait at least `Retry-After` seconds before making additional calls to our API, and should employ jitter and backoff strategies to avoid triggering rate limits again.  ## OpenAPI (Swagger)  We have a [complete OpenAPI (Swagger) specification](https://app.launchdarkly.com/api/v2/openapi.json) for our API.  You can use this specification to generate client libraries to interact with our REST API in your language of choice.  This specification is supported by several API-based tools such as Postman and Insomnia. In many cases, you can directly import our specification to ease use in navigating the APIs in the tooling.  ## Client libraries  We auto-generate multiple client libraries based on our OpenAPI specification. To learn more, visit [GitHub](https://github.com/search?q=topic%3Alaunchdarkly-api+org%3Alaunchdarkly&type=Repositories).  ## Method Overriding  Some firewalls and HTTP clients restrict the use of verbs other than `GET` and `POST`. In those environments, our API endpoints that use `PUT`, `PATCH`, and `DELETE` verbs will be inaccessible.  To avoid this issue, our API supports the `X-HTTP-Method-Override` header, allowing clients to \"tunnel\" `PUT`, `PATCH`, and `DELETE` requests via a `POST` request.  For example, if you wish to call one of our `PATCH` resources via a `POST` request, you can include `X-HTTP-Method-Override:PATCH` as a header.  ## Beta resources  We sometimes release new API resources in **beta** status before we release them with general availability.  Resources that are in beta are still undergoing testing and development. They may change without notice, including becoming backwards incompatible.  We try to promote resources into general availability as quickly as possible. This happens after sufficient testing and when we're satisfied that we no longer need to make backwards-incompatible changes.  We mark beta resources with a \"Beta\" callout in our documentation, pictured below:  > ### This feature is in beta > > To use this feature, pass in a header including the `LD-API-Version` key with value set to `beta`. Use this header with each call. To learn more, read [Beta resources](/#section/Beta-resources).  ### Using beta resources  To use a beta resource, you must include a header in the request. If you call a beta resource without this header, you'll receive a `403` response.  Use this header:  ``` LD-API-Version: beta ```  ## Versioning  We try hard to keep our REST API backwards compatible, but we occasionally have to make backwards-incompatible changes in the process of shipping new features. These breaking changes can cause unexpected behavior if you don't prepare for them accordingly.  Updates to our REST API include support for the latest features in LaunchDarkly. We also release a new version of our REST API every time we make a breaking change. We provide simultaneous support for multiple API versions so you can migrate from your current API version to a new version at your own pace.  ### Setting the API version per request  You can set the API version on a specific request by sending an `LD-API-Version` header, as shown in the example below:  ``` LD-API-Version: 20191212 ```  The header value is the version number of the API version you'd like to request. The number for each version corresponds to the date the version was released. In the example above the version `20191212` corresponds to December 12, 2019.  ### Setting the API version per access token  When creating an access token, you must specify a specific version of the API to use. This ensures that integrations using this token cannot be broken by version changes.  Tokens created before versioning was released have their version set to `20160426` (the version of the API that existed before versioning) so that they continue working the same way they did before versioning.  If you would like to upgrade your integration to use a new API version, you can explicitly set the header described above.  > ### Best practice: Set the header for every client or integration > > We recommend that you set the API version header explicitly in any client or integration you build. > > Only rely on the access token API version during manual testing. 

The version of the OpenAPI document: 2.0
Contact: support@launchdarkly.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'cgi'

module LaunchDarklyApi
  class SegmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete segment
    # Delete a user segment.
    # @param proj_key [String] The project key.
    # @param env_key [String] The environment key.
    # @param key [String] The user segment key.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_segment(proj_key, env_key, key, opts = {})
      delete_segment_with_http_info(proj_key, env_key, key, opts)
      nil
    end

    # Delete segment
    # Delete a user segment.
    # @param proj_key [String] The project key.
    # @param env_key [String] The environment key.
    # @param key [String] The user segment key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_segment_with_http_info(proj_key, env_key, key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SegmentsApi.delete_segment ...'
      end
      # verify the required parameter 'proj_key' is set
      if @api_client.config.client_side_validation && proj_key.nil?
        fail ArgumentError, "Missing the required parameter 'proj_key' when calling SegmentsApi.delete_segment"
      end
      # verify the required parameter 'env_key' is set
      if @api_client.config.client_side_validation && env_key.nil?
        fail ArgumentError, "Missing the required parameter 'env_key' when calling SegmentsApi.delete_segment"
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling SegmentsApi.delete_segment"
      end
      # resource path
      local_var_path = '/api/v2/segments/{projKey}/{envKey}/{key}'.sub('{' + 'projKey' + '}', CGI.escape(proj_key.to_s)).sub('{' + 'envKey' + '}', CGI.escape(env_key.to_s)).sub('{' + 'key' + '}', CGI.escape(key.to_s))

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
        :operation => :"SegmentsApi.delete_segment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SegmentsApi#delete_segment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get expiring user targets for segment
    # Get a list of a segment's user targets that are scheduled for removal
    # @param proj_key [String] The project key.
    # @param env_key [String] The environment key.
    # @param segment_key [String] The segment key.
    # @param [Hash] opts the optional parameters
    # @return [ExpiringUserTargetGetResponse]
    def get_expiring_user_targets_for_segment(proj_key, env_key, segment_key, opts = {})
      data, _status_code, _headers = get_expiring_user_targets_for_segment_with_http_info(proj_key, env_key, segment_key, opts)
      data
    end

    # Get expiring user targets for segment
    # Get a list of a segment&#39;s user targets that are scheduled for removal
    # @param proj_key [String] The project key.
    # @param env_key [String] The environment key.
    # @param segment_key [String] The segment key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpiringUserTargetGetResponse, Integer, Hash)>] ExpiringUserTargetGetResponse data, response status code and response headers
    def get_expiring_user_targets_for_segment_with_http_info(proj_key, env_key, segment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SegmentsApi.get_expiring_user_targets_for_segment ...'
      end
      # verify the required parameter 'proj_key' is set
      if @api_client.config.client_side_validation && proj_key.nil?
        fail ArgumentError, "Missing the required parameter 'proj_key' when calling SegmentsApi.get_expiring_user_targets_for_segment"
      end
      # verify the required parameter 'env_key' is set
      if @api_client.config.client_side_validation && env_key.nil?
        fail ArgumentError, "Missing the required parameter 'env_key' when calling SegmentsApi.get_expiring_user_targets_for_segment"
      end
      # verify the required parameter 'segment_key' is set
      if @api_client.config.client_side_validation && segment_key.nil?
        fail ArgumentError, "Missing the required parameter 'segment_key' when calling SegmentsApi.get_expiring_user_targets_for_segment"
      end
      # resource path
      local_var_path = '/api/v2/segments/{projKey}/{segmentKey}/expiring-user-targets/{envKey}'.sub('{' + 'projKey' + '}', CGI.escape(proj_key.to_s)).sub('{' + 'envKey' + '}', CGI.escape(env_key.to_s)).sub('{' + 'segmentKey' + '}', CGI.escape(segment_key.to_s))

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
        :operation => :"SegmentsApi.get_expiring_user_targets_for_segment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SegmentsApi#get_expiring_user_targets_for_segment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get segment
    # Get a single user segment by key
    # @param proj_key [String] The project key.
    # @param env_key [String] The environment key.
    # @param key [String] The segment key
    # @param [Hash] opts the optional parameters
    # @return [UserSegment]
    def get_segment(proj_key, env_key, key, opts = {})
      data, _status_code, _headers = get_segment_with_http_info(proj_key, env_key, key, opts)
      data
    end

    # Get segment
    # Get a single user segment by key
    # @param proj_key [String] The project key.
    # @param env_key [String] The environment key.
    # @param key [String] The segment key
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserSegment, Integer, Hash)>] UserSegment data, response status code and response headers
    def get_segment_with_http_info(proj_key, env_key, key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SegmentsApi.get_segment ...'
      end
      # verify the required parameter 'proj_key' is set
      if @api_client.config.client_side_validation && proj_key.nil?
        fail ArgumentError, "Missing the required parameter 'proj_key' when calling SegmentsApi.get_segment"
      end
      # verify the required parameter 'env_key' is set
      if @api_client.config.client_side_validation && env_key.nil?
        fail ArgumentError, "Missing the required parameter 'env_key' when calling SegmentsApi.get_segment"
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling SegmentsApi.get_segment"
      end
      # resource path
      local_var_path = '/api/v2/segments/{projKey}/{envKey}/{key}'.sub('{' + 'projKey' + '}', CGI.escape(proj_key.to_s)).sub('{' + 'envKey' + '}', CGI.escape(env_key.to_s)).sub('{' + 'key' + '}', CGI.escape(key.to_s))

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
      return_type = opts[:debug_return_type] || 'UserSegment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"SegmentsApi.get_segment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SegmentsApi#get_segment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Big Segment membership for user
    # Returns the membership status (included/excluded) for a given user in this segment. This operation does not support basic Segments.
    # @param proj_key [String] The project key.
    # @param env_key [String] The environment key.
    # @param key [String] The segment key.
    # @param user_key [String] The user key.
    # @param [Hash] opts the optional parameters
    # @return [BigSegmentTarget]
    def get_segment_membership_for_user(proj_key, env_key, key, user_key, opts = {})
      data, _status_code, _headers = get_segment_membership_for_user_with_http_info(proj_key, env_key, key, user_key, opts)
      data
    end

    # Get Big Segment membership for user
    # Returns the membership status (included/excluded) for a given user in this segment. This operation does not support basic Segments.
    # @param proj_key [String] The project key.
    # @param env_key [String] The environment key.
    # @param key [String] The segment key.
    # @param user_key [String] The user key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BigSegmentTarget, Integer, Hash)>] BigSegmentTarget data, response status code and response headers
    def get_segment_membership_for_user_with_http_info(proj_key, env_key, key, user_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SegmentsApi.get_segment_membership_for_user ...'
      end
      # verify the required parameter 'proj_key' is set
      if @api_client.config.client_side_validation && proj_key.nil?
        fail ArgumentError, "Missing the required parameter 'proj_key' when calling SegmentsApi.get_segment_membership_for_user"
      end
      # verify the required parameter 'env_key' is set
      if @api_client.config.client_side_validation && env_key.nil?
        fail ArgumentError, "Missing the required parameter 'env_key' when calling SegmentsApi.get_segment_membership_for_user"
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling SegmentsApi.get_segment_membership_for_user"
      end
      # verify the required parameter 'user_key' is set
      if @api_client.config.client_side_validation && user_key.nil?
        fail ArgumentError, "Missing the required parameter 'user_key' when calling SegmentsApi.get_segment_membership_for_user"
      end
      # resource path
      local_var_path = '/api/v2/segments/{projKey}/{envKey}/{key}/users/{userKey}'.sub('{' + 'projKey' + '}', CGI.escape(proj_key.to_s)).sub('{' + 'envKey' + '}', CGI.escape(env_key.to_s)).sub('{' + 'key' + '}', CGI.escape(key.to_s)).sub('{' + 'userKey' + '}', CGI.escape(user_key.to_s))

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
      return_type = opts[:debug_return_type] || 'BigSegmentTarget'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"SegmentsApi.get_segment_membership_for_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SegmentsApi#get_segment_membership_for_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List segments
    # Get a list of all user segments in the given project
    # @param proj_key [String] The project key.
    # @param env_key [String] The environment key.
    # @param [Hash] opts the optional parameters
    # @return [UserSegments]
    def get_segments(proj_key, env_key, opts = {})
      data, _status_code, _headers = get_segments_with_http_info(proj_key, env_key, opts)
      data
    end

    # List segments
    # Get a list of all user segments in the given project
    # @param proj_key [String] The project key.
    # @param env_key [String] The environment key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserSegments, Integer, Hash)>] UserSegments data, response status code and response headers
    def get_segments_with_http_info(proj_key, env_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SegmentsApi.get_segments ...'
      end
      # verify the required parameter 'proj_key' is set
      if @api_client.config.client_side_validation && proj_key.nil?
        fail ArgumentError, "Missing the required parameter 'proj_key' when calling SegmentsApi.get_segments"
      end
      # verify the required parameter 'env_key' is set
      if @api_client.config.client_side_validation && env_key.nil?
        fail ArgumentError, "Missing the required parameter 'env_key' when calling SegmentsApi.get_segments"
      end
      # resource path
      local_var_path = '/api/v2/segments/{projKey}/{envKey}'.sub('{' + 'projKey' + '}', CGI.escape(proj_key.to_s)).sub('{' + 'envKey' + '}', CGI.escape(env_key.to_s))

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
      return_type = opts[:debug_return_type] || 'UserSegments'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"SegmentsApi.get_segments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SegmentsApi#get_segments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update expiring user targets for segment
    # Update the list of a segment's user targets that are scheduled for removal<br /><br />Requires a semantic patch representation of the desired changes to the resource. To learn more about semantic patches, read [Updates](/reference#updates-via-semantic-patches).<br /><br />If the request is well-formed but any of its instructions failed to process, this operation returns status code `200`. In this case, the response `errors` array will be non-empty.
    # @param proj_key [String] The project key.
    # @param env_key [String] The environment key.
    # @param segment_key [String] The user segment key.
    # @param patch_segment_request [PatchSegmentRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ExpiringUserTargetPatchResponse]
    def patch_expiring_user_targets_for_segment(proj_key, env_key, segment_key, patch_segment_request, opts = {})
      data, _status_code, _headers = patch_expiring_user_targets_for_segment_with_http_info(proj_key, env_key, segment_key, patch_segment_request, opts)
      data
    end

    # Update expiring user targets for segment
    # Update the list of a segment&#39;s user targets that are scheduled for removal&lt;br /&gt;&lt;br /&gt;Requires a semantic patch representation of the desired changes to the resource. To learn more about semantic patches, read [Updates](/reference#updates-via-semantic-patches).&lt;br /&gt;&lt;br /&gt;If the request is well-formed but any of its instructions failed to process, this operation returns status code &#x60;200&#x60;. In this case, the response &#x60;errors&#x60; array will be non-empty.
    # @param proj_key [String] The project key.
    # @param env_key [String] The environment key.
    # @param segment_key [String] The user segment key.
    # @param patch_segment_request [PatchSegmentRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpiringUserTargetPatchResponse, Integer, Hash)>] ExpiringUserTargetPatchResponse data, response status code and response headers
    def patch_expiring_user_targets_for_segment_with_http_info(proj_key, env_key, segment_key, patch_segment_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SegmentsApi.patch_expiring_user_targets_for_segment ...'
      end
      # verify the required parameter 'proj_key' is set
      if @api_client.config.client_side_validation && proj_key.nil?
        fail ArgumentError, "Missing the required parameter 'proj_key' when calling SegmentsApi.patch_expiring_user_targets_for_segment"
      end
      # verify the required parameter 'env_key' is set
      if @api_client.config.client_side_validation && env_key.nil?
        fail ArgumentError, "Missing the required parameter 'env_key' when calling SegmentsApi.patch_expiring_user_targets_for_segment"
      end
      # verify the required parameter 'segment_key' is set
      if @api_client.config.client_side_validation && segment_key.nil?
        fail ArgumentError, "Missing the required parameter 'segment_key' when calling SegmentsApi.patch_expiring_user_targets_for_segment"
      end
      # verify the required parameter 'patch_segment_request' is set
      if @api_client.config.client_side_validation && patch_segment_request.nil?
        fail ArgumentError, "Missing the required parameter 'patch_segment_request' when calling SegmentsApi.patch_expiring_user_targets_for_segment"
      end
      # resource path
      local_var_path = '/api/v2/segments/{projKey}/{segmentKey}/expiring-user-targets/{envKey}'.sub('{' + 'projKey' + '}', CGI.escape(proj_key.to_s)).sub('{' + 'envKey' + '}', CGI.escape(env_key.to_s)).sub('{' + 'segmentKey' + '}', CGI.escape(segment_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_segment_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ExpiringUserTargetPatchResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"SegmentsApi.patch_expiring_user_targets_for_segment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SegmentsApi#patch_expiring_user_targets_for_segment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch segment
    # Update a user segment. The request body must be a valid JSON patch or JSON merge patch document. To learn more about semantic patches, read [Updates](/#section/Overview/Updates).
    # @param proj_key [String] The project key.
    # @param env_key [String] The environment key.
    # @param key [String] The user segment key.
    # @param patch_with_comment [PatchWithComment] 
    # @param [Hash] opts the optional parameters
    # @return [UserSegment]
    def patch_segment(proj_key, env_key, key, patch_with_comment, opts = {})
      data, _status_code, _headers = patch_segment_with_http_info(proj_key, env_key, key, patch_with_comment, opts)
      data
    end

    # Patch segment
    # Update a user segment. The request body must be a valid JSON patch or JSON merge patch document. To learn more about semantic patches, read [Updates](/#section/Overview/Updates).
    # @param proj_key [String] The project key.
    # @param env_key [String] The environment key.
    # @param key [String] The user segment key.
    # @param patch_with_comment [PatchWithComment] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserSegment, Integer, Hash)>] UserSegment data, response status code and response headers
    def patch_segment_with_http_info(proj_key, env_key, key, patch_with_comment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SegmentsApi.patch_segment ...'
      end
      # verify the required parameter 'proj_key' is set
      if @api_client.config.client_side_validation && proj_key.nil?
        fail ArgumentError, "Missing the required parameter 'proj_key' when calling SegmentsApi.patch_segment"
      end
      # verify the required parameter 'env_key' is set
      if @api_client.config.client_side_validation && env_key.nil?
        fail ArgumentError, "Missing the required parameter 'env_key' when calling SegmentsApi.patch_segment"
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling SegmentsApi.patch_segment"
      end
      # verify the required parameter 'patch_with_comment' is set
      if @api_client.config.client_side_validation && patch_with_comment.nil?
        fail ArgumentError, "Missing the required parameter 'patch_with_comment' when calling SegmentsApi.patch_segment"
      end
      # resource path
      local_var_path = '/api/v2/segments/{projKey}/{envKey}/{key}'.sub('{' + 'projKey' + '}', CGI.escape(proj_key.to_s)).sub('{' + 'envKey' + '}', CGI.escape(env_key.to_s)).sub('{' + 'key' + '}', CGI.escape(key.to_s))

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
      return_type = opts[:debug_return_type] || 'UserSegment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"SegmentsApi.patch_segment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SegmentsApi#patch_segment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create segment
    # Create a new user segment
    # @param proj_key [String] The project key.
    # @param env_key [String] The environment key.
    # @param segment_body [SegmentBody] 
    # @param [Hash] opts the optional parameters
    # @return [UserSegment]
    def post_segment(proj_key, env_key, segment_body, opts = {})
      data, _status_code, _headers = post_segment_with_http_info(proj_key, env_key, segment_body, opts)
      data
    end

    # Create segment
    # Create a new user segment
    # @param proj_key [String] The project key.
    # @param env_key [String] The environment key.
    # @param segment_body [SegmentBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserSegment, Integer, Hash)>] UserSegment data, response status code and response headers
    def post_segment_with_http_info(proj_key, env_key, segment_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SegmentsApi.post_segment ...'
      end
      # verify the required parameter 'proj_key' is set
      if @api_client.config.client_side_validation && proj_key.nil?
        fail ArgumentError, "Missing the required parameter 'proj_key' when calling SegmentsApi.post_segment"
      end
      # verify the required parameter 'env_key' is set
      if @api_client.config.client_side_validation && env_key.nil?
        fail ArgumentError, "Missing the required parameter 'env_key' when calling SegmentsApi.post_segment"
      end
      # verify the required parameter 'segment_body' is set
      if @api_client.config.client_side_validation && segment_body.nil?
        fail ArgumentError, "Missing the required parameter 'segment_body' when calling SegmentsApi.post_segment"
      end
      # resource path
      local_var_path = '/api/v2/segments/{projKey}/{envKey}'.sub('{' + 'projKey' + '}', CGI.escape(proj_key.to_s)).sub('{' + 'envKey' + '}', CGI.escape(env_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(segment_body)

      # return_type
      return_type = opts[:debug_return_type] || 'UserSegment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"SegmentsApi.post_segment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SegmentsApi#post_segment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update targets on a Big Segment
    # Update targets included or excluded in a Big Segment
    # @param proj_key [String] The project key.
    # @param env_key [String] The environment key.
    # @param key [String] The segment key.
    # @param segment_user_state [SegmentUserState] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_big_segment_targets(proj_key, env_key, key, segment_user_state, opts = {})
      update_big_segment_targets_with_http_info(proj_key, env_key, key, segment_user_state, opts)
      nil
    end

    # Update targets on a Big Segment
    # Update targets included or excluded in a Big Segment
    # @param proj_key [String] The project key.
    # @param env_key [String] The environment key.
    # @param key [String] The segment key.
    # @param segment_user_state [SegmentUserState] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_big_segment_targets_with_http_info(proj_key, env_key, key, segment_user_state, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SegmentsApi.update_big_segment_targets ...'
      end
      # verify the required parameter 'proj_key' is set
      if @api_client.config.client_side_validation && proj_key.nil?
        fail ArgumentError, "Missing the required parameter 'proj_key' when calling SegmentsApi.update_big_segment_targets"
      end
      # verify the required parameter 'env_key' is set
      if @api_client.config.client_side_validation && env_key.nil?
        fail ArgumentError, "Missing the required parameter 'env_key' when calling SegmentsApi.update_big_segment_targets"
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling SegmentsApi.update_big_segment_targets"
      end
      # verify the required parameter 'segment_user_state' is set
      if @api_client.config.client_side_validation && segment_user_state.nil?
        fail ArgumentError, "Missing the required parameter 'segment_user_state' when calling SegmentsApi.update_big_segment_targets"
      end
      # resource path
      local_var_path = '/api/v2/segments/{projKey}/{envKey}/{key}/users'.sub('{' + 'projKey' + '}', CGI.escape(proj_key.to_s)).sub('{' + 'envKey' + '}', CGI.escape(env_key.to_s)).sub('{' + 'key' + '}', CGI.escape(key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(segment_user_state)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"SegmentsApi.update_big_segment_targets",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SegmentsApi#update_big_segment_targets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
