This repository contains a client library for LaunchDarkly's REST API. This client was automatically
generated from our [OpenAPI specification](https://app.launchdarkly.com/api/v2/openapi.json) using a [code generation library](https://github.com/launchdarkly/ld-openapi).

This REST API is for custom integrations, data export, or automating your feature flag workflows. *DO NOT* use this client library to include feature flags in your web or mobile application. To integrate feature flags with your application, read the [SDK documentation](https://docs.launchdarkly.com/sdk).

This client library is only compatible with the latest version of our REST API. Previous versions of this client library are compatible with earlier versions of our REST API. When you create an access token, you can set the REST API version associated with the token. By default, API requests you send using the token will use the specified API version. To learn more, read [Versioning](https://apidocs.launchdarkly.com/#section/Overview/Versioning).
View our [sample code](#sample-code) for example usage.

# launchdarkly_api

LaunchDarklyApi - the Ruby gem for the LaunchDarkly REST API

This documentation describes LaunchDarkly's REST API.

To access the complete OpenAPI spec directly, use [Get OpenAPI spec](https://launchdarkly.com/docs/api/other/get-openapi-spec).

## Authentication

LaunchDarkly's REST API uses the HTTPS protocol with a minimum TLS version of 1.2.

All REST API resources are authenticated with either [personal or service access tokens](https://launchdarkly.com/docs/home/account/api), or session cookies. Other authentication mechanisms are not supported. You can manage personal access tokens on your [**Authorization**](https://app.launchdarkly.com/settings/authorization) page in the LaunchDarkly UI.

LaunchDarkly also has SDK keys, mobile keys, and client-side IDs that are used by our server-side SDKs, mobile SDKs, and JavaScript-based SDKs, respectively. **These keys cannot be used to access our REST API**. These keys are environment-specific, and can only perform read-only operations such as fetching feature flag settings.

| Auth mechanism                                                                                  | Allowed resources                                                                                     | Use cases                                          |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | -------------------------------------------------- |
| [Personal or service access tokens](https://launchdarkly.com/docs/home/account/api) | Can be customized on a per-token basis                                                                | Building scripts, custom integrations, data export. |
| SDK keys                                                                                        | Can only access read-only resources specific to server-side SDKs. Restricted to a single environment. | Server-side SDKs                     |
| Mobile keys                                                                                     | Can only access read-only resources specific to mobile SDKs, and only for flags marked available to mobile keys. Restricted to a single environment.           | Mobile SDKs                                        |
| Client-side ID                                                                                  | Can only access read-only resources specific to JavaScript-based client-side SDKs, and only for flags marked available to client-side. Restricted to a single environment.           | Client-side JavaScript                             |

> #### Keep your access tokens and SDK keys private
>
> Access tokens should _never_ be exposed in untrusted contexts. Never put an access token in client-side JavaScript, or embed it in a mobile application. LaunchDarkly has special mobile keys that you can embed in mobile apps. If you accidentally expose an access token or SDK key, you can reset it from your [**Authorization**](https://app.launchdarkly.com/settings/authorization) page.
>
> The client-side ID is safe to embed in untrusted contexts. It's designed for use in client-side JavaScript.

### Authentication using request header

The preferred way to authenticate with the API is by adding an `Authorization` header containing your access token to your requests. The value of the `Authorization` header must be your access token.

Manage personal access tokens from the [**Authorization**](https://app.launchdarkly.com/settings/authorization) page.

### Authentication using session cookie

For testing purposes, you can make API calls directly from your web browser. If you are logged in to the LaunchDarkly application, the API will use your existing session to authenticate calls.

If you have a [role](https://launchdarkly.com/docs/home/account/built-in-roles) other than Admin, or have a [custom role](https://launchdarkly.com/docs/home/account/custom-roles) defined, you may not have permission to perform some API calls. You will receive a `401` response code in that case.

> ### Modifying the Origin header causes an error
>
> LaunchDarkly validates that the Origin header for any API request authenticated by a session cookie matches the expected Origin header. The expected Origin header is `https://app.launchdarkly.com`.
>
> If the Origin header does not match what's expected, LaunchDarkly returns an error. This error can prevent the LaunchDarkly app from working correctly.
>
> Any browser extension that intentionally changes the Origin header can cause this problem. For example, the `Allow-Control-Allow-Origin: *` Chrome extension changes the Origin header to `http://evil.com` and causes the app to fail.
>
> To prevent this error, do not modify your Origin header.
>
> LaunchDarkly does not require origin matching when authenticating with an access token, so this issue does not affect normal API usage.

## Representations

All resources expect and return JSON response bodies. Error responses also send a JSON body. To learn more about the error format of the API, read [Errors](https://launchdarkly.com/docs/api#errors).

In practice this means that you always get a response with a `Content-Type` header set to `application/json`.

In addition, request bodies for `PATCH`, `POST`, and `PUT` requests must be encoded as JSON with a `Content-Type` header set to `application/json`.

### Summary and detailed representations

When you fetch a list of resources, the response includes only the most important attributes of each resource. This is a _summary representation_ of the resource. When you fetch an individual resource, such as a single feature flag, you receive a _detailed representation_ of the resource.

The best way to find a detailed representation is to follow links. Every summary representation includes a link to its detailed representation.

### Expanding responses

Sometimes the detailed representation of a resource does not include all of the attributes of the resource by default. If this is the case, the request method will clearly document this and describe which attributes you can include in an expanded response.

To include the additional attributes, append the `expand` request parameter to your request and add a comma-separated list of the attributes to include. For example, when you append `?expand=members,maintainers` to the [Get team](https://launchdarkly.com/docs/api/teams/get-team) endpoint, the expanded response includes both of these attributes.

### Links and addressability

The best way to navigate the API is by following links. These are attributes in representations that link to other resources. The API always uses the same format for links:

- Links to other resources within the API are encapsulated in a `_links` object
- If the resource has a corresponding link to HTML content on the site, it is stored in a special `_site` link

Each link has two attributes:

- An `href`, which contains the URL
- A `type`, which describes the content type

For example, a feature resource might return the following:

```json
{
  \"_links\": {
    \"parent\": {
      \"href\": \"/api/features\",
      \"type\": \"application/json\"
    },
    \"self\": {
      \"href\": \"/api/features/sort.order\",
      \"type\": \"application/json\"
    }
  },
  \"_site\": {
    \"href\": \"/features/sort.order\",
    \"type\": \"text/html\"
  }
}
```

From this, you can navigate to the parent collection of features by following the `parent` link, or navigate to the site page for the feature by following the `_site` link.

Collections are always represented as a JSON object with an `items` attribute containing an array of representations. Like all other representations, collections have `_links` defined at the top level.

Paginated collections include `first`, `last`, `next`, and `prev` links containing a URL with the respective set of elements in the collection.

## Updates

Resources that accept partial updates use the `PATCH` verb. Most resources support the [JSON patch](https://launchdarkly.com/docs/api#updates-using-json-patch) format. Some resources also support the [JSON merge patch](https://launchdarkly.com/docs/api#updates-using-json-merge-patch) format, and some resources support the [semantic patch](https://launchdarkly.com/docs/api#updates-using-semantic-patch) format, which is a way to specify the modifications to perform as a set of executable instructions. Each resource supports optional [comments](https://launchdarkly.com/docs/api#updates-with-comments) that you can submit with updates. Comments appear in outgoing webhooks, the audit log, and other integrations.

When a resource supports both JSON patch and semantic patch, we document both in the request method. However, the specific request body fields and descriptions included in our documentation only match one type of patch or the other.

### Updates using JSON patch

[JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) is a way to specify the modifications to perform on a resource. JSON patch uses paths and a limited set of operations to describe how to transform the current state of the resource into a new state. JSON patch documents are always arrays, where each element contains an operation, a path to the field to update, and the new value.

For example, in this feature flag representation:

```json
{
    \"name\": \"New recommendations engine\",
    \"key\": \"engine.enable\",
    \"description\": \"This is the description\",
    ...
}
```
You can change the feature flag's description with the following patch document:

```json
[{ \"op\": \"replace\", \"path\": \"/description\", \"value\": \"This is the new description\" }]
```

You can specify multiple modifications to perform in a single request. You can also test that certain preconditions are met before applying the patch:

```json
[
  { \"op\": \"test\", \"path\": \"/version\", \"value\": 10 },
  { \"op\": \"replace\", \"path\": \"/description\", \"value\": \"The new description\" }
]
```

The above patch request tests whether the feature flag's `version` is `10`, and if so, changes the feature flag's description.

Attributes that are not editable, such as a resource's `_links`, have names that start with an underscore.

### Updates using JSON merge patch

[JSON merge patch](https://datatracker.ietf.org/doc/html/rfc7386) is another format for specifying the modifications to perform on a resource. JSON merge patch is less expressive than JSON patch. However, in many cases it is simpler to construct a merge patch document. For example, you can change a feature flag's description with the following merge patch document:

```json
{
  \"description\": \"New flag description\"
}
```

### Updates using semantic patch

Some resources support the semantic patch format. A semantic patch is a way to specify the modifications to perform on a resource as a set of executable instructions.

Semantic patch allows you to be explicit about intent using precise, custom instructions. In many cases, you can define semantic patch instructions independently of the current state of the resource. This can be useful when defining a change that may be applied at a future date.

To make a semantic patch request, you must append `domain-model=launchdarkly.semanticpatch` to your `Content-Type` header.

Here's how:

```
Content-Type: application/json; domain-model=launchdarkly.semanticpatch
```

If you call a semantic patch resource without this header, you will receive a `400` response because your semantic patch will be interpreted as a JSON patch.

The body of a semantic patch request takes the following properties:

* `comment` (string): (Optional) A description of the update.
* `environmentKey` (string): (Required for some resources only) The environment key.
* `instructions` (array): (Required) A list of actions the update should perform. Each action in the list must be an object with a `kind` property that indicates the instruction. If the instruction requires parameters, you must include those parameters as additional fields in the object. The documentation for each resource that supports semantic patch includes the available instructions and any additional parameters.

For example:

```json
{
  \"comment\": \"optional comment\",
  \"instructions\": [ {\"kind\": \"turnFlagOn\"} ]
}
```

Semantic patches are not applied partially; either all of the instructions are applied or none of them are. If **any** instruction is invalid, the endpoint returns an error and will not change the resource. If all instructions are valid, the request succeeds and the resources are updated if necessary, or left unchanged if they are already in the state you request.

### Updates with comments

You can submit optional comments with `PATCH` changes.

To submit a comment along with a JSON patch document, use the following format:

```json
{
  \"comment\": \"This is a comment string\",
  \"patch\": [{ \"op\": \"replace\", \"path\": \"/description\", \"value\": \"The new description\" }]
}
```

To submit a comment along with a JSON merge patch document, use the following format:

```json
{
  \"comment\": \"This is a comment string\",
  \"merge\": { \"description\": \"New flag description\" }
}
```

To submit a comment along with a semantic patch, use the following format:

```json
{
  \"comment\": \"This is a comment string\",
  \"instructions\": [ {\"kind\": \"turnFlagOn\"} ]
}
```

## Errors

The API always returns errors in a common format. Here's an example:

```json
{
  \"code\": \"invalid_request\",
  \"message\": \"A feature with that key already exists\",
  \"id\": \"30ce6058-87da-11e4-b116-123b93f75cba\"
}
```

The `code` indicates the general class of error. The `message` is a human-readable explanation of what went wrong. The `id` is a unique identifier. Use it when you're working with LaunchDarkly Support to debug a problem with a specific API call.

### HTTP status error response codes

| Code | Definition        | Description                                                                                       | Possible Solution                                                |
| ---- | ----------------- | ------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- |
| 400  | Invalid request       | The request cannot be understood.                                    | Ensure JSON syntax in request body is correct.                   |
| 401  | Invalid access token      | Requestor is unauthorized or does not have permission for this API call.                                                | Ensure your API access token is valid and has the appropriate permissions.                                     |
| 403  | Forbidden         | Requestor does not have access to this resource.                                                | Ensure that the account member or access token has proper permissions set. |
| 404  | Invalid resource identifier | The requested resource is not valid. | Ensure that the resource is correctly identified by ID or key. |
| 405  | Method not allowed | The request method is not allowed on this resource. | Ensure that the HTTP verb is correct. |
| 409  | Conflict          | The API request can not be completed because it conflicts with a concurrent API request. | Retry your request.                                              |
| 422  | Unprocessable entity | The API request can not be completed because the update description can not be understood. | Ensure that the request body is correct for the type of patch you are using, either JSON patch or semantic patch.
| 429  | Too many requests | Read [Rate limiting](https://launchdarkly.com/docs/api#rate-limiting).                                               | Wait and try again later.                                        |

## CORS

The LaunchDarkly API supports Cross Origin Resource Sharing (CORS) for AJAX requests from any origin. If an `Origin` header is given in a request, it will be echoed as an explicitly allowed origin. Otherwise the request returns a wildcard, `Access-Control-Allow-Origin: *`. For more information on CORS, read the [CORS W3C Recommendation](http://www.w3.org/TR/cors). Example CORS headers might look like:

```http
Access-Control-Allow-Headers: Accept, Content-Type, Content-Length, Accept-Encoding, Authorization
Access-Control-Allow-Methods: OPTIONS, GET, DELETE, PATCH
Access-Control-Allow-Origin: *
Access-Control-Max-Age: 300
```

You can make authenticated CORS calls just as you would make same-origin calls, using either [token or session-based authentication](https://launchdarkly.com/docs/api#authentication). If you are using session authentication, you should set the `withCredentials` property for your `xhr` request to `true`. You should never expose your access tokens to untrusted entities.

## Rate limiting

We use several rate limiting strategies to ensure the availability of our APIs. Rate-limited calls to our APIs return a `429` status code. Calls to our APIs include headers indicating the current rate limit status. The specific headers returned depend on the API route being called. The limits differ based on the route, authentication mechanism, and other factors. Routes that are not rate limited may not contain any of the headers described below.

> ### Rate limiting and SDKs
>
> LaunchDarkly SDKs are never rate limited and do not use the API endpoints defined here. LaunchDarkly uses a different set of approaches, including streaming/server-sent events and a global CDN, to ensure availability to the routes used by LaunchDarkly SDKs.

### Global rate limits

Authenticated requests are subject to a global limit. This is the maximum number of calls that your account can make to the API per ten seconds. All service and personal access tokens on the account share this limit, so exceeding the limit with one access token will impact other tokens. Calls that are subject to global rate limits may return the headers below:

| Header name                    | Description                                                                      |
| ------------------------------ | -------------------------------------------------------------------------------- |
| `X-Ratelimit-Global-Remaining` | The maximum number of requests the account is permitted to make per ten seconds. |
| `X-Ratelimit-Reset`            | The time at which the current rate limit window resets in epoch milliseconds.    |

We do not publicly document the specific number of calls that can be made globally. This limit may change, and we encourage clients to program against the specification, relying on the two headers defined above, rather than hardcoding to the current limit.

### Route-level rate limits

Some authenticated routes have custom rate limits. These also reset every ten seconds. Any service or personal access tokens hitting the same route share this limit, so exceeding the limit with one access token may impact other tokens. Calls that are subject to route-level rate limits return the headers below:

| Header name                   | Description                                                                                           |
| ----------------------------- | ----------------------------------------------------------------------------------------------------- |
| `X-Ratelimit-Route-Remaining` | The maximum number of requests to the current route the account is permitted to make per ten seconds. |
| `X-Ratelimit-Reset`           | The time at which the current rate limit window resets in epoch milliseconds.                         |

A _route_ represents a specific URL pattern and verb. For example, the [Delete environment](https://launchdarkly.com/docs/api/environments/delete-environment) endpoint is considered a single route, and each call to delete an environment counts against your route-level rate limit for that route.

We do not publicly document the specific number of calls that an account can make to each endpoint per ten seconds. These limits may change, and we encourage clients to program against the specification, relying on the two headers defined above, rather than hardcoding to the current limits.

### IP-based rate limiting

We also employ IP-based rate limiting on some API routes. If you hit an IP-based rate limit, your API response will include a `Retry-After` header indicating how long to wait before re-trying the call. Clients must wait at least `Retry-After` seconds before making additional calls to our API, and should employ jitter and backoff strategies to avoid triggering rate limits again.

## OpenAPI (Swagger) and client libraries

We have a [complete OpenAPI (Swagger) specification](https://app.launchdarkly.com/api/v2/openapi.json) for our API.

We auto-generate multiple client libraries based on our OpenAPI specification. To learn more, visit the [collection of client libraries on GitHub](https://github.com/search?q=topic%3Alaunchdarkly-api+org%3Alaunchdarkly&type=Repositories). You can also use this specification to generate client libraries to interact with our REST API in your language of choice.

Our OpenAPI specification is supported by several API-based tools such as Postman and Insomnia. In many cases, you can directly import our specification to explore our APIs.

## Method overriding

Some firewalls and HTTP clients restrict the use of verbs other than `GET` and `POST`. In those environments, our API endpoints that use `DELETE`, `PATCH`, and `PUT` verbs are inaccessible.

To avoid this issue, our API supports the `X-HTTP-Method-Override` header, allowing clients to \"tunnel\" `DELETE`, `PATCH`, and `PUT` requests using a `POST` request.

For example, to call a `PATCH` endpoint using a `POST` request, you can include `X-HTTP-Method-Override:PATCH` as a header.

## Beta resources

We sometimes release new API resources in **beta** status before we release them with general availability.

Resources that are in beta are still undergoing testing and development. They may change without notice, including becoming backwards incompatible.

We try to promote resources into general availability as quickly as possible. This happens after sufficient testing and when we're satisfied that we no longer need to make backwards-incompatible changes.

We mark beta resources with a \"Beta\" callout in our documentation, pictured below:

> ### This feature is in beta
>
> To use this feature, pass in a header including the `LD-API-Version` key with value set to `beta`. Use this header with each call. To learn more, read [Beta resources](https://launchdarkly.com/docs/api#beta-resources).
>
> Resources that are in beta are still undergoing testing and development. They may change without notice, including becoming backwards incompatible.

### Using beta resources

To use a beta resource, you must include a header in the request. If you call a beta resource without this header, you receive a `403` response.

Use this header:

```
LD-API-Version: beta
```

## Federal environments

The version of LaunchDarkly that is available on domains controlled by the United States government is different from the version of LaunchDarkly available to the general public. If you are an employee or contractor for a United States federal agency and use LaunchDarkly in your work, you likely use the federal instance of LaunchDarkly.

If you are working in the federal instance of LaunchDarkly, the base URI for each request is `https://app.launchdarkly.us`.

To learn more, read [LaunchDarkly in federal environments](https://launchdarkly.com/docs/home/infrastructure/federal).

## Versioning

We try hard to keep our REST API backwards compatible, but we occasionally have to make backwards-incompatible changes in the process of shipping new features. These breaking changes can cause unexpected behavior if you don't prepare for them accordingly.

Updates to our REST API include support for the latest features in LaunchDarkly. We also release a new version of our REST API every time we make a breaking change. We provide simultaneous support for multiple API versions so you can migrate from your current API version to a new version at your own pace.

### Setting the API version per request

You can set the API version on a specific request by sending an `LD-API-Version` header, as shown in the example below:

```
LD-API-Version: 20240415
```

The header value is the version number of the API version you would like to request. The number for each version corresponds to the date the version was released in `yyyymmdd` format. In the example above the version `20240415` corresponds to April 15, 2024.

### Setting the API version per access token

When you create an access token, you must specify a specific version of the API to use. This ensures that integrations using this token cannot be broken by version changes.

Tokens created before versioning was released have their version set to `20160426`, which is the version of the API that existed before the current versioning scheme, so that they continue working the same way they did before versioning.

If you would like to upgrade your integration to use a new API version, you can explicitly set the header described above.

> ### Best practice: Set the header for every client or integration
>
> We recommend that you set the API version header explicitly in any client or integration you build.
>
> Only rely on the access token API version during manual testing.

### API version changelog

<table>
  <tr>
    <th>Version</th>
    <th>Changes</th>
    <th>End of life (EOL)</th>
  </tr>
  <tr>
    <td>`20240415`</td>
    <td>
      <ul><li>Changed several endpoints from unpaginated to paginated. Use the `limit` and `offset` query parameters to page through the results.</li> <li>Changed the [list access tokens](https://launchdarkly.com/docs/api/access-tokens/get-tokens) endpoint: <ul><li>Response is now paginated with a default limit of `25`</li></ul></li> <li>Changed the [list account members](https://launchdarkly.com/docs/api/account-members/get-members) endpoint: <ul><li>The `accessCheck` filter is no longer available</li></ul></li> <li>Changed the [list custom roles](https://launchdarkly.com/docs/api/custom-roles/get-custom-roles) endpoint: <ul><li>Response is now paginated with a default limit of `20`</li></ul></li> <li>Changed the [list feature flags](https://launchdarkly.com/docs/api/feature-flags/get-feature-flags) endpoint: <ul><li>Response is now paginated with a default limit of `20`</li><li>The `environments` field is now only returned if the request is filtered by environment, using the `filterEnv` query parameter</li><li>The `followerId`, `hasDataExport`, `status`, `contextKindTargeted`, and `segmentTargeted` filters are no longer available</li><li>The `compare` query parameter is no longer available</li></ul></li> <li>Changed the [list segments](https://launchdarkly.com/docs/api/segments/get-segments) endpoint: <ul><li>Response is now paginated with a default limit of `20`</li></ul></li> <li>Changed the [list teams](https://launchdarkly.com/docs/api/teams/get-teams) endpoint: <ul><li>The `expand` parameter no longer supports including `projects` or `roles`</li><li>In paginated results, the maximum page size is now 100</li></ul></li> <li>Changed the [get workflows](https://launchdarkly.com/docs/api/workflows/get-workflows) endpoint: <ul><li>Response is now paginated with a default limit of `20`</li><li>The `_conflicts` field in the response is no longer available</li></ul></li> </ul>
    </td>
    <td>Current</td>
  </tr>
  <tr>
    <td>`20220603`</td>
    <td>
      <ul><li>Changed the [list projects](https://launchdarkly.com/docs/api/projects/get-projects) return value:<ul><li>Response is now paginated with a default limit of `20`.</li><li>Added support for filter and sort.</li><li>The project `environments` field is now expandable. This field is omitted by default.</li></ul></li><li>Changed the [get project](https://launchdarkly.com/docs/api/projects/get-project) return value:<ul><li>The `environments` field is now expandable. This field is omitted by default.</li></ul></li></ul>
    </td>
    <td>2025-04-15</td>
  </tr>
  <tr>
    <td>`20210729`</td>
    <td>
      <ul><li>Changed the [create approval request](https://launchdarkly.com/docs/api/approvals/post-approval-request) return value. It now returns HTTP Status Code `201` instead of `200`.</li><li> Changed the [get user](https://launchdarkly.com/docs/api/users/get-user) return value. It now returns a user record, not a user. </li><li>Added additional optional fields to environment, segments, flags, members, and segments, including the ability to create big segments. </li><li> Added default values for flag variations when new environments are created. </li><li>Added filtering and pagination for getting flags and members, including `limit`, `number`, `filter`, and `sort` query parameters. </li><li>Added endpoints for expiring user targets for flags and segments, scheduled changes, access tokens, Relay Proxy configuration, integrations and subscriptions, and approvals. </li></ul>
    </td>
    <td>2023-06-03</td>
  </tr>
  <tr>
    <td>`20191212`</td>
    <td>
      <ul><li>[List feature flags](https://launchdarkly.com/docs/api/feature-flags/get-feature-flags) now defaults to sending summaries of feature flag configurations, equivalent to setting the query parameter `summary=true`. Summaries omit flag targeting rules and individual user targets from the payload. </li><li> Added endpoints for flags, flag status, projects, environments, audit logs, members, users, custom roles, segments, usage, streams, events, and data export. </li></ul>
    </td>
    <td>2022-07-29</td>
  </tr>
  <tr>
    <td>`20160426`</td>
    <td>
      <ul><li>Initial versioning of API. Tokens created before versioning have their version set to this.</li></ul>
    </td>
    <td>2020-12-12</td>
  </tr>
</table>

To learn more about how EOL is determined, read LaunchDarkly's [End of Life (EOL) Policy](https://launchdarkly.com/policies/end-of-life-policy/).


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.0
- Package version: 17.2.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://support.launchdarkly.com](https://support.launchdarkly.com)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build launchdarkly_api.gemspec
```

Then either install the gem locally:

```shell
gem install ./launchdarkly_api-17.2.0.gem
```

(for development, run `gem install --dev ./launchdarkly_api-17.2.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'launchdarkly_api', '~> 17.2.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/launchdarkly/api-client-ruby, then add the following in the Gemfile:

    gem 'launchdarkly_api', :git => 'https://github.com/launchdarkly/api-client-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'launchdarkly_api'

# Setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = LaunchDarklyApi::AIConfigsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
config_key = 'config_key_example' # String | 

begin
  #Delete AI Config
  api_instance.delete_ai_config(ld_api_version, project_key, config_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling AIConfigsBetaApi->delete_ai_config: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://app.launchdarkly.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*LaunchDarklyApi::AIConfigsBetaApi* | [**delete_ai_config**](docs/AIConfigsBetaApi.md#delete_ai_config) | **DELETE** /api/v2/projects/{projectKey}/ai-configs/{configKey} | Delete AI Config
*LaunchDarklyApi::AIConfigsBetaApi* | [**delete_ai_config_variation**](docs/AIConfigsBetaApi.md#delete_ai_config_variation) | **DELETE** /api/v2/projects/{projectKey}/ai-configs/{configKey}/variations/{variationKey} | Delete AI Config variation
*LaunchDarklyApi::AIConfigsBetaApi* | [**delete_model_config**](docs/AIConfigsBetaApi.md#delete_model_config) | **DELETE** /api/v2/projects/{projectKey}/ai-configs/model-configs/{modelConfigKey} | Delete an AI model config
*LaunchDarklyApi::AIConfigsBetaApi* | [**get_ai_config**](docs/AIConfigsBetaApi.md#get_ai_config) | **GET** /api/v2/projects/{projectKey}/ai-configs/{configKey} | Get AI Config
*LaunchDarklyApi::AIConfigsBetaApi* | [**get_ai_config_metrics**](docs/AIConfigsBetaApi.md#get_ai_config_metrics) | **GET** /api/v2/projects/{projectKey}/ai-configs/{configKey}/metrics | Get AI Config metrics
*LaunchDarklyApi::AIConfigsBetaApi* | [**get_ai_config_metrics_by_variation**](docs/AIConfigsBetaApi.md#get_ai_config_metrics_by_variation) | **GET** /api/v2/projects/{projectKey}/ai-configs/{configKey}/metrics-by-variation | Get AI Config metrics by variation
*LaunchDarklyApi::AIConfigsBetaApi* | [**get_ai_config_variation**](docs/AIConfigsBetaApi.md#get_ai_config_variation) | **GET** /api/v2/projects/{projectKey}/ai-configs/{configKey}/variations/{variationKey} | Get AI Config variation
*LaunchDarklyApi::AIConfigsBetaApi* | [**get_ai_configs**](docs/AIConfigsBetaApi.md#get_ai_configs) | **GET** /api/v2/projects/{projectKey}/ai-configs | List AI Configs
*LaunchDarklyApi::AIConfigsBetaApi* | [**get_model_config**](docs/AIConfigsBetaApi.md#get_model_config) | **GET** /api/v2/projects/{projectKey}/ai-configs/model-configs/{modelConfigKey} | Get AI model config
*LaunchDarklyApi::AIConfigsBetaApi* | [**list_model_configs**](docs/AIConfigsBetaApi.md#list_model_configs) | **GET** /api/v2/projects/{projectKey}/ai-configs/model-configs | List AI model configs
*LaunchDarklyApi::AIConfigsBetaApi* | [**patch_ai_config**](docs/AIConfigsBetaApi.md#patch_ai_config) | **PATCH** /api/v2/projects/{projectKey}/ai-configs/{configKey} | Update AI Config
*LaunchDarklyApi::AIConfigsBetaApi* | [**patch_ai_config_variation**](docs/AIConfigsBetaApi.md#patch_ai_config_variation) | **PATCH** /api/v2/projects/{projectKey}/ai-configs/{configKey}/variations/{variationKey} | Update AI Config variation
*LaunchDarklyApi::AIConfigsBetaApi* | [**post_ai_config**](docs/AIConfigsBetaApi.md#post_ai_config) | **POST** /api/v2/projects/{projectKey}/ai-configs | Create new AI Config
*LaunchDarklyApi::AIConfigsBetaApi* | [**post_ai_config_variation**](docs/AIConfigsBetaApi.md#post_ai_config_variation) | **POST** /api/v2/projects/{projectKey}/ai-configs/{configKey}/variations | Create AI Config variation
*LaunchDarklyApi::AIConfigsBetaApi* | [**post_model_config**](docs/AIConfigsBetaApi.md#post_model_config) | **POST** /api/v2/projects/{projectKey}/ai-configs/model-configs | Create an AI model config
*LaunchDarklyApi::AccessTokensApi* | [**delete_token**](docs/AccessTokensApi.md#delete_token) | **DELETE** /api/v2/tokens/{id} | Delete access token
*LaunchDarklyApi::AccessTokensApi* | [**get_token**](docs/AccessTokensApi.md#get_token) | **GET** /api/v2/tokens/{id} | Get access token
*LaunchDarklyApi::AccessTokensApi* | [**get_tokens**](docs/AccessTokensApi.md#get_tokens) | **GET** /api/v2/tokens | List access tokens
*LaunchDarklyApi::AccessTokensApi* | [**patch_token**](docs/AccessTokensApi.md#patch_token) | **PATCH** /api/v2/tokens/{id} | Patch access token
*LaunchDarklyApi::AccessTokensApi* | [**post_token**](docs/AccessTokensApi.md#post_token) | **POST** /api/v2/tokens | Create access token
*LaunchDarklyApi::AccessTokensApi* | [**reset_token**](docs/AccessTokensApi.md#reset_token) | **POST** /api/v2/tokens/{id}/reset | Reset access token
*LaunchDarklyApi::AccountMembersApi* | [**delete_member**](docs/AccountMembersApi.md#delete_member) | **DELETE** /api/v2/members/{id} | Delete account member
*LaunchDarklyApi::AccountMembersApi* | [**get_member**](docs/AccountMembersApi.md#get_member) | **GET** /api/v2/members/{id} | Get account member
*LaunchDarklyApi::AccountMembersApi* | [**get_members**](docs/AccountMembersApi.md#get_members) | **GET** /api/v2/members | List account members
*LaunchDarklyApi::AccountMembersApi* | [**patch_member**](docs/AccountMembersApi.md#patch_member) | **PATCH** /api/v2/members/{id} | Modify an account member
*LaunchDarklyApi::AccountMembersApi* | [**post_member_teams**](docs/AccountMembersApi.md#post_member_teams) | **POST** /api/v2/members/{id}/teams | Add a member to teams
*LaunchDarklyApi::AccountMembersApi* | [**post_members**](docs/AccountMembersApi.md#post_members) | **POST** /api/v2/members | Invite new members
*LaunchDarklyApi::AccountMembersBetaApi* | [**patch_members**](docs/AccountMembersBetaApi.md#patch_members) | **PATCH** /api/v2/members | Modify account members
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_data_export_events_usage**](docs/AccountUsageBetaApi.md#get_data_export_events_usage) | **GET** /api/v2/usage/data-export-events | Get data export events usage
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_evaluations_usage**](docs/AccountUsageBetaApi.md#get_evaluations_usage) | **GET** /api/v2/usage/evaluations/{projectKey}/{environmentKey}/{featureFlagKey} | Get evaluations usage
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_events_usage**](docs/AccountUsageBetaApi.md#get_events_usage) | **GET** /api/v2/usage/events/{type} | Get events usage
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_experimentation_keys_usage**](docs/AccountUsageBetaApi.md#get_experimentation_keys_usage) | **GET** /api/v2/usage/experimentation-keys | Get experimentation keys usage
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_experimentation_units_usage**](docs/AccountUsageBetaApi.md#get_experimentation_units_usage) | **GET** /api/v2/usage/experimentation-units | Get experimentation units usage
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_mau_sdks_by_type**](docs/AccountUsageBetaApi.md#get_mau_sdks_by_type) | **GET** /api/v2/usage/mau/sdks | Get MAU SDKs by type
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_mau_usage**](docs/AccountUsageBetaApi.md#get_mau_usage) | **GET** /api/v2/usage/mau | Get MAU usage
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_mau_usage_by_category**](docs/AccountUsageBetaApi.md#get_mau_usage_by_category) | **GET** /api/v2/usage/mau/bycategory | Get MAU usage by category
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_service_connection_usage**](docs/AccountUsageBetaApi.md#get_service_connection_usage) | **GET** /api/v2/usage/service-connections | Get service connection usage
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_stream_usage**](docs/AccountUsageBetaApi.md#get_stream_usage) | **GET** /api/v2/usage/streams/{source} | Get stream usage
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_stream_usage_by_sdk_version**](docs/AccountUsageBetaApi.md#get_stream_usage_by_sdk_version) | **GET** /api/v2/usage/streams/{source}/bysdkversion | Get stream usage by SDK version
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_stream_usage_sdkversion**](docs/AccountUsageBetaApi.md#get_stream_usage_sdkversion) | **GET** /api/v2/usage/streams/{source}/sdkversions | Get stream usage SDK versions
*LaunchDarklyApi::AnnouncementsApi* | [**create_announcement_public**](docs/AnnouncementsApi.md#create_announcement_public) | **POST** /api/v2/announcements | Create an announcement
*LaunchDarklyApi::AnnouncementsApi* | [**delete_announcement_public**](docs/AnnouncementsApi.md#delete_announcement_public) | **DELETE** /api/v2/announcements/{announcementId} | Delete an announcement
*LaunchDarklyApi::AnnouncementsApi* | [**get_announcements_public**](docs/AnnouncementsApi.md#get_announcements_public) | **GET** /api/v2/announcements | Get announcements
*LaunchDarklyApi::AnnouncementsApi* | [**update_announcement_public**](docs/AnnouncementsApi.md#update_announcement_public) | **PATCH** /api/v2/announcements/{announcementId} | Update an announcement
*LaunchDarklyApi::ApplicationsBetaApi* | [**delete_application**](docs/ApplicationsBetaApi.md#delete_application) | **DELETE** /api/v2/applications/{applicationKey} | Delete application
*LaunchDarklyApi::ApplicationsBetaApi* | [**delete_application_version**](docs/ApplicationsBetaApi.md#delete_application_version) | **DELETE** /api/v2/applications/{applicationKey}/versions/{versionKey} | Delete application version
*LaunchDarklyApi::ApplicationsBetaApi* | [**get_application**](docs/ApplicationsBetaApi.md#get_application) | **GET** /api/v2/applications/{applicationKey} | Get application by key
*LaunchDarklyApi::ApplicationsBetaApi* | [**get_application_versions**](docs/ApplicationsBetaApi.md#get_application_versions) | **GET** /api/v2/applications/{applicationKey}/versions | Get application versions by application key
*LaunchDarklyApi::ApplicationsBetaApi* | [**get_applications**](docs/ApplicationsBetaApi.md#get_applications) | **GET** /api/v2/applications | Get applications
*LaunchDarklyApi::ApplicationsBetaApi* | [**patch_application**](docs/ApplicationsBetaApi.md#patch_application) | **PATCH** /api/v2/applications/{applicationKey} | Update application
*LaunchDarklyApi::ApplicationsBetaApi* | [**patch_application_version**](docs/ApplicationsBetaApi.md#patch_application_version) | **PATCH** /api/v2/applications/{applicationKey}/versions/{versionKey} | Update application version
*LaunchDarklyApi::ApprovalsApi* | [**delete_approval_request**](docs/ApprovalsApi.md#delete_approval_request) | **DELETE** /api/v2/approval-requests/{id} | Delete approval request
*LaunchDarklyApi::ApprovalsApi* | [**delete_approval_request_for_flag**](docs/ApprovalsApi.md#delete_approval_request_for_flag) | **DELETE** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{id} | Delete approval request for a flag
*LaunchDarklyApi::ApprovalsApi* | [**get_approval_for_flag**](docs/ApprovalsApi.md#get_approval_for_flag) | **GET** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{id} | Get approval request for a flag
*LaunchDarklyApi::ApprovalsApi* | [**get_approval_request**](docs/ApprovalsApi.md#get_approval_request) | **GET** /api/v2/approval-requests/{id} | Get approval request
*LaunchDarklyApi::ApprovalsApi* | [**get_approval_requests**](docs/ApprovalsApi.md#get_approval_requests) | **GET** /api/v2/approval-requests | List approval requests
*LaunchDarklyApi::ApprovalsApi* | [**get_approvals_for_flag**](docs/ApprovalsApi.md#get_approvals_for_flag) | **GET** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests | List approval requests for a flag
*LaunchDarklyApi::ApprovalsApi* | [**post_approval_request**](docs/ApprovalsApi.md#post_approval_request) | **POST** /api/v2/approval-requests | Create approval request
*LaunchDarklyApi::ApprovalsApi* | [**post_approval_request_apply**](docs/ApprovalsApi.md#post_approval_request_apply) | **POST** /api/v2/approval-requests/{id}/apply | Apply approval request
*LaunchDarklyApi::ApprovalsApi* | [**post_approval_request_apply_for_flag**](docs/ApprovalsApi.md#post_approval_request_apply_for_flag) | **POST** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{id}/apply | Apply approval request for a flag
*LaunchDarklyApi::ApprovalsApi* | [**post_approval_request_for_flag**](docs/ApprovalsApi.md#post_approval_request_for_flag) | **POST** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests | Create approval request for a flag
*LaunchDarklyApi::ApprovalsApi* | [**post_approval_request_review**](docs/ApprovalsApi.md#post_approval_request_review) | **POST** /api/v2/approval-requests/{id}/reviews | Review approval request
*LaunchDarklyApi::ApprovalsApi* | [**post_approval_request_review_for_flag**](docs/ApprovalsApi.md#post_approval_request_review_for_flag) | **POST** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{id}/reviews | Review approval request for a flag
*LaunchDarklyApi::ApprovalsApi* | [**post_flag_copy_config_approval_request**](docs/ApprovalsApi.md#post_flag_copy_config_approval_request) | **POST** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests-flag-copy | Create approval request to copy flag configurations across environments
*LaunchDarklyApi::ApprovalsBetaApi* | [**patch_approval_request**](docs/ApprovalsBetaApi.md#patch_approval_request) | **PATCH** /api/v2/approval-requests/{id} | Update approval request
*LaunchDarklyApi::ApprovalsBetaApi* | [**patch_flag_config_approval_request**](docs/ApprovalsBetaApi.md#patch_flag_config_approval_request) | **PATCH** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{id} | Update flag approval request
*LaunchDarklyApi::AuditLogApi* | [**get_audit_log_entries**](docs/AuditLogApi.md#get_audit_log_entries) | **GET** /api/v2/auditlog | List audit log entries
*LaunchDarklyApi::AuditLogApi* | [**get_audit_log_entry**](docs/AuditLogApi.md#get_audit_log_entry) | **GET** /api/v2/auditlog/{id} | Get audit log entry
*LaunchDarklyApi::AuditLogApi* | [**post_audit_log_entries**](docs/AuditLogApi.md#post_audit_log_entries) | **POST** /api/v2/auditlog | Search audit log entries
*LaunchDarklyApi::CodeReferencesApi* | [**delete_branches**](docs/CodeReferencesApi.md#delete_branches) | **POST** /api/v2/code-refs/repositories/{repo}/branch-delete-tasks | Delete branches
*LaunchDarklyApi::CodeReferencesApi* | [**delete_repository**](docs/CodeReferencesApi.md#delete_repository) | **DELETE** /api/v2/code-refs/repositories/{repo} | Delete repository
*LaunchDarklyApi::CodeReferencesApi* | [**get_branch**](docs/CodeReferencesApi.md#get_branch) | **GET** /api/v2/code-refs/repositories/{repo}/branches/{branch} | Get branch
*LaunchDarklyApi::CodeReferencesApi* | [**get_branches**](docs/CodeReferencesApi.md#get_branches) | **GET** /api/v2/code-refs/repositories/{repo}/branches | List branches
*LaunchDarklyApi::CodeReferencesApi* | [**get_extinctions**](docs/CodeReferencesApi.md#get_extinctions) | **GET** /api/v2/code-refs/extinctions | List extinctions
*LaunchDarklyApi::CodeReferencesApi* | [**get_repositories**](docs/CodeReferencesApi.md#get_repositories) | **GET** /api/v2/code-refs/repositories | List repositories
*LaunchDarklyApi::CodeReferencesApi* | [**get_repository**](docs/CodeReferencesApi.md#get_repository) | **GET** /api/v2/code-refs/repositories/{repo} | Get repository
*LaunchDarklyApi::CodeReferencesApi* | [**get_root_statistic**](docs/CodeReferencesApi.md#get_root_statistic) | **GET** /api/v2/code-refs/statistics | Get links to code reference repositories for each project
*LaunchDarklyApi::CodeReferencesApi* | [**get_statistics**](docs/CodeReferencesApi.md#get_statistics) | **GET** /api/v2/code-refs/statistics/{projectKey} | Get code references statistics for flags
*LaunchDarklyApi::CodeReferencesApi* | [**patch_repository**](docs/CodeReferencesApi.md#patch_repository) | **PATCH** /api/v2/code-refs/repositories/{repo} | Update repository
*LaunchDarklyApi::CodeReferencesApi* | [**post_extinction**](docs/CodeReferencesApi.md#post_extinction) | **POST** /api/v2/code-refs/repositories/{repo}/branches/{branch}/extinction-events | Create extinction
*LaunchDarklyApi::CodeReferencesApi* | [**post_repository**](docs/CodeReferencesApi.md#post_repository) | **POST** /api/v2/code-refs/repositories | Create repository
*LaunchDarklyApi::CodeReferencesApi* | [**put_branch**](docs/CodeReferencesApi.md#put_branch) | **PUT** /api/v2/code-refs/repositories/{repo}/branches/{branch} | Upsert branch
*LaunchDarklyApi::ContextSettingsApi* | [**put_context_flag_setting**](docs/ContextSettingsApi.md#put_context_flag_setting) | **PUT** /api/v2/projects/{projectKey}/environments/{environmentKey}/contexts/{contextKind}/{contextKey}/flags/{featureFlagKey} | Update flag settings for context
*LaunchDarklyApi::ContextsApi* | [**delete_context_instances**](docs/ContextsApi.md#delete_context_instances) | **DELETE** /api/v2/projects/{projectKey}/environments/{environmentKey}/context-instances/{id} | Delete context instances
*LaunchDarklyApi::ContextsApi* | [**evaluate_context_instance**](docs/ContextsApi.md#evaluate_context_instance) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/flags/evaluate | Evaluate flags for context instance
*LaunchDarklyApi::ContextsApi* | [**get_context_attribute_names**](docs/ContextsApi.md#get_context_attribute_names) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/context-attributes | Get context attribute names
*LaunchDarklyApi::ContextsApi* | [**get_context_attribute_values**](docs/ContextsApi.md#get_context_attribute_values) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/context-attributes/{attributeName} | Get context attribute values
*LaunchDarklyApi::ContextsApi* | [**get_context_instances**](docs/ContextsApi.md#get_context_instances) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/context-instances/{id} | Get context instances
*LaunchDarklyApi::ContextsApi* | [**get_context_kinds_by_project_key**](docs/ContextsApi.md#get_context_kinds_by_project_key) | **GET** /api/v2/projects/{projectKey}/context-kinds | Get context kinds
*LaunchDarklyApi::ContextsApi* | [**get_contexts**](docs/ContextsApi.md#get_contexts) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/contexts/{kind}/{key} | Get contexts
*LaunchDarklyApi::ContextsApi* | [**put_context_kind**](docs/ContextsApi.md#put_context_kind) | **PUT** /api/v2/projects/{projectKey}/context-kinds/{key} | Create or update context kind
*LaunchDarklyApi::ContextsApi* | [**search_context_instances**](docs/ContextsApi.md#search_context_instances) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/context-instances/search | Search for context instances
*LaunchDarklyApi::ContextsApi* | [**search_contexts**](docs/ContextsApi.md#search_contexts) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/contexts/search | Search for contexts
*LaunchDarklyApi::CustomRolesApi* | [**delete_custom_role**](docs/CustomRolesApi.md#delete_custom_role) | **DELETE** /api/v2/roles/{customRoleKey} | Delete custom role
*LaunchDarklyApi::CustomRolesApi* | [**get_custom_role**](docs/CustomRolesApi.md#get_custom_role) | **GET** /api/v2/roles/{customRoleKey} | Get custom role
*LaunchDarklyApi::CustomRolesApi* | [**get_custom_roles**](docs/CustomRolesApi.md#get_custom_roles) | **GET** /api/v2/roles | List custom roles
*LaunchDarklyApi::CustomRolesApi* | [**patch_custom_role**](docs/CustomRolesApi.md#patch_custom_role) | **PATCH** /api/v2/roles/{customRoleKey} | Update custom role
*LaunchDarklyApi::CustomRolesApi* | [**post_custom_role**](docs/CustomRolesApi.md#post_custom_role) | **POST** /api/v2/roles | Create custom role
*LaunchDarklyApi::DataExportDestinationsApi* | [**delete_destination**](docs/DataExportDestinationsApi.md#delete_destination) | **DELETE** /api/v2/destinations/{projectKey}/{environmentKey}/{id} | Delete Data Export destination
*LaunchDarklyApi::DataExportDestinationsApi* | [**get_destination**](docs/DataExportDestinationsApi.md#get_destination) | **GET** /api/v2/destinations/{projectKey}/{environmentKey}/{id} | Get destination
*LaunchDarklyApi::DataExportDestinationsApi* | [**get_destinations**](docs/DataExportDestinationsApi.md#get_destinations) | **GET** /api/v2/destinations | List destinations
*LaunchDarklyApi::DataExportDestinationsApi* | [**patch_destination**](docs/DataExportDestinationsApi.md#patch_destination) | **PATCH** /api/v2/destinations/{projectKey}/{environmentKey}/{id} | Update Data Export destination
*LaunchDarklyApi::DataExportDestinationsApi* | [**post_destination**](docs/DataExportDestinationsApi.md#post_destination) | **POST** /api/v2/destinations/{projectKey}/{environmentKey} | Create Data Export destination
*LaunchDarklyApi::DataExportDestinationsApi* | [**post_generate_warehouse_destination_key_pair**](docs/DataExportDestinationsApi.md#post_generate_warehouse_destination_key_pair) | **POST** /api/v2/destinations/generate-warehouse-destination-key-pair | Generate Snowflake destination key pair
*LaunchDarklyApi::EnvironmentsApi* | [**delete_environment**](docs/EnvironmentsApi.md#delete_environment) | **DELETE** /api/v2/projects/{projectKey}/environments/{environmentKey} | Delete environment
*LaunchDarklyApi::EnvironmentsApi* | [**get_environment**](docs/EnvironmentsApi.md#get_environment) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey} | Get environment
*LaunchDarklyApi::EnvironmentsApi* | [**get_environments_by_project**](docs/EnvironmentsApi.md#get_environments_by_project) | **GET** /api/v2/projects/{projectKey}/environments | List environments
*LaunchDarklyApi::EnvironmentsApi* | [**patch_environment**](docs/EnvironmentsApi.md#patch_environment) | **PATCH** /api/v2/projects/{projectKey}/environments/{environmentKey} | Update environment
*LaunchDarklyApi::EnvironmentsApi* | [**post_environment**](docs/EnvironmentsApi.md#post_environment) | **POST** /api/v2/projects/{projectKey}/environments | Create environment
*LaunchDarklyApi::EnvironmentsApi* | [**reset_environment_mobile_key**](docs/EnvironmentsApi.md#reset_environment_mobile_key) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/mobileKey | Reset environment mobile SDK key
*LaunchDarklyApi::EnvironmentsApi* | [**reset_environment_sdk_key**](docs/EnvironmentsApi.md#reset_environment_sdk_key) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/apiKey | Reset environment SDK key
*LaunchDarklyApi::ExperimentsApi* | [**create_experiment**](docs/ExperimentsApi.md#create_experiment) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments | Create experiment
*LaunchDarklyApi::ExperimentsApi* | [**create_iteration**](docs/ExperimentsApi.md#create_iteration) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments/{experimentKey}/iterations | Create iteration
*LaunchDarklyApi::ExperimentsApi* | [**get_experiment**](docs/ExperimentsApi.md#get_experiment) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments/{experimentKey} | Get experiment
*LaunchDarklyApi::ExperimentsApi* | [**get_experiment_results**](docs/ExperimentsApi.md#get_experiment_results) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments/{experimentKey}/metrics/{metricKey}/results | Get experiment results (Deprecated)
*LaunchDarklyApi::ExperimentsApi* | [**get_experiment_results_for_metric_group**](docs/ExperimentsApi.md#get_experiment_results_for_metric_group) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments/{experimentKey}/metric-groups/{metricGroupKey}/results | Get experiment results for metric group (Deprecated)
*LaunchDarklyApi::ExperimentsApi* | [**get_experimentation_settings**](docs/ExperimentsApi.md#get_experimentation_settings) | **GET** /api/v2/projects/{projectKey}/experimentation-settings | Get experimentation settings
*LaunchDarklyApi::ExperimentsApi* | [**get_experiments**](docs/ExperimentsApi.md#get_experiments) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments | Get experiments
*LaunchDarklyApi::ExperimentsApi* | [**patch_experiment**](docs/ExperimentsApi.md#patch_experiment) | **PATCH** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments/{experimentKey} | Patch experiment
*LaunchDarklyApi::ExperimentsApi* | [**put_experimentation_settings**](docs/ExperimentsApi.md#put_experimentation_settings) | **PUT** /api/v2/projects/{projectKey}/experimentation-settings | Update experimentation settings
*LaunchDarklyApi::FeatureFlagsApi* | [**copy_feature_flag**](docs/FeatureFlagsApi.md#copy_feature_flag) | **POST** /api/v2/flags/{projectKey}/{featureFlagKey}/copy | Copy feature flag
*LaunchDarklyApi::FeatureFlagsApi* | [**delete_feature_flag**](docs/FeatureFlagsApi.md#delete_feature_flag) | **DELETE** /api/v2/flags/{projectKey}/{featureFlagKey} | Delete feature flag
*LaunchDarklyApi::FeatureFlagsApi* | [**get_expiring_context_targets**](docs/FeatureFlagsApi.md#get_expiring_context_targets) | **GET** /api/v2/flags/{projectKey}/{featureFlagKey}/expiring-targets/{environmentKey} | Get expiring context targets for feature flag
*LaunchDarklyApi::FeatureFlagsApi* | [**get_expiring_user_targets**](docs/FeatureFlagsApi.md#get_expiring_user_targets) | **GET** /api/v2/flags/{projectKey}/{featureFlagKey}/expiring-user-targets/{environmentKey} | Get expiring user targets for feature flag
*LaunchDarklyApi::FeatureFlagsApi* | [**get_feature_flag**](docs/FeatureFlagsApi.md#get_feature_flag) | **GET** /api/v2/flags/{projectKey}/{featureFlagKey} | Get feature flag
*LaunchDarklyApi::FeatureFlagsApi* | [**get_feature_flag_status**](docs/FeatureFlagsApi.md#get_feature_flag_status) | **GET** /api/v2/flag-statuses/{projectKey}/{environmentKey}/{featureFlagKey} | Get feature flag status
*LaunchDarklyApi::FeatureFlagsApi* | [**get_feature_flag_status_across_environments**](docs/FeatureFlagsApi.md#get_feature_flag_status_across_environments) | **GET** /api/v2/flag-status/{projectKey}/{featureFlagKey} | Get flag status across environments
*LaunchDarklyApi::FeatureFlagsApi* | [**get_feature_flag_statuses**](docs/FeatureFlagsApi.md#get_feature_flag_statuses) | **GET** /api/v2/flag-statuses/{projectKey}/{environmentKey} | List feature flag statuses
*LaunchDarklyApi::FeatureFlagsApi* | [**get_feature_flags**](docs/FeatureFlagsApi.md#get_feature_flags) | **GET** /api/v2/flags/{projectKey} | List feature flags
*LaunchDarklyApi::FeatureFlagsApi* | [**patch_expiring_targets**](docs/FeatureFlagsApi.md#patch_expiring_targets) | **PATCH** /api/v2/flags/{projectKey}/{featureFlagKey}/expiring-targets/{environmentKey} | Update expiring context targets on feature flag
*LaunchDarklyApi::FeatureFlagsApi* | [**patch_expiring_user_targets**](docs/FeatureFlagsApi.md#patch_expiring_user_targets) | **PATCH** /api/v2/flags/{projectKey}/{featureFlagKey}/expiring-user-targets/{environmentKey} | Update expiring user targets on feature flag
*LaunchDarklyApi::FeatureFlagsApi* | [**patch_feature_flag**](docs/FeatureFlagsApi.md#patch_feature_flag) | **PATCH** /api/v2/flags/{projectKey}/{featureFlagKey} | Update feature flag
*LaunchDarklyApi::FeatureFlagsApi* | [**post_feature_flag**](docs/FeatureFlagsApi.md#post_feature_flag) | **POST** /api/v2/flags/{projectKey} | Create a feature flag
*LaunchDarklyApi::FeatureFlagsApi* | [**post_migration_safety_issues**](docs/FeatureFlagsApi.md#post_migration_safety_issues) | **POST** /api/v2/projects/{projectKey}/flags/{flagKey}/environments/{environmentKey}/migration-safety-issues | Get migration safety issues
*LaunchDarklyApi::FeatureFlagsBetaApi* | [**get_dependent_flags**](docs/FeatureFlagsBetaApi.md#get_dependent_flags) | **GET** /api/v2/flags/{projectKey}/{featureFlagKey}/dependent-flags | List dependent feature flags
*LaunchDarklyApi::FeatureFlagsBetaApi* | [**get_dependent_flags_by_env**](docs/FeatureFlagsBetaApi.md#get_dependent_flags_by_env) | **GET** /api/v2/flags/{projectKey}/{environmentKey}/{featureFlagKey}/dependent-flags | List dependent feature flags by environment
*LaunchDarklyApi::FlagImportConfigurationsBetaApi* | [**create_flag_import_configuration**](docs/FlagImportConfigurationsBetaApi.md#create_flag_import_configuration) | **POST** /api/v2/integration-capabilities/flag-import/{projectKey}/{integrationKey} | Create a flag import configuration
*LaunchDarklyApi::FlagImportConfigurationsBetaApi* | [**delete_flag_import_configuration**](docs/FlagImportConfigurationsBetaApi.md#delete_flag_import_configuration) | **DELETE** /api/v2/integration-capabilities/flag-import/{projectKey}/{integrationKey}/{integrationId} | Delete a flag import configuration
*LaunchDarklyApi::FlagImportConfigurationsBetaApi* | [**get_flag_import_configuration**](docs/FlagImportConfigurationsBetaApi.md#get_flag_import_configuration) | **GET** /api/v2/integration-capabilities/flag-import/{projectKey}/{integrationKey}/{integrationId} | Get a single flag import configuration
*LaunchDarklyApi::FlagImportConfigurationsBetaApi* | [**get_flag_import_configurations**](docs/FlagImportConfigurationsBetaApi.md#get_flag_import_configurations) | **GET** /api/v2/integration-capabilities/flag-import | List all flag import configurations
*LaunchDarklyApi::FlagImportConfigurationsBetaApi* | [**patch_flag_import_configuration**](docs/FlagImportConfigurationsBetaApi.md#patch_flag_import_configuration) | **PATCH** /api/v2/integration-capabilities/flag-import/{projectKey}/{integrationKey}/{integrationId} | Update a flag import configuration
*LaunchDarklyApi::FlagImportConfigurationsBetaApi* | [**trigger_flag_import_job**](docs/FlagImportConfigurationsBetaApi.md#trigger_flag_import_job) | **POST** /api/v2/integration-capabilities/flag-import/{projectKey}/{integrationKey}/{integrationId}/trigger | Trigger a single flag import run
*LaunchDarklyApi::FlagLinksBetaApi* | [**create_flag_link**](docs/FlagLinksBetaApi.md#create_flag_link) | **POST** /api/v2/flag-links/projects/{projectKey}/flags/{featureFlagKey} | Create flag link
*LaunchDarklyApi::FlagLinksBetaApi* | [**delete_flag_link**](docs/FlagLinksBetaApi.md#delete_flag_link) | **DELETE** /api/v2/flag-links/projects/{projectKey}/flags/{featureFlagKey}/{id} | Delete flag link
*LaunchDarklyApi::FlagLinksBetaApi* | [**get_flag_links**](docs/FlagLinksBetaApi.md#get_flag_links) | **GET** /api/v2/flag-links/projects/{projectKey}/flags/{featureFlagKey} | List flag links
*LaunchDarklyApi::FlagLinksBetaApi* | [**update_flag_link**](docs/FlagLinksBetaApi.md#update_flag_link) | **PATCH** /api/v2/flag-links/projects/{projectKey}/flags/{featureFlagKey}/{id} | Update flag link
*LaunchDarklyApi::FlagTriggersApi* | [**create_trigger_workflow**](docs/FlagTriggersApi.md#create_trigger_workflow) | **POST** /api/v2/flags/{projectKey}/{featureFlagKey}/triggers/{environmentKey} | Create flag trigger
*LaunchDarklyApi::FlagTriggersApi* | [**delete_trigger_workflow**](docs/FlagTriggersApi.md#delete_trigger_workflow) | **DELETE** /api/v2/flags/{projectKey}/{featureFlagKey}/triggers/{environmentKey}/{id} | Delete flag trigger
*LaunchDarklyApi::FlagTriggersApi* | [**get_trigger_workflow_by_id**](docs/FlagTriggersApi.md#get_trigger_workflow_by_id) | **GET** /api/v2/flags/{projectKey}/{featureFlagKey}/triggers/{environmentKey}/{id} | Get flag trigger by ID
*LaunchDarklyApi::FlagTriggersApi* | [**get_trigger_workflows**](docs/FlagTriggersApi.md#get_trigger_workflows) | **GET** /api/v2/flags/{projectKey}/{featureFlagKey}/triggers/{environmentKey} | List flag triggers
*LaunchDarklyApi::FlagTriggersApi* | [**patch_trigger_workflow**](docs/FlagTriggersApi.md#patch_trigger_workflow) | **PATCH** /api/v2/flags/{projectKey}/{featureFlagKey}/triggers/{environmentKey}/{id} | Update flag trigger
*LaunchDarklyApi::FollowFlagsApi* | [**delete_flag_follower**](docs/FollowFlagsApi.md#delete_flag_follower) | **DELETE** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/followers/{memberId} | Remove a member as a follower of a flag in a project and environment
*LaunchDarklyApi::FollowFlagsApi* | [**get_flag_followers**](docs/FollowFlagsApi.md#get_flag_followers) | **GET** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/followers | Get followers of a flag in a project and environment
*LaunchDarklyApi::FollowFlagsApi* | [**get_followers_by_proj_env**](docs/FollowFlagsApi.md#get_followers_by_proj_env) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/followers | Get followers of all flags in a given project and environment
*LaunchDarklyApi::FollowFlagsApi* | [**put_flag_follower**](docs/FollowFlagsApi.md#put_flag_follower) | **PUT** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/followers/{memberId} | Add a member as a follower of a flag in a project and environment
*LaunchDarklyApi::HoldoutsBetaApi* | [**get_all_holdouts**](docs/HoldoutsBetaApi.md#get_all_holdouts) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/holdouts | Get all holdouts
*LaunchDarklyApi::HoldoutsBetaApi* | [**get_holdout**](docs/HoldoutsBetaApi.md#get_holdout) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/holdouts/{holdoutKey} | Get holdout
*LaunchDarklyApi::HoldoutsBetaApi* | [**get_holdout_by_id**](docs/HoldoutsBetaApi.md#get_holdout_by_id) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/holdouts/id/{holdoutId} | Get Holdout by Id
*LaunchDarklyApi::HoldoutsBetaApi* | [**patch_holdout**](docs/HoldoutsBetaApi.md#patch_holdout) | **PATCH** /api/v2/projects/{projectKey}/environments/{environmentKey}/holdouts/{holdoutKey} | Patch holdout
*LaunchDarklyApi::HoldoutsBetaApi* | [**post_holdout**](docs/HoldoutsBetaApi.md#post_holdout) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/holdouts | Create holdout
*LaunchDarklyApi::InsightsChartsBetaApi* | [**get_deployment_frequency_chart**](docs/InsightsChartsBetaApi.md#get_deployment_frequency_chart) | **GET** /api/v2/engineering-insights/charts/deployments/frequency | Get deployment frequency chart data
*LaunchDarklyApi::InsightsChartsBetaApi* | [**get_flag_status_chart**](docs/InsightsChartsBetaApi.md#get_flag_status_chart) | **GET** /api/v2/engineering-insights/charts/flags/status | Get flag status chart data
*LaunchDarklyApi::InsightsChartsBetaApi* | [**get_lead_time_chart**](docs/InsightsChartsBetaApi.md#get_lead_time_chart) | **GET** /api/v2/engineering-insights/charts/lead-time | Get lead time chart data
*LaunchDarklyApi::InsightsChartsBetaApi* | [**get_release_frequency_chart**](docs/InsightsChartsBetaApi.md#get_release_frequency_chart) | **GET** /api/v2/engineering-insights/charts/releases/frequency | Get release frequency chart data
*LaunchDarklyApi::InsightsChartsBetaApi* | [**get_stale_flags_chart**](docs/InsightsChartsBetaApi.md#get_stale_flags_chart) | **GET** /api/v2/engineering-insights/charts/flags/stale | Get stale flags chart data
*LaunchDarklyApi::InsightsDeploymentsBetaApi* | [**create_deployment_event**](docs/InsightsDeploymentsBetaApi.md#create_deployment_event) | **POST** /api/v2/engineering-insights/deployment-events | Create deployment event
*LaunchDarklyApi::InsightsDeploymentsBetaApi* | [**get_deployment**](docs/InsightsDeploymentsBetaApi.md#get_deployment) | **GET** /api/v2/engineering-insights/deployments/{deploymentID} | Get deployment
*LaunchDarklyApi::InsightsDeploymentsBetaApi* | [**get_deployments**](docs/InsightsDeploymentsBetaApi.md#get_deployments) | **GET** /api/v2/engineering-insights/deployments | List deployments
*LaunchDarklyApi::InsightsDeploymentsBetaApi* | [**update_deployment**](docs/InsightsDeploymentsBetaApi.md#update_deployment) | **PATCH** /api/v2/engineering-insights/deployments/{deploymentID} | Update deployment
*LaunchDarklyApi::InsightsFlagEventsBetaApi* | [**get_flag_events**](docs/InsightsFlagEventsBetaApi.md#get_flag_events) | **GET** /api/v2/engineering-insights/flag-events | List flag events
*LaunchDarklyApi::InsightsPullRequestsBetaApi* | [**get_pull_requests**](docs/InsightsPullRequestsBetaApi.md#get_pull_requests) | **GET** /api/v2/engineering-insights/pull-requests | List pull requests
*LaunchDarklyApi::InsightsRepositoriesBetaApi* | [**associate_repositories_and_projects**](docs/InsightsRepositoriesBetaApi.md#associate_repositories_and_projects) | **PUT** /api/v2/engineering-insights/repositories/projects | Associate repositories with projects
*LaunchDarklyApi::InsightsRepositoriesBetaApi* | [**delete_repository_project**](docs/InsightsRepositoriesBetaApi.md#delete_repository_project) | **DELETE** /api/v2/engineering-insights/repositories/{repositoryKey}/projects/{projectKey} | Remove repository project association
*LaunchDarklyApi::InsightsRepositoriesBetaApi* | [**get_insights_repositories**](docs/InsightsRepositoriesBetaApi.md#get_insights_repositories) | **GET** /api/v2/engineering-insights/repositories | List repositories
*LaunchDarklyApi::InsightsScoresBetaApi* | [**create_insight_group**](docs/InsightsScoresBetaApi.md#create_insight_group) | **POST** /api/v2/engineering-insights/insights/group | Create insight group
*LaunchDarklyApi::InsightsScoresBetaApi* | [**delete_insight_group**](docs/InsightsScoresBetaApi.md#delete_insight_group) | **DELETE** /api/v2/engineering-insights/insights/groups/{insightGroupKey} | Delete insight group
*LaunchDarklyApi::InsightsScoresBetaApi* | [**get_insight_group**](docs/InsightsScoresBetaApi.md#get_insight_group) | **GET** /api/v2/engineering-insights/insights/groups/{insightGroupKey} | Get insight group
*LaunchDarklyApi::InsightsScoresBetaApi* | [**get_insight_groups**](docs/InsightsScoresBetaApi.md#get_insight_groups) | **GET** /api/v2/engineering-insights/insights/groups | List insight groups
*LaunchDarklyApi::InsightsScoresBetaApi* | [**get_insights_scores**](docs/InsightsScoresBetaApi.md#get_insights_scores) | **GET** /api/v2/engineering-insights/insights/scores | Get insight scores
*LaunchDarklyApi::InsightsScoresBetaApi* | [**patch_insight_group**](docs/InsightsScoresBetaApi.md#patch_insight_group) | **PATCH** /api/v2/engineering-insights/insights/groups/{insightGroupKey} | Patch insight group
*LaunchDarklyApi::IntegrationAuditLogSubscriptionsApi* | [**create_subscription**](docs/IntegrationAuditLogSubscriptionsApi.md#create_subscription) | **POST** /api/v2/integrations/{integrationKey} | Create audit log subscription
*LaunchDarklyApi::IntegrationAuditLogSubscriptionsApi* | [**delete_subscription**](docs/IntegrationAuditLogSubscriptionsApi.md#delete_subscription) | **DELETE** /api/v2/integrations/{integrationKey}/{id} | Delete audit log subscription
*LaunchDarklyApi::IntegrationAuditLogSubscriptionsApi* | [**get_subscription_by_id**](docs/IntegrationAuditLogSubscriptionsApi.md#get_subscription_by_id) | **GET** /api/v2/integrations/{integrationKey}/{id} | Get audit log subscription by ID
*LaunchDarklyApi::IntegrationAuditLogSubscriptionsApi* | [**get_subscriptions**](docs/IntegrationAuditLogSubscriptionsApi.md#get_subscriptions) | **GET** /api/v2/integrations/{integrationKey} | Get audit log subscriptions by integration
*LaunchDarklyApi::IntegrationAuditLogSubscriptionsApi* | [**update_subscription**](docs/IntegrationAuditLogSubscriptionsApi.md#update_subscription) | **PATCH** /api/v2/integrations/{integrationKey}/{id} | Update audit log subscription
*LaunchDarklyApi::IntegrationDeliveryConfigurationsBetaApi* | [**create_integration_delivery_configuration**](docs/IntegrationDeliveryConfigurationsBetaApi.md#create_integration_delivery_configuration) | **POST** /api/v2/integration-capabilities/featureStore/{projectKey}/{environmentKey}/{integrationKey} | Create delivery configuration
*LaunchDarklyApi::IntegrationDeliveryConfigurationsBetaApi* | [**delete_integration_delivery_configuration**](docs/IntegrationDeliveryConfigurationsBetaApi.md#delete_integration_delivery_configuration) | **DELETE** /api/v2/integration-capabilities/featureStore/{projectKey}/{environmentKey}/{integrationKey}/{id} | Delete delivery configuration
*LaunchDarklyApi::IntegrationDeliveryConfigurationsBetaApi* | [**get_integration_delivery_configuration_by_environment**](docs/IntegrationDeliveryConfigurationsBetaApi.md#get_integration_delivery_configuration_by_environment) | **GET** /api/v2/integration-capabilities/featureStore/{projectKey}/{environmentKey} | Get delivery configurations by environment
*LaunchDarklyApi::IntegrationDeliveryConfigurationsBetaApi* | [**get_integration_delivery_configuration_by_id**](docs/IntegrationDeliveryConfigurationsBetaApi.md#get_integration_delivery_configuration_by_id) | **GET** /api/v2/integration-capabilities/featureStore/{projectKey}/{environmentKey}/{integrationKey}/{id} | Get delivery configuration by ID
*LaunchDarklyApi::IntegrationDeliveryConfigurationsBetaApi* | [**get_integration_delivery_configurations**](docs/IntegrationDeliveryConfigurationsBetaApi.md#get_integration_delivery_configurations) | **GET** /api/v2/integration-capabilities/featureStore | List all delivery configurations
*LaunchDarklyApi::IntegrationDeliveryConfigurationsBetaApi* | [**patch_integration_delivery_configuration**](docs/IntegrationDeliveryConfigurationsBetaApi.md#patch_integration_delivery_configuration) | **PATCH** /api/v2/integration-capabilities/featureStore/{projectKey}/{environmentKey}/{integrationKey}/{id} | Update delivery configuration
*LaunchDarklyApi::IntegrationDeliveryConfigurationsBetaApi* | [**validate_integration_delivery_configuration**](docs/IntegrationDeliveryConfigurationsBetaApi.md#validate_integration_delivery_configuration) | **POST** /api/v2/integration-capabilities/featureStore/{projectKey}/{environmentKey}/{integrationKey}/{id}/validate | Validate delivery configuration
*LaunchDarklyApi::IntegrationsBetaApi* | [**create_integration_configuration**](docs/IntegrationsBetaApi.md#create_integration_configuration) | **POST** /api/v2/integration-configurations/keys/{integrationKey} | Create integration configuration
*LaunchDarklyApi::IntegrationsBetaApi* | [**delete_integration_configuration**](docs/IntegrationsBetaApi.md#delete_integration_configuration) | **DELETE** /api/v2/integration-configurations/{integrationConfigurationId} | Delete integration configuration
*LaunchDarklyApi::IntegrationsBetaApi* | [**get_all_integration_configurations**](docs/IntegrationsBetaApi.md#get_all_integration_configurations) | **GET** /api/v2/integration-configurations/keys/{integrationKey} | Get all configurations for the integration
*LaunchDarklyApi::IntegrationsBetaApi* | [**get_integration_configuration**](docs/IntegrationsBetaApi.md#get_integration_configuration) | **GET** /api/v2/integration-configurations/{integrationConfigurationId} | Get an integration configuration
*LaunchDarklyApi::IntegrationsBetaApi* | [**update_integration_configuration**](docs/IntegrationsBetaApi.md#update_integration_configuration) | **PATCH** /api/v2/integration-configurations/{integrationConfigurationId} | Update integration configuration
*LaunchDarklyApi::LayersApi* | [**create_layer**](docs/LayersApi.md#create_layer) | **POST** /api/v2/projects/{projectKey}/layers | Create layer
*LaunchDarklyApi::LayersApi* | [**get_layers**](docs/LayersApi.md#get_layers) | **GET** /api/v2/projects/{projectKey}/layers | Get layers
*LaunchDarklyApi::LayersApi* | [**update_layer**](docs/LayersApi.md#update_layer) | **PATCH** /api/v2/projects/{projectKey}/layers/{layerKey} | Update layer
*LaunchDarklyApi::MetricsApi* | [**delete_metric**](docs/MetricsApi.md#delete_metric) | **DELETE** /api/v2/metrics/{projectKey}/{metricKey} | Delete metric
*LaunchDarklyApi::MetricsApi* | [**get_metric**](docs/MetricsApi.md#get_metric) | **GET** /api/v2/metrics/{projectKey}/{metricKey} | Get metric
*LaunchDarklyApi::MetricsApi* | [**get_metrics**](docs/MetricsApi.md#get_metrics) | **GET** /api/v2/metrics/{projectKey} | List metrics
*LaunchDarklyApi::MetricsApi* | [**patch_metric**](docs/MetricsApi.md#patch_metric) | **PATCH** /api/v2/metrics/{projectKey}/{metricKey} | Update metric
*LaunchDarklyApi::MetricsApi* | [**post_metric**](docs/MetricsApi.md#post_metric) | **POST** /api/v2/metrics/{projectKey} | Create metric
*LaunchDarklyApi::MetricsBetaApi* | [**create_metric_group**](docs/MetricsBetaApi.md#create_metric_group) | **POST** /api/v2/projects/{projectKey}/metric-groups | Create metric group
*LaunchDarklyApi::MetricsBetaApi* | [**delete_metric_group**](docs/MetricsBetaApi.md#delete_metric_group) | **DELETE** /api/v2/projects/{projectKey}/metric-groups/{metricGroupKey} | Delete metric group
*LaunchDarklyApi::MetricsBetaApi* | [**get_metric_group**](docs/MetricsBetaApi.md#get_metric_group) | **GET** /api/v2/projects/{projectKey}/metric-groups/{metricGroupKey} | Get metric group
*LaunchDarklyApi::MetricsBetaApi* | [**get_metric_groups**](docs/MetricsBetaApi.md#get_metric_groups) | **GET** /api/v2/projects/{projectKey}/metric-groups | List metric groups
*LaunchDarklyApi::MetricsBetaApi* | [**patch_metric_group**](docs/MetricsBetaApi.md#patch_metric_group) | **PATCH** /api/v2/projects/{projectKey}/metric-groups/{metricGroupKey} | Patch metric group
*LaunchDarklyApi::OAuth2ClientsApi* | [**create_o_auth2_client**](docs/OAuth2ClientsApi.md#create_o_auth2_client) | **POST** /api/v2/oauth/clients | Create a LaunchDarkly OAuth 2.0 client
*LaunchDarklyApi::OAuth2ClientsApi* | [**delete_o_auth_client**](docs/OAuth2ClientsApi.md#delete_o_auth_client) | **DELETE** /api/v2/oauth/clients/{clientId} | Delete OAuth 2.0 client
*LaunchDarklyApi::OAuth2ClientsApi* | [**get_o_auth_client_by_id**](docs/OAuth2ClientsApi.md#get_o_auth_client_by_id) | **GET** /api/v2/oauth/clients/{clientId} | Get client by ID
*LaunchDarklyApi::OAuth2ClientsApi* | [**get_o_auth_clients**](docs/OAuth2ClientsApi.md#get_o_auth_clients) | **GET** /api/v2/oauth/clients | Get clients
*LaunchDarklyApi::OAuth2ClientsApi* | [**patch_o_auth_client**](docs/OAuth2ClientsApi.md#patch_o_auth_client) | **PATCH** /api/v2/oauth/clients/{clientId} | Patch client by ID
*LaunchDarklyApi::OtherApi* | [**get_caller_identity**](docs/OtherApi.md#get_caller_identity) | **GET** /api/v2/caller-identity | Identify the caller
*LaunchDarklyApi::OtherApi* | [**get_ips**](docs/OtherApi.md#get_ips) | **GET** /api/v2/public-ip-list | Gets the public IP list
*LaunchDarklyApi::OtherApi* | [**get_openapi_spec**](docs/OtherApi.md#get_openapi_spec) | **GET** /api/v2/openapi.json | Gets the OpenAPI spec in json
*LaunchDarklyApi::OtherApi* | [**get_root**](docs/OtherApi.md#get_root) | **GET** /api/v2 | Root resource
*LaunchDarklyApi::OtherApi* | [**get_versions**](docs/OtherApi.md#get_versions) | **GET** /api/v2/versions | Get version information
*LaunchDarklyApi::PersistentStoreIntegrationsBetaApi* | [**create_big_segment_store_integration**](docs/PersistentStoreIntegrationsBetaApi.md#create_big_segment_store_integration) | **POST** /api/v2/integration-capabilities/big-segment-store/{projectKey}/{environmentKey}/{integrationKey} | Create big segment store integration
*LaunchDarklyApi::PersistentStoreIntegrationsBetaApi* | [**delete_big_segment_store_integration**](docs/PersistentStoreIntegrationsBetaApi.md#delete_big_segment_store_integration) | **DELETE** /api/v2/integration-capabilities/big-segment-store/{projectKey}/{environmentKey}/{integrationKey}/{integrationId} | Delete big segment store integration
*LaunchDarklyApi::PersistentStoreIntegrationsBetaApi* | [**get_big_segment_store_integration**](docs/PersistentStoreIntegrationsBetaApi.md#get_big_segment_store_integration) | **GET** /api/v2/integration-capabilities/big-segment-store/{projectKey}/{environmentKey}/{integrationKey}/{integrationId} | Get big segment store integration by ID
*LaunchDarklyApi::PersistentStoreIntegrationsBetaApi* | [**get_big_segment_store_integrations**](docs/PersistentStoreIntegrationsBetaApi.md#get_big_segment_store_integrations) | **GET** /api/v2/integration-capabilities/big-segment-store | List all big segment store integrations
*LaunchDarklyApi::PersistentStoreIntegrationsBetaApi* | [**patch_big_segment_store_integration**](docs/PersistentStoreIntegrationsBetaApi.md#patch_big_segment_store_integration) | **PATCH** /api/v2/integration-capabilities/big-segment-store/{projectKey}/{environmentKey}/{integrationKey}/{integrationId} | Update big segment store integration
*LaunchDarklyApi::ProjectsApi* | [**delete_project**](docs/ProjectsApi.md#delete_project) | **DELETE** /api/v2/projects/{projectKey} | Delete project
*LaunchDarklyApi::ProjectsApi* | [**get_flag_defaults_by_project**](docs/ProjectsApi.md#get_flag_defaults_by_project) | **GET** /api/v2/projects/{projectKey}/flag-defaults | Get flag defaults for project
*LaunchDarklyApi::ProjectsApi* | [**get_project**](docs/ProjectsApi.md#get_project) | **GET** /api/v2/projects/{projectKey} | Get project
*LaunchDarklyApi::ProjectsApi* | [**get_projects**](docs/ProjectsApi.md#get_projects) | **GET** /api/v2/projects | List projects
*LaunchDarklyApi::ProjectsApi* | [**patch_flag_defaults_by_project**](docs/ProjectsApi.md#patch_flag_defaults_by_project) | **PATCH** /api/v2/projects/{projectKey}/flag-defaults | Update flag default for project
*LaunchDarklyApi::ProjectsApi* | [**patch_project**](docs/ProjectsApi.md#patch_project) | **PATCH** /api/v2/projects/{projectKey} | Update project
*LaunchDarklyApi::ProjectsApi* | [**post_project**](docs/ProjectsApi.md#post_project) | **POST** /api/v2/projects | Create project
*LaunchDarklyApi::ProjectsApi* | [**put_flag_defaults_by_project**](docs/ProjectsApi.md#put_flag_defaults_by_project) | **PUT** /api/v2/projects/{projectKey}/flag-defaults | Create or update flag defaults for project
*LaunchDarklyApi::RelayProxyConfigurationsApi* | [**delete_relay_auto_config**](docs/RelayProxyConfigurationsApi.md#delete_relay_auto_config) | **DELETE** /api/v2/account/relay-auto-configs/{id} | Delete Relay Proxy config by ID
*LaunchDarklyApi::RelayProxyConfigurationsApi* | [**get_relay_proxy_config**](docs/RelayProxyConfigurationsApi.md#get_relay_proxy_config) | **GET** /api/v2/account/relay-auto-configs/{id} | Get Relay Proxy config
*LaunchDarklyApi::RelayProxyConfigurationsApi* | [**get_relay_proxy_configs**](docs/RelayProxyConfigurationsApi.md#get_relay_proxy_configs) | **GET** /api/v2/account/relay-auto-configs | List Relay Proxy configs
*LaunchDarklyApi::RelayProxyConfigurationsApi* | [**patch_relay_auto_config**](docs/RelayProxyConfigurationsApi.md#patch_relay_auto_config) | **PATCH** /api/v2/account/relay-auto-configs/{id} | Update a Relay Proxy config
*LaunchDarklyApi::RelayProxyConfigurationsApi* | [**post_relay_auto_config**](docs/RelayProxyConfigurationsApi.md#post_relay_auto_config) | **POST** /api/v2/account/relay-auto-configs | Create a new Relay Proxy config
*LaunchDarklyApi::RelayProxyConfigurationsApi* | [**reset_relay_auto_config**](docs/RelayProxyConfigurationsApi.md#reset_relay_auto_config) | **POST** /api/v2/account/relay-auto-configs/{id}/reset | Reset Relay Proxy configuration key
*LaunchDarklyApi::ReleasePipelinesBetaApi* | [**delete_release_pipeline**](docs/ReleasePipelinesBetaApi.md#delete_release_pipeline) | **DELETE** /api/v2/projects/{projectKey}/release-pipelines/{pipelineKey} | Delete release pipeline
*LaunchDarklyApi::ReleasePipelinesBetaApi* | [**get_all_release_pipelines**](docs/ReleasePipelinesBetaApi.md#get_all_release_pipelines) | **GET** /api/v2/projects/{projectKey}/release-pipelines | Get all release pipelines
*LaunchDarklyApi::ReleasePipelinesBetaApi* | [**get_all_release_progressions_for_release_pipeline**](docs/ReleasePipelinesBetaApi.md#get_all_release_progressions_for_release_pipeline) | **GET** /api/v2/projects/{projectKey}/release-pipelines/{pipelineKey}/releases | Get release progressions for release pipeline
*LaunchDarklyApi::ReleasePipelinesBetaApi* | [**get_release_pipeline_by_key**](docs/ReleasePipelinesBetaApi.md#get_release_pipeline_by_key) | **GET** /api/v2/projects/{projectKey}/release-pipelines/{pipelineKey} | Get release pipeline by key
*LaunchDarklyApi::ReleasePipelinesBetaApi* | [**post_release_pipeline**](docs/ReleasePipelinesBetaApi.md#post_release_pipeline) | **POST** /api/v2/projects/{projectKey}/release-pipelines | Create a release pipeline
*LaunchDarklyApi::ReleasePipelinesBetaApi* | [**put_release_pipeline**](docs/ReleasePipelinesBetaApi.md#put_release_pipeline) | **PUT** /api/v2/projects/{projectKey}/release-pipelines/{pipelineKey} | Update a release pipeline
*LaunchDarklyApi::ReleasesBetaApi* | [**create_release_for_flag**](docs/ReleasesBetaApi.md#create_release_for_flag) | **PUT** /api/v2/projects/{projectKey}/flags/{flagKey}/release | Create a new release for flag
*LaunchDarklyApi::ReleasesBetaApi* | [**delete_release_by_flag_key**](docs/ReleasesBetaApi.md#delete_release_by_flag_key) | **DELETE** /api/v2/flags/{projectKey}/{flagKey}/release | Delete a release for flag
*LaunchDarklyApi::ReleasesBetaApi* | [**get_release_by_flag_key**](docs/ReleasesBetaApi.md#get_release_by_flag_key) | **GET** /api/v2/flags/{projectKey}/{flagKey}/release | Get release for flag
*LaunchDarklyApi::ReleasesBetaApi* | [**patch_release_by_flag_key**](docs/ReleasesBetaApi.md#patch_release_by_flag_key) | **PATCH** /api/v2/flags/{projectKey}/{flagKey}/release | Patch release for flag
*LaunchDarklyApi::ReleasesBetaApi* | [**update_phase_status**](docs/ReleasesBetaApi.md#update_phase_status) | **PUT** /api/v2/projects/{projectKey}/flags/{flagKey}/release/phases/{phaseId} | Update phase status for release
*LaunchDarklyApi::ScheduledChangesApi* | [**delete_flag_config_scheduled_changes**](docs/ScheduledChangesApi.md#delete_flag_config_scheduled_changes) | **DELETE** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes/{id} | Delete scheduled changes workflow
*LaunchDarklyApi::ScheduledChangesApi* | [**get_feature_flag_scheduled_change**](docs/ScheduledChangesApi.md#get_feature_flag_scheduled_change) | **GET** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes/{id} | Get a scheduled change
*LaunchDarklyApi::ScheduledChangesApi* | [**get_flag_config_scheduled_changes**](docs/ScheduledChangesApi.md#get_flag_config_scheduled_changes) | **GET** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes | List scheduled changes
*LaunchDarklyApi::ScheduledChangesApi* | [**patch_flag_config_scheduled_change**](docs/ScheduledChangesApi.md#patch_flag_config_scheduled_change) | **PATCH** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes/{id} | Update scheduled changes workflow
*LaunchDarklyApi::ScheduledChangesApi* | [**post_flag_config_scheduled_changes**](docs/ScheduledChangesApi.md#post_flag_config_scheduled_changes) | **POST** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes | Create scheduled changes workflow
*LaunchDarklyApi::SegmentsApi* | [**create_big_segment_export**](docs/SegmentsApi.md#create_big_segment_export) | **POST** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/exports | Create big segment export
*LaunchDarklyApi::SegmentsApi* | [**create_big_segment_import**](docs/SegmentsApi.md#create_big_segment_import) | **POST** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/imports | Create big segment import
*LaunchDarklyApi::SegmentsApi* | [**delete_segment**](docs/SegmentsApi.md#delete_segment) | **DELETE** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey} | Delete segment
*LaunchDarklyApi::SegmentsApi* | [**get_big_segment_export**](docs/SegmentsApi.md#get_big_segment_export) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/exports/{exportID} | Get big segment export
*LaunchDarklyApi::SegmentsApi* | [**get_big_segment_import**](docs/SegmentsApi.md#get_big_segment_import) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/imports/{importID} | Get big segment import
*LaunchDarklyApi::SegmentsApi* | [**get_context_instance_segments_membership_by_env**](docs/SegmentsApi.md#get_context_instance_segments_membership_by_env) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/segments/evaluate | List segment memberships for context instance
*LaunchDarklyApi::SegmentsApi* | [**get_expiring_targets_for_segment**](docs/SegmentsApi.md#get_expiring_targets_for_segment) | **GET** /api/v2/segments/{projectKey}/{segmentKey}/expiring-targets/{environmentKey} | Get expiring targets for segment
*LaunchDarklyApi::SegmentsApi* | [**get_expiring_user_targets_for_segment**](docs/SegmentsApi.md#get_expiring_user_targets_for_segment) | **GET** /api/v2/segments/{projectKey}/{segmentKey}/expiring-user-targets/{environmentKey} | Get expiring user targets for segment
*LaunchDarklyApi::SegmentsApi* | [**get_segment**](docs/SegmentsApi.md#get_segment) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey} | Get segment
*LaunchDarklyApi::SegmentsApi* | [**get_segment_membership_for_context**](docs/SegmentsApi.md#get_segment_membership_for_context) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/contexts/{contextKey} | Get big segment membership for context
*LaunchDarklyApi::SegmentsApi* | [**get_segment_membership_for_user**](docs/SegmentsApi.md#get_segment_membership_for_user) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/users/{userKey} | Get big segment membership for user
*LaunchDarklyApi::SegmentsApi* | [**get_segments**](docs/SegmentsApi.md#get_segments) | **GET** /api/v2/segments/{projectKey}/{environmentKey} | List segments
*LaunchDarklyApi::SegmentsApi* | [**patch_expiring_targets_for_segment**](docs/SegmentsApi.md#patch_expiring_targets_for_segment) | **PATCH** /api/v2/segments/{projectKey}/{segmentKey}/expiring-targets/{environmentKey} | Update expiring targets for segment
*LaunchDarklyApi::SegmentsApi* | [**patch_expiring_user_targets_for_segment**](docs/SegmentsApi.md#patch_expiring_user_targets_for_segment) | **PATCH** /api/v2/segments/{projectKey}/{segmentKey}/expiring-user-targets/{environmentKey} | Update expiring user targets for segment
*LaunchDarklyApi::SegmentsApi* | [**patch_segment**](docs/SegmentsApi.md#patch_segment) | **PATCH** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey} | Patch segment
*LaunchDarklyApi::SegmentsApi* | [**post_segment**](docs/SegmentsApi.md#post_segment) | **POST** /api/v2/segments/{projectKey}/{environmentKey} | Create segment
*LaunchDarklyApi::SegmentsApi* | [**update_big_segment_context_targets**](docs/SegmentsApi.md#update_big_segment_context_targets) | **POST** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/contexts | Update context targets on a big segment
*LaunchDarklyApi::SegmentsApi* | [**update_big_segment_targets**](docs/SegmentsApi.md#update_big_segment_targets) | **POST** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/users | Update user context targets on a big segment
*LaunchDarklyApi::TagsApi* | [**get_tags**](docs/TagsApi.md#get_tags) | **GET** /api/v2/tags | List tags
*LaunchDarklyApi::TeamsApi* | [**delete_team**](docs/TeamsApi.md#delete_team) | **DELETE** /api/v2/teams/{teamKey} | Delete team
*LaunchDarklyApi::TeamsApi* | [**get_team**](docs/TeamsApi.md#get_team) | **GET** /api/v2/teams/{teamKey} | Get team
*LaunchDarklyApi::TeamsApi* | [**get_team_maintainers**](docs/TeamsApi.md#get_team_maintainers) | **GET** /api/v2/teams/{teamKey}/maintainers | Get team maintainers
*LaunchDarklyApi::TeamsApi* | [**get_team_roles**](docs/TeamsApi.md#get_team_roles) | **GET** /api/v2/teams/{teamKey}/roles | Get team custom roles
*LaunchDarklyApi::TeamsApi* | [**get_teams**](docs/TeamsApi.md#get_teams) | **GET** /api/v2/teams | List teams
*LaunchDarklyApi::TeamsApi* | [**patch_team**](docs/TeamsApi.md#patch_team) | **PATCH** /api/v2/teams/{teamKey} | Update team
*LaunchDarklyApi::TeamsApi* | [**post_team**](docs/TeamsApi.md#post_team) | **POST** /api/v2/teams | Create team
*LaunchDarklyApi::TeamsApi* | [**post_team_members**](docs/TeamsApi.md#post_team_members) | **POST** /api/v2/teams/{teamKey}/members | Add multiple members to team
*LaunchDarklyApi::TeamsBetaApi* | [**patch_teams**](docs/TeamsBetaApi.md#patch_teams) | **PATCH** /api/v2/teams | Update teams
*LaunchDarklyApi::UserSettingsApi* | [**get_expiring_flags_for_user**](docs/UserSettingsApi.md#get_expiring_flags_for_user) | **GET** /api/v2/users/{projectKey}/{userKey}/expiring-user-targets/{environmentKey} | Get expiring dates on flags for user
*LaunchDarklyApi::UserSettingsApi* | [**get_user_flag_setting**](docs/UserSettingsApi.md#get_user_flag_setting) | **GET** /api/v2/users/{projectKey}/{environmentKey}/{userKey}/flags/{featureFlagKey} | Get flag setting for user
*LaunchDarklyApi::UserSettingsApi* | [**get_user_flag_settings**](docs/UserSettingsApi.md#get_user_flag_settings) | **GET** /api/v2/users/{projectKey}/{environmentKey}/{userKey}/flags | List flag settings for user
*LaunchDarklyApi::UserSettingsApi* | [**patch_expiring_flags_for_user**](docs/UserSettingsApi.md#patch_expiring_flags_for_user) | **PATCH** /api/v2/users/{projectKey}/{userKey}/expiring-user-targets/{environmentKey} | Update expiring user target for flags
*LaunchDarklyApi::UserSettingsApi* | [**put_flag_setting**](docs/UserSettingsApi.md#put_flag_setting) | **PUT** /api/v2/users/{projectKey}/{environmentKey}/{userKey}/flags/{featureFlagKey} | Update flag settings for user
*LaunchDarklyApi::UsersApi* | [**delete_user**](docs/UsersApi.md#delete_user) | **DELETE** /api/v2/users/{projectKey}/{environmentKey}/{userKey} | Delete user
*LaunchDarklyApi::UsersApi* | [**get_search_users**](docs/UsersApi.md#get_search_users) | **GET** /api/v2/user-search/{projectKey}/{environmentKey} | Find users
*LaunchDarklyApi::UsersApi* | [**get_user**](docs/UsersApi.md#get_user) | **GET** /api/v2/users/{projectKey}/{environmentKey}/{userKey} | Get user
*LaunchDarklyApi::UsersApi* | [**get_users**](docs/UsersApi.md#get_users) | **GET** /api/v2/users/{projectKey}/{environmentKey} | List users
*LaunchDarklyApi::UsersBetaApi* | [**get_user_attribute_names**](docs/UsersBetaApi.md#get_user_attribute_names) | **GET** /api/v2/user-attributes/{projectKey}/{environmentKey} | Get user attribute names
*LaunchDarklyApi::WebhooksApi* | [**delete_webhook**](docs/WebhooksApi.md#delete_webhook) | **DELETE** /api/v2/webhooks/{id} | Delete webhook
*LaunchDarklyApi::WebhooksApi* | [**get_all_webhooks**](docs/WebhooksApi.md#get_all_webhooks) | **GET** /api/v2/webhooks | List webhooks
*LaunchDarklyApi::WebhooksApi* | [**get_webhook**](docs/WebhooksApi.md#get_webhook) | **GET** /api/v2/webhooks/{id} | Get webhook
*LaunchDarklyApi::WebhooksApi* | [**patch_webhook**](docs/WebhooksApi.md#patch_webhook) | **PATCH** /api/v2/webhooks/{id} | Update webhook
*LaunchDarklyApi::WebhooksApi* | [**post_webhook**](docs/WebhooksApi.md#post_webhook) | **POST** /api/v2/webhooks | Creates a webhook
*LaunchDarklyApi::WorkflowTemplatesApi* | [**create_workflow_template**](docs/WorkflowTemplatesApi.md#create_workflow_template) | **POST** /api/v2/templates | Create workflow template
*LaunchDarklyApi::WorkflowTemplatesApi* | [**delete_workflow_template**](docs/WorkflowTemplatesApi.md#delete_workflow_template) | **DELETE** /api/v2/templates/{templateKey} | Delete workflow template
*LaunchDarklyApi::WorkflowTemplatesApi* | [**get_workflow_templates**](docs/WorkflowTemplatesApi.md#get_workflow_templates) | **GET** /api/v2/templates | Get workflow templates
*LaunchDarklyApi::WorkflowsApi* | [**delete_workflow**](docs/WorkflowsApi.md#delete_workflow) | **DELETE** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/workflows/{workflowId} | Delete workflow
*LaunchDarklyApi::WorkflowsApi* | [**get_custom_workflow**](docs/WorkflowsApi.md#get_custom_workflow) | **GET** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/workflows/{workflowId} | Get custom workflow
*LaunchDarklyApi::WorkflowsApi* | [**get_workflows**](docs/WorkflowsApi.md#get_workflows) | **GET** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/workflows | Get workflows
*LaunchDarklyApi::WorkflowsApi* | [**post_workflow**](docs/WorkflowsApi.md#post_workflow) | **POST** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/workflows | Create workflow


## Documentation for Models

 - [LaunchDarklyApi::AIConfig](docs/AIConfig.md)
 - [LaunchDarklyApi::AIConfigMaintainer](docs/AIConfigMaintainer.md)
 - [LaunchDarklyApi::AIConfigPatch](docs/AIConfigPatch.md)
 - [LaunchDarklyApi::AIConfigPost](docs/AIConfigPost.md)
 - [LaunchDarklyApi::AIConfigVariation](docs/AIConfigVariation.md)
 - [LaunchDarklyApi::AIConfigVariationPatch](docs/AIConfigVariationPatch.md)
 - [LaunchDarklyApi::AIConfigVariationPost](docs/AIConfigVariationPost.md)
 - [LaunchDarklyApi::AIConfigVariationsResponse](docs/AIConfigVariationsResponse.md)
 - [LaunchDarklyApi::AIConfigs](docs/AIConfigs.md)
 - [LaunchDarklyApi::Access](docs/Access.md)
 - [LaunchDarklyApi::AccessAllowedReason](docs/AccessAllowedReason.md)
 - [LaunchDarklyApi::AccessAllowedRep](docs/AccessAllowedRep.md)
 - [LaunchDarklyApi::AccessDenied](docs/AccessDenied.md)
 - [LaunchDarklyApi::AccessDeniedReason](docs/AccessDeniedReason.md)
 - [LaunchDarklyApi::AccessTokenPost](docs/AccessTokenPost.md)
 - [LaunchDarklyApi::ActionInput](docs/ActionInput.md)
 - [LaunchDarklyApi::ActionOutput](docs/ActionOutput.md)
 - [LaunchDarklyApi::AiConfigsAccess](docs/AiConfigsAccess.md)
 - [LaunchDarklyApi::AiConfigsAccessAllowedReason](docs/AiConfigsAccessAllowedReason.md)
 - [LaunchDarklyApi::AiConfigsAccessAllowedRep](docs/AiConfigsAccessAllowedRep.md)
 - [LaunchDarklyApi::AiConfigsAccessDenied](docs/AiConfigsAccessDenied.md)
 - [LaunchDarklyApi::AiConfigsAccessDeniedReason](docs/AiConfigsAccessDeniedReason.md)
 - [LaunchDarklyApi::AiConfigsLink](docs/AiConfigsLink.md)
 - [LaunchDarklyApi::AiConfigsMaintainerTeam](docs/AiConfigsMaintainerTeam.md)
 - [LaunchDarklyApi::AnnouncementAccess](docs/AnnouncementAccess.md)
 - [LaunchDarklyApi::AnnouncementAccessAllowedReason](docs/AnnouncementAccessAllowedReason.md)
 - [LaunchDarklyApi::AnnouncementAccessAllowedRep](docs/AnnouncementAccessAllowedRep.md)
 - [LaunchDarklyApi::AnnouncementAccessDenied](docs/AnnouncementAccessDenied.md)
 - [LaunchDarklyApi::AnnouncementAccessDeniedReason](docs/AnnouncementAccessDeniedReason.md)
 - [LaunchDarklyApi::AnnouncementAccessRep](docs/AnnouncementAccessRep.md)
 - [LaunchDarklyApi::AnnouncementLink](docs/AnnouncementLink.md)
 - [LaunchDarklyApi::AnnouncementPaginatedLinks](docs/AnnouncementPaginatedLinks.md)
 - [LaunchDarklyApi::AnnouncementPatchOperation](docs/AnnouncementPatchOperation.md)
 - [LaunchDarklyApi::AnnouncementResponse](docs/AnnouncementResponse.md)
 - [LaunchDarklyApi::AnnouncementResponseLinks](docs/AnnouncementResponseLinks.md)
 - [LaunchDarklyApi::ApplicationCollectionRep](docs/ApplicationCollectionRep.md)
 - [LaunchDarklyApi::ApplicationFlagCollectionRep](docs/ApplicationFlagCollectionRep.md)
 - [LaunchDarklyApi::ApplicationRep](docs/ApplicationRep.md)
 - [LaunchDarklyApi::ApplicationVersionRep](docs/ApplicationVersionRep.md)
 - [LaunchDarklyApi::ApplicationVersionsCollectionRep](docs/ApplicationVersionsCollectionRep.md)
 - [LaunchDarklyApi::ApprovalRequestResponse](docs/ApprovalRequestResponse.md)
 - [LaunchDarklyApi::ApprovalSettings](docs/ApprovalSettings.md)
 - [LaunchDarklyApi::ApprovalsCapabilityConfig](docs/ApprovalsCapabilityConfig.md)
 - [LaunchDarklyApi::AssignedToRep](docs/AssignedToRep.md)
 - [LaunchDarklyApi::Audience](docs/Audience.md)
 - [LaunchDarklyApi::AudienceConfiguration](docs/AudienceConfiguration.md)
 - [LaunchDarklyApi::AudiencePost](docs/AudiencePost.md)
 - [LaunchDarklyApi::AuditLogEntryListingRep](docs/AuditLogEntryListingRep.md)
 - [LaunchDarklyApi::AuditLogEntryListingRepCollection](docs/AuditLogEntryListingRepCollection.md)
 - [LaunchDarklyApi::AuditLogEntryRep](docs/AuditLogEntryRep.md)
 - [LaunchDarklyApi::AuditLogEventsHookCapabilityConfigPost](docs/AuditLogEventsHookCapabilityConfigPost.md)
 - [LaunchDarklyApi::AuditLogEventsHookCapabilityConfigRep](docs/AuditLogEventsHookCapabilityConfigRep.md)
 - [LaunchDarklyApi::AuthorizedAppDataRep](docs/AuthorizedAppDataRep.md)
 - [LaunchDarklyApi::BayesianBetaBinomialStatsRep](docs/BayesianBetaBinomialStatsRep.md)
 - [LaunchDarklyApi::BayesianNormalStatsRep](docs/BayesianNormalStatsRep.md)
 - [LaunchDarklyApi::BigSegmentStoreIntegration](docs/BigSegmentStoreIntegration.md)
 - [LaunchDarklyApi::BigSegmentStoreIntegrationCollection](docs/BigSegmentStoreIntegrationCollection.md)
 - [LaunchDarklyApi::BigSegmentStoreIntegrationCollectionLinks](docs/BigSegmentStoreIntegrationCollectionLinks.md)
 - [LaunchDarklyApi::BigSegmentStoreIntegrationLinks](docs/BigSegmentStoreIntegrationLinks.md)
 - [LaunchDarklyApi::BigSegmentStoreStatus](docs/BigSegmentStoreStatus.md)
 - [LaunchDarklyApi::BigSegmentTarget](docs/BigSegmentTarget.md)
 - [LaunchDarklyApi::BooleanDefaults](docs/BooleanDefaults.md)
 - [LaunchDarklyApi::BooleanFlagDefaults](docs/BooleanFlagDefaults.md)
 - [LaunchDarklyApi::BranchCollectionRep](docs/BranchCollectionRep.md)
 - [LaunchDarklyApi::BranchRep](docs/BranchRep.md)
 - [LaunchDarklyApi::BulkEditMembersRep](docs/BulkEditMembersRep.md)
 - [LaunchDarklyApi::BulkEditTeamsRep](docs/BulkEditTeamsRep.md)
 - [LaunchDarklyApi::CallerIdentityRep](docs/CallerIdentityRep.md)
 - [LaunchDarklyApi::CapabilityConfigPost](docs/CapabilityConfigPost.md)
 - [LaunchDarklyApi::CapabilityConfigRep](docs/CapabilityConfigRep.md)
 - [LaunchDarklyApi::Clause](docs/Clause.md)
 - [LaunchDarklyApi::Client](docs/Client.md)
 - [LaunchDarklyApi::ClientCollection](docs/ClientCollection.md)
 - [LaunchDarklyApi::ClientSideAvailability](docs/ClientSideAvailability.md)
 - [LaunchDarklyApi::ClientSideAvailabilityPost](docs/ClientSideAvailabilityPost.md)
 - [LaunchDarklyApi::CompletedBy](docs/CompletedBy.md)
 - [LaunchDarklyApi::ConditionInput](docs/ConditionInput.md)
 - [LaunchDarklyApi::ConditionOutput](docs/ConditionOutput.md)
 - [LaunchDarklyApi::Conflict](docs/Conflict.md)
 - [LaunchDarklyApi::ConflictOutput](docs/ConflictOutput.md)
 - [LaunchDarklyApi::ContextAttributeName](docs/ContextAttributeName.md)
 - [LaunchDarklyApi::ContextAttributeNames](docs/ContextAttributeNames.md)
 - [LaunchDarklyApi::ContextAttributeNamesCollection](docs/ContextAttributeNamesCollection.md)
 - [LaunchDarklyApi::ContextAttributeValue](docs/ContextAttributeValue.md)
 - [LaunchDarklyApi::ContextAttributeValues](docs/ContextAttributeValues.md)
 - [LaunchDarklyApi::ContextAttributeValuesCollection](docs/ContextAttributeValuesCollection.md)
 - [LaunchDarklyApi::ContextInstanceEvaluation](docs/ContextInstanceEvaluation.md)
 - [LaunchDarklyApi::ContextInstanceEvaluationReason](docs/ContextInstanceEvaluationReason.md)
 - [LaunchDarklyApi::ContextInstanceEvaluations](docs/ContextInstanceEvaluations.md)
 - [LaunchDarklyApi::ContextInstanceRecord](docs/ContextInstanceRecord.md)
 - [LaunchDarklyApi::ContextInstanceSearch](docs/ContextInstanceSearch.md)
 - [LaunchDarklyApi::ContextInstanceSegmentMembership](docs/ContextInstanceSegmentMembership.md)
 - [LaunchDarklyApi::ContextInstanceSegmentMemberships](docs/ContextInstanceSegmentMemberships.md)
 - [LaunchDarklyApi::ContextInstances](docs/ContextInstances.md)
 - [LaunchDarklyApi::ContextKindRep](docs/ContextKindRep.md)
 - [LaunchDarklyApi::ContextKindsCollectionRep](docs/ContextKindsCollectionRep.md)
 - [LaunchDarklyApi::ContextRecord](docs/ContextRecord.md)
 - [LaunchDarklyApi::ContextSearch](docs/ContextSearch.md)
 - [LaunchDarklyApi::Contexts](docs/Contexts.md)
 - [LaunchDarklyApi::CopiedFromEnv](docs/CopiedFromEnv.md)
 - [LaunchDarklyApi::CoreLink](docs/CoreLink.md)
 - [LaunchDarklyApi::CreateAnnouncementBody](docs/CreateAnnouncementBody.md)
 - [LaunchDarklyApi::CreateApprovalRequestRequest](docs/CreateApprovalRequestRequest.md)
 - [LaunchDarklyApi::CreateCopyFlagConfigApprovalRequestRequest](docs/CreateCopyFlagConfigApprovalRequestRequest.md)
 - [LaunchDarklyApi::CreateFlagConfigApprovalRequestRequest](docs/CreateFlagConfigApprovalRequestRequest.md)
 - [LaunchDarklyApi::CreatePhaseInput](docs/CreatePhaseInput.md)
 - [LaunchDarklyApi::CreateReleaseInput](docs/CreateReleaseInput.md)
 - [LaunchDarklyApi::CreateReleasePipelineInput](docs/CreateReleasePipelineInput.md)
 - [LaunchDarklyApi::CreateWorkflowTemplateInput](docs/CreateWorkflowTemplateInput.md)
 - [LaunchDarklyApi::CredibleIntervalRep](docs/CredibleIntervalRep.md)
 - [LaunchDarklyApi::CustomProperty](docs/CustomProperty.md)
 - [LaunchDarklyApi::CustomRole](docs/CustomRole.md)
 - [LaunchDarklyApi::CustomRolePost](docs/CustomRolePost.md)
 - [LaunchDarklyApi::CustomRoles](docs/CustomRoles.md)
 - [LaunchDarklyApi::CustomWorkflowInput](docs/CustomWorkflowInput.md)
 - [LaunchDarklyApi::CustomWorkflowMeta](docs/CustomWorkflowMeta.md)
 - [LaunchDarklyApi::CustomWorkflowOutput](docs/CustomWorkflowOutput.md)
 - [LaunchDarklyApi::CustomWorkflowStageMeta](docs/CustomWorkflowStageMeta.md)
 - [LaunchDarklyApi::CustomWorkflowsListingOutput](docs/CustomWorkflowsListingOutput.md)
 - [LaunchDarklyApi::DefaultClientSideAvailability](docs/DefaultClientSideAvailability.md)
 - [LaunchDarklyApi::DefaultClientSideAvailabilityPost](docs/DefaultClientSideAvailabilityPost.md)
 - [LaunchDarklyApi::Defaults](docs/Defaults.md)
 - [LaunchDarklyApi::DependentExperimentRep](docs/DependentExperimentRep.md)
 - [LaunchDarklyApi::DependentFlag](docs/DependentFlag.md)
 - [LaunchDarklyApi::DependentFlagEnvironment](docs/DependentFlagEnvironment.md)
 - [LaunchDarklyApi::DependentFlagsByEnvironment](docs/DependentFlagsByEnvironment.md)
 - [LaunchDarklyApi::DependentMetricGroupRep](docs/DependentMetricGroupRep.md)
 - [LaunchDarklyApi::DependentMetricGroupRepWithMetrics](docs/DependentMetricGroupRepWithMetrics.md)
 - [LaunchDarklyApi::DependentMetricOrMetricGroupRep](docs/DependentMetricOrMetricGroupRep.md)
 - [LaunchDarklyApi::DeploymentCollectionRep](docs/DeploymentCollectionRep.md)
 - [LaunchDarklyApi::DeploymentRep](docs/DeploymentRep.md)
 - [LaunchDarklyApi::Destination](docs/Destination.md)
 - [LaunchDarklyApi::DestinationPost](docs/DestinationPost.md)
 - [LaunchDarklyApi::Destinations](docs/Destinations.md)
 - [LaunchDarklyApi::Distribution](docs/Distribution.md)
 - [LaunchDarklyApi::DynamicOptions](docs/DynamicOptions.md)
 - [LaunchDarklyApi::DynamicOptionsParser](docs/DynamicOptionsParser.md)
 - [LaunchDarklyApi::Endpoint](docs/Endpoint.md)
 - [LaunchDarklyApi::Environment](docs/Environment.md)
 - [LaunchDarklyApi::EnvironmentPost](docs/EnvironmentPost.md)
 - [LaunchDarklyApi::EnvironmentSummary](docs/EnvironmentSummary.md)
 - [LaunchDarklyApi::Environments](docs/Environments.md)
 - [LaunchDarklyApi::Error](docs/Error.md)
 - [LaunchDarklyApi::EvaluationReason](docs/EvaluationReason.md)
 - [LaunchDarklyApi::EvaluationsSummary](docs/EvaluationsSummary.md)
 - [LaunchDarklyApi::ExecutionOutput](docs/ExecutionOutput.md)
 - [LaunchDarklyApi::ExpandableApprovalRequestResponse](docs/ExpandableApprovalRequestResponse.md)
 - [LaunchDarklyApi::ExpandableApprovalRequestsResponse](docs/ExpandableApprovalRequestsResponse.md)
 - [LaunchDarklyApi::ExpandedFlagRep](docs/ExpandedFlagRep.md)
 - [LaunchDarklyApi::ExpandedResourceRep](docs/ExpandedResourceRep.md)
 - [LaunchDarklyApi::Experiment](docs/Experiment.md)
 - [LaunchDarklyApi::ExperimentAllocationRep](docs/ExperimentAllocationRep.md)
 - [LaunchDarklyApi::ExperimentBayesianResultsRep](docs/ExperimentBayesianResultsRep.md)
 - [LaunchDarklyApi::ExperimentCollectionRep](docs/ExperimentCollectionRep.md)
 - [LaunchDarklyApi::ExperimentEnabledPeriodRep](docs/ExperimentEnabledPeriodRep.md)
 - [LaunchDarklyApi::ExperimentEnvironmentSettingRep](docs/ExperimentEnvironmentSettingRep.md)
 - [LaunchDarklyApi::ExperimentInfoRep](docs/ExperimentInfoRep.md)
 - [LaunchDarklyApi::ExperimentPatchInput](docs/ExperimentPatchInput.md)
 - [LaunchDarklyApi::ExperimentPost](docs/ExperimentPost.md)
 - [LaunchDarklyApi::ExpiringTarget](docs/ExpiringTarget.md)
 - [LaunchDarklyApi::ExpiringTargetError](docs/ExpiringTargetError.md)
 - [LaunchDarklyApi::ExpiringTargetGetResponse](docs/ExpiringTargetGetResponse.md)
 - [LaunchDarklyApi::ExpiringTargetPatchResponse](docs/ExpiringTargetPatchResponse.md)
 - [LaunchDarklyApi::ExpiringUserTargetGetResponse](docs/ExpiringUserTargetGetResponse.md)
 - [LaunchDarklyApi::ExpiringUserTargetItem](docs/ExpiringUserTargetItem.md)
 - [LaunchDarklyApi::ExpiringUserTargetPatchResponse](docs/ExpiringUserTargetPatchResponse.md)
 - [LaunchDarklyApi::Export](docs/Export.md)
 - [LaunchDarklyApi::Extinction](docs/Extinction.md)
 - [LaunchDarklyApi::ExtinctionCollectionRep](docs/ExtinctionCollectionRep.md)
 - [LaunchDarklyApi::FailureReasonRep](docs/FailureReasonRep.md)
 - [LaunchDarklyApi::FeatureFlag](docs/FeatureFlag.md)
 - [LaunchDarklyApi::FeatureFlagBody](docs/FeatureFlagBody.md)
 - [LaunchDarklyApi::FeatureFlagConfig](docs/FeatureFlagConfig.md)
 - [LaunchDarklyApi::FeatureFlagScheduledChange](docs/FeatureFlagScheduledChange.md)
 - [LaunchDarklyApi::FeatureFlagScheduledChanges](docs/FeatureFlagScheduledChanges.md)
 - [LaunchDarklyApi::FeatureFlagStatus](docs/FeatureFlagStatus.md)
 - [LaunchDarklyApi::FeatureFlagStatusAcrossEnvironments](docs/FeatureFlagStatusAcrossEnvironments.md)
 - [LaunchDarklyApi::FeatureFlagStatuses](docs/FeatureFlagStatuses.md)
 - [LaunchDarklyApi::FeatureFlags](docs/FeatureFlags.md)
 - [LaunchDarklyApi::FileRep](docs/FileRep.md)
 - [LaunchDarklyApi::FlagConfigApprovalRequestResponse](docs/FlagConfigApprovalRequestResponse.md)
 - [LaunchDarklyApi::FlagConfigApprovalRequestsResponse](docs/FlagConfigApprovalRequestsResponse.md)
 - [LaunchDarklyApi::FlagConfigEvaluation](docs/FlagConfigEvaluation.md)
 - [LaunchDarklyApi::FlagConfigMigrationSettingsRep](docs/FlagConfigMigrationSettingsRep.md)
 - [LaunchDarklyApi::FlagCopyConfigEnvironment](docs/FlagCopyConfigEnvironment.md)
 - [LaunchDarklyApi::FlagCopyConfigPost](docs/FlagCopyConfigPost.md)
 - [LaunchDarklyApi::FlagDefaultsRep](docs/FlagDefaultsRep.md)
 - [LaunchDarklyApi::FlagEventCollectionRep](docs/FlagEventCollectionRep.md)
 - [LaunchDarklyApi::FlagEventExperiment](docs/FlagEventExperiment.md)
 - [LaunchDarklyApi::FlagEventExperimentCollection](docs/FlagEventExperimentCollection.md)
 - [LaunchDarklyApi::FlagEventExperimentIteration](docs/FlagEventExperimentIteration.md)
 - [LaunchDarklyApi::FlagEventImpactRep](docs/FlagEventImpactRep.md)
 - [LaunchDarklyApi::FlagEventMemberRep](docs/FlagEventMemberRep.md)
 - [LaunchDarklyApi::FlagEventRep](docs/FlagEventRep.md)
 - [LaunchDarklyApi::FlagFollowersByProjEnvGetRep](docs/FlagFollowersByProjEnvGetRep.md)
 - [LaunchDarklyApi::FlagFollowersGetRep](docs/FlagFollowersGetRep.md)
 - [LaunchDarklyApi::FlagImportConfigurationPost](docs/FlagImportConfigurationPost.md)
 - [LaunchDarklyApi::FlagImportIntegration](docs/FlagImportIntegration.md)
 - [LaunchDarklyApi::FlagImportIntegrationCollection](docs/FlagImportIntegrationCollection.md)
 - [LaunchDarklyApi::FlagImportIntegrationCollectionLinks](docs/FlagImportIntegrationCollectionLinks.md)
 - [LaunchDarklyApi::FlagImportIntegrationLinks](docs/FlagImportIntegrationLinks.md)
 - [LaunchDarklyApi::FlagImportStatus](docs/FlagImportStatus.md)
 - [LaunchDarklyApi::FlagInput](docs/FlagInput.md)
 - [LaunchDarklyApi::FlagLinkCollectionRep](docs/FlagLinkCollectionRep.md)
 - [LaunchDarklyApi::FlagLinkMember](docs/FlagLinkMember.md)
 - [LaunchDarklyApi::FlagLinkPost](docs/FlagLinkPost.md)
 - [LaunchDarklyApi::FlagLinkRep](docs/FlagLinkRep.md)
 - [LaunchDarklyApi::FlagListingRep](docs/FlagListingRep.md)
 - [LaunchDarklyApi::FlagMigrationSettingsRep](docs/FlagMigrationSettingsRep.md)
 - [LaunchDarklyApi::FlagPrerequisitePost](docs/FlagPrerequisitePost.md)
 - [LaunchDarklyApi::FlagReferenceCollectionRep](docs/FlagReferenceCollectionRep.md)
 - [LaunchDarklyApi::FlagReferenceRep](docs/FlagReferenceRep.md)
 - [LaunchDarklyApi::FlagRep](docs/FlagRep.md)
 - [LaunchDarklyApi::FlagScheduledChangesInput](docs/FlagScheduledChangesInput.md)
 - [LaunchDarklyApi::FlagSempatch](docs/FlagSempatch.md)
 - [LaunchDarklyApi::FlagStatusRep](docs/FlagStatusRep.md)
 - [LaunchDarklyApi::FlagSummary](docs/FlagSummary.md)
 - [LaunchDarklyApi::FlagTriggerInput](docs/FlagTriggerInput.md)
 - [LaunchDarklyApi::FollowFlagMember](docs/FollowFlagMember.md)
 - [LaunchDarklyApi::FollowersPerFlag](docs/FollowersPerFlag.md)
 - [LaunchDarklyApi::ForbiddenErrorRep](docs/ForbiddenErrorRep.md)
 - [LaunchDarklyApi::FormVariable](docs/FormVariable.md)
 - [LaunchDarklyApi::GenerateWarehouseDestinationKeyPairPostRep](docs/GenerateWarehouseDestinationKeyPairPostRep.md)
 - [LaunchDarklyApi::GetAnnouncementsPublic200Response](docs/GetAnnouncementsPublic200Response.md)
 - [LaunchDarklyApi::HMACSignature](docs/HMACSignature.md)
 - [LaunchDarklyApi::HeaderItems](docs/HeaderItems.md)
 - [LaunchDarklyApi::HoldoutDetailRep](docs/HoldoutDetailRep.md)
 - [LaunchDarklyApi::HoldoutPatchInput](docs/HoldoutPatchInput.md)
 - [LaunchDarklyApi::HoldoutPostRequest](docs/HoldoutPostRequest.md)
 - [LaunchDarklyApi::HoldoutRep](docs/HoldoutRep.md)
 - [LaunchDarklyApi::HoldoutsCollectionRep](docs/HoldoutsCollectionRep.md)
 - [LaunchDarklyApi::HunkRep](docs/HunkRep.md)
 - [LaunchDarklyApi::Import](docs/Import.md)
 - [LaunchDarklyApi::InitiatorRep](docs/InitiatorRep.md)
 - [LaunchDarklyApi::InsightGroup](docs/InsightGroup.md)
 - [LaunchDarklyApi::InsightGroupCollection](docs/InsightGroupCollection.md)
 - [LaunchDarklyApi::InsightGroupCollectionMetadata](docs/InsightGroupCollectionMetadata.md)
 - [LaunchDarklyApi::InsightGroupCollectionScoreMetadata](docs/InsightGroupCollectionScoreMetadata.md)
 - [LaunchDarklyApi::InsightGroupScores](docs/InsightGroupScores.md)
 - [LaunchDarklyApi::InsightGroupsCountByIndicator](docs/InsightGroupsCountByIndicator.md)
 - [LaunchDarklyApi::InsightPeriod](docs/InsightPeriod.md)
 - [LaunchDarklyApi::InsightScores](docs/InsightScores.md)
 - [LaunchDarklyApi::InsightsChart](docs/InsightsChart.md)
 - [LaunchDarklyApi::InsightsChartBounds](docs/InsightsChartBounds.md)
 - [LaunchDarklyApi::InsightsChartMetadata](docs/InsightsChartMetadata.md)
 - [LaunchDarklyApi::InsightsChartMetric](docs/InsightsChartMetric.md)
 - [LaunchDarklyApi::InsightsChartSeries](docs/InsightsChartSeries.md)
 - [LaunchDarklyApi::InsightsChartSeriesDataPoint](docs/InsightsChartSeriesDataPoint.md)
 - [LaunchDarklyApi::InsightsChartSeriesMetadata](docs/InsightsChartSeriesMetadata.md)
 - [LaunchDarklyApi::InsightsChartSeriesMetadataAxis](docs/InsightsChartSeriesMetadataAxis.md)
 - [LaunchDarklyApi::InsightsMetricIndicatorRange](docs/InsightsMetricIndicatorRange.md)
 - [LaunchDarklyApi::InsightsMetricScore](docs/InsightsMetricScore.md)
 - [LaunchDarklyApi::InsightsMetricTierDefinition](docs/InsightsMetricTierDefinition.md)
 - [LaunchDarklyApi::InsightsRepository](docs/InsightsRepository.md)
 - [LaunchDarklyApi::InsightsRepositoryCollection](docs/InsightsRepositoryCollection.md)
 - [LaunchDarklyApi::InsightsRepositoryProject](docs/InsightsRepositoryProject.md)
 - [LaunchDarklyApi::InsightsRepositoryProjectCollection](docs/InsightsRepositoryProjectCollection.md)
 - [LaunchDarklyApi::InsightsRepositoryProjectMappings](docs/InsightsRepositoryProjectMappings.md)
 - [LaunchDarklyApi::InstructionUserRequest](docs/InstructionUserRequest.md)
 - [LaunchDarklyApi::Integration](docs/Integration.md)
 - [LaunchDarklyApi::IntegrationConfigurationCollectionRep](docs/IntegrationConfigurationCollectionRep.md)
 - [LaunchDarklyApi::IntegrationConfigurationPost](docs/IntegrationConfigurationPost.md)
 - [LaunchDarklyApi::IntegrationConfigurationsRep](docs/IntegrationConfigurationsRep.md)
 - [LaunchDarklyApi::IntegrationDeliveryConfiguration](docs/IntegrationDeliveryConfiguration.md)
 - [LaunchDarklyApi::IntegrationDeliveryConfigurationCollection](docs/IntegrationDeliveryConfigurationCollection.md)
 - [LaunchDarklyApi::IntegrationDeliveryConfigurationCollectionLinks](docs/IntegrationDeliveryConfigurationCollectionLinks.md)
 - [LaunchDarklyApi::IntegrationDeliveryConfigurationLinks](docs/IntegrationDeliveryConfigurationLinks.md)
 - [LaunchDarklyApi::IntegrationDeliveryConfigurationPost](docs/IntegrationDeliveryConfigurationPost.md)
 - [LaunchDarklyApi::IntegrationDeliveryConfigurationResponse](docs/IntegrationDeliveryConfigurationResponse.md)
 - [LaunchDarklyApi::IntegrationMetadata](docs/IntegrationMetadata.md)
 - [LaunchDarklyApi::IntegrationStatus](docs/IntegrationStatus.md)
 - [LaunchDarklyApi::IntegrationStatusRep](docs/IntegrationStatusRep.md)
 - [LaunchDarklyApi::IntegrationSubscriptionStatusRep](docs/IntegrationSubscriptionStatusRep.md)
 - [LaunchDarklyApi::Integrations](docs/Integrations.md)
 - [LaunchDarklyApi::InvalidRequestErrorRep](docs/InvalidRequestErrorRep.md)
 - [LaunchDarklyApi::IpList](docs/IpList.md)
 - [LaunchDarklyApi::IterationInput](docs/IterationInput.md)
 - [LaunchDarklyApi::IterationRep](docs/IterationRep.md)
 - [LaunchDarklyApi::LastSeenMetadata](docs/LastSeenMetadata.md)
 - [LaunchDarklyApi::LayerCollectionRep](docs/LayerCollectionRep.md)
 - [LaunchDarklyApi::LayerConfigurationRep](docs/LayerConfigurationRep.md)
 - [LaunchDarklyApi::LayerPatchInput](docs/LayerPatchInput.md)
 - [LaunchDarklyApi::LayerPost](docs/LayerPost.md)
 - [LaunchDarklyApi::LayerRep](docs/LayerRep.md)
 - [LaunchDarklyApi::LayerReservationRep](docs/LayerReservationRep.md)
 - [LaunchDarklyApi::LayerSnapshotRep](docs/LayerSnapshotRep.md)
 - [LaunchDarklyApi::LeadTimeStagesRep](docs/LeadTimeStagesRep.md)
 - [LaunchDarklyApi::LegacyExperimentRep](docs/LegacyExperimentRep.md)
 - [LaunchDarklyApi::Link](docs/Link.md)
 - [LaunchDarklyApi::MaintainerMember](docs/MaintainerMember.md)
 - [LaunchDarklyApi::MaintainerRep](docs/MaintainerRep.md)
 - [LaunchDarklyApi::MaintainerTeam](docs/MaintainerTeam.md)
 - [LaunchDarklyApi::Member](docs/Member.md)
 - [LaunchDarklyApi::MemberDataRep](docs/MemberDataRep.md)
 - [LaunchDarklyApi::MemberImportItem](docs/MemberImportItem.md)
 - [LaunchDarklyApi::MemberPermissionGrantSummaryRep](docs/MemberPermissionGrantSummaryRep.md)
 - [LaunchDarklyApi::MemberSummary](docs/MemberSummary.md)
 - [LaunchDarklyApi::MemberTeamSummaryRep](docs/MemberTeamSummaryRep.md)
 - [LaunchDarklyApi::MemberTeamsPostInput](docs/MemberTeamsPostInput.md)
 - [LaunchDarklyApi::Members](docs/Members.md)
 - [LaunchDarklyApi::MembersPatchInput](docs/MembersPatchInput.md)
 - [LaunchDarklyApi::Message](docs/Message.md)
 - [LaunchDarklyApi::MethodNotAllowedErrorRep](docs/MethodNotAllowedErrorRep.md)
 - [LaunchDarklyApi::MetricByVariation](docs/MetricByVariation.md)
 - [LaunchDarklyApi::MetricCollectionRep](docs/MetricCollectionRep.md)
 - [LaunchDarklyApi::MetricEventDefaultRep](docs/MetricEventDefaultRep.md)
 - [LaunchDarklyApi::MetricGroupCollectionRep](docs/MetricGroupCollectionRep.md)
 - [LaunchDarklyApi::MetricGroupPost](docs/MetricGroupPost.md)
 - [LaunchDarklyApi::MetricGroupRep](docs/MetricGroupRep.md)
 - [LaunchDarklyApi::MetricGroupResultsRep](docs/MetricGroupResultsRep.md)
 - [LaunchDarklyApi::MetricInGroupRep](docs/MetricInGroupRep.md)
 - [LaunchDarklyApi::MetricInGroupResultsRep](docs/MetricInGroupResultsRep.md)
 - [LaunchDarklyApi::MetricInMetricGroupInput](docs/MetricInMetricGroupInput.md)
 - [LaunchDarklyApi::MetricInput](docs/MetricInput.md)
 - [LaunchDarklyApi::MetricListingRep](docs/MetricListingRep.md)
 - [LaunchDarklyApi::MetricPost](docs/MetricPost.md)
 - [LaunchDarklyApi::MetricRep](docs/MetricRep.md)
 - [LaunchDarklyApi::MetricSeen](docs/MetricSeen.md)
 - [LaunchDarklyApi::MetricV2Rep](docs/MetricV2Rep.md)
 - [LaunchDarklyApi::Metrics](docs/Metrics.md)
 - [LaunchDarklyApi::MigrationSafetyIssueRep](docs/MigrationSafetyIssueRep.md)
 - [LaunchDarklyApi::MigrationSettingsPost](docs/MigrationSettingsPost.md)
 - [LaunchDarklyApi::ModelConfig](docs/ModelConfig.md)
 - [LaunchDarklyApi::ModelConfigPost](docs/ModelConfigPost.md)
 - [LaunchDarklyApi::Modification](docs/Modification.md)
 - [LaunchDarklyApi::MultiEnvironmentDependentFlag](docs/MultiEnvironmentDependentFlag.md)
 - [LaunchDarklyApi::MultiEnvironmentDependentFlags](docs/MultiEnvironmentDependentFlags.md)
 - [LaunchDarklyApi::NamingConvention](docs/NamingConvention.md)
 - [LaunchDarklyApi::NewMemberForm](docs/NewMemberForm.md)
 - [LaunchDarklyApi::NotFoundErrorRep](docs/NotFoundErrorRep.md)
 - [LaunchDarklyApi::OauthClientPost](docs/OauthClientPost.md)
 - [LaunchDarklyApi::OptionsArray](docs/OptionsArray.md)
 - [LaunchDarklyApi::PaginatedLinks](docs/PaginatedLinks.md)
 - [LaunchDarklyApi::ParameterDefault](docs/ParameterDefault.md)
 - [LaunchDarklyApi::ParameterRep](docs/ParameterRep.md)
 - [LaunchDarklyApi::ParentAndSelfLinks](docs/ParentAndSelfLinks.md)
 - [LaunchDarklyApi::ParentLink](docs/ParentLink.md)
 - [LaunchDarklyApi::ParentResourceRep](docs/ParentResourceRep.md)
 - [LaunchDarklyApi::PatchFailedErrorRep](docs/PatchFailedErrorRep.md)
 - [LaunchDarklyApi::PatchFlagsRequest](docs/PatchFlagsRequest.md)
 - [LaunchDarklyApi::PatchOperation](docs/PatchOperation.md)
 - [LaunchDarklyApi::PatchSegmentExpiringTargetInputRep](docs/PatchSegmentExpiringTargetInputRep.md)
 - [LaunchDarklyApi::PatchSegmentExpiringTargetInstruction](docs/PatchSegmentExpiringTargetInstruction.md)
 - [LaunchDarklyApi::PatchSegmentInstruction](docs/PatchSegmentInstruction.md)
 - [LaunchDarklyApi::PatchSegmentRequest](docs/PatchSegmentRequest.md)
 - [LaunchDarklyApi::PatchUsersRequest](docs/PatchUsersRequest.md)
 - [LaunchDarklyApi::PatchWithComment](docs/PatchWithComment.md)
 - [LaunchDarklyApi::PermissionGrantInput](docs/PermissionGrantInput.md)
 - [LaunchDarklyApi::Phase](docs/Phase.md)
 - [LaunchDarklyApi::PhaseInfo](docs/PhaseInfo.md)
 - [LaunchDarklyApi::PostApprovalRequestApplyRequest](docs/PostApprovalRequestApplyRequest.md)
 - [LaunchDarklyApi::PostApprovalRequestReviewRequest](docs/PostApprovalRequestReviewRequest.md)
 - [LaunchDarklyApi::PostDeploymentEventInput](docs/PostDeploymentEventInput.md)
 - [LaunchDarklyApi::PostFlagScheduledChangesInput](docs/PostFlagScheduledChangesInput.md)
 - [LaunchDarklyApi::PostInsightGroupParams](docs/PostInsightGroupParams.md)
 - [LaunchDarklyApi::Prerequisite](docs/Prerequisite.md)
 - [LaunchDarklyApi::Project](docs/Project.md)
 - [LaunchDarklyApi::ProjectPost](docs/ProjectPost.md)
 - [LaunchDarklyApi::ProjectRep](docs/ProjectRep.md)
 - [LaunchDarklyApi::ProjectSummary](docs/ProjectSummary.md)
 - [LaunchDarklyApi::ProjectSummaryCollection](docs/ProjectSummaryCollection.md)
 - [LaunchDarklyApi::Projects](docs/Projects.md)
 - [LaunchDarklyApi::PullRequestCollectionRep](docs/PullRequestCollectionRep.md)
 - [LaunchDarklyApi::PullRequestLeadTimeRep](docs/PullRequestLeadTimeRep.md)
 - [LaunchDarklyApi::PullRequestRep](docs/PullRequestRep.md)
 - [LaunchDarklyApi::PutBranch](docs/PutBranch.md)
 - [LaunchDarklyApi::RandomizationSettingsPut](docs/RandomizationSettingsPut.md)
 - [LaunchDarklyApi::RandomizationSettingsRep](docs/RandomizationSettingsRep.md)
 - [LaunchDarklyApi::RandomizationUnitInput](docs/RandomizationUnitInput.md)
 - [LaunchDarklyApi::RandomizationUnitRep](docs/RandomizationUnitRep.md)
 - [LaunchDarklyApi::RateLimitedErrorRep](docs/RateLimitedErrorRep.md)
 - [LaunchDarklyApi::RecentTriggerBody](docs/RecentTriggerBody.md)
 - [LaunchDarklyApi::ReferenceRep](docs/ReferenceRep.md)
 - [LaunchDarklyApi::RelatedExperimentRep](docs/RelatedExperimentRep.md)
 - [LaunchDarklyApi::RelativeDifferenceRep](docs/RelativeDifferenceRep.md)
 - [LaunchDarklyApi::RelayAutoConfigCollectionRep](docs/RelayAutoConfigCollectionRep.md)
 - [LaunchDarklyApi::RelayAutoConfigPost](docs/RelayAutoConfigPost.md)
 - [LaunchDarklyApi::RelayAutoConfigRep](docs/RelayAutoConfigRep.md)
 - [LaunchDarklyApi::Release](docs/Release.md)
 - [LaunchDarklyApi::ReleaseAudience](docs/ReleaseAudience.md)
 - [LaunchDarklyApi::ReleaseGuardianConfiguration](docs/ReleaseGuardianConfiguration.md)
 - [LaunchDarklyApi::ReleaseGuardianConfigurationInput](docs/ReleaseGuardianConfigurationInput.md)
 - [LaunchDarklyApi::ReleasePhase](docs/ReleasePhase.md)
 - [LaunchDarklyApi::ReleasePipeline](docs/ReleasePipeline.md)
 - [LaunchDarklyApi::ReleasePipelineCollection](docs/ReleasePipelineCollection.md)
 - [LaunchDarklyApi::ReleaseProgression](docs/ReleaseProgression.md)
 - [LaunchDarklyApi::ReleaseProgressionCollection](docs/ReleaseProgressionCollection.md)
 - [LaunchDarklyApi::ReleaserAudienceConfigInput](docs/ReleaserAudienceConfigInput.md)
 - [LaunchDarklyApi::RepositoryCollectionRep](docs/RepositoryCollectionRep.md)
 - [LaunchDarklyApi::RepositoryPost](docs/RepositoryPost.md)
 - [LaunchDarklyApi::RepositoryRep](docs/RepositoryRep.md)
 - [LaunchDarklyApi::ResourceAccess](docs/ResourceAccess.md)
 - [LaunchDarklyApi::ResourceIDResponse](docs/ResourceIDResponse.md)
 - [LaunchDarklyApi::ResourceId](docs/ResourceId.md)
 - [LaunchDarklyApi::ReviewOutput](docs/ReviewOutput.md)
 - [LaunchDarklyApi::ReviewResponse](docs/ReviewResponse.md)
 - [LaunchDarklyApi::Rollout](docs/Rollout.md)
 - [LaunchDarklyApi::RootResponse](docs/RootResponse.md)
 - [LaunchDarklyApi::Rule](docs/Rule.md)
 - [LaunchDarklyApi::RuleClause](docs/RuleClause.md)
 - [LaunchDarklyApi::SdkListRep](docs/SdkListRep.md)
 - [LaunchDarklyApi::SdkVersionListRep](docs/SdkVersionListRep.md)
 - [LaunchDarklyApi::SdkVersionRep](docs/SdkVersionRep.md)
 - [LaunchDarklyApi::SegmentBody](docs/SegmentBody.md)
 - [LaunchDarklyApi::SegmentMetadata](docs/SegmentMetadata.md)
 - [LaunchDarklyApi::SegmentTarget](docs/SegmentTarget.md)
 - [LaunchDarklyApi::SegmentUserList](docs/SegmentUserList.md)
 - [LaunchDarklyApi::SegmentUserState](docs/SegmentUserState.md)
 - [LaunchDarklyApi::Series](docs/Series.md)
 - [LaunchDarklyApi::SeriesIntervalsRep](docs/SeriesIntervalsRep.md)
 - [LaunchDarklyApi::SeriesListRep](docs/SeriesListRep.md)
 - [LaunchDarklyApi::SimpleHoldoutRep](docs/SimpleHoldoutRep.md)
 - [LaunchDarklyApi::SlicedResultsRep](docs/SlicedResultsRep.md)
 - [LaunchDarklyApi::SourceEnv](docs/SourceEnv.md)
 - [LaunchDarklyApi::SourceFlag](docs/SourceFlag.md)
 - [LaunchDarklyApi::StageInput](docs/StageInput.md)
 - [LaunchDarklyApi::StageOutput](docs/StageOutput.md)
 - [LaunchDarklyApi::Statement](docs/Statement.md)
 - [LaunchDarklyApi::StatementPost](docs/StatementPost.md)
 - [LaunchDarklyApi::StatisticCollectionRep](docs/StatisticCollectionRep.md)
 - [LaunchDarklyApi::StatisticRep](docs/StatisticRep.md)
 - [LaunchDarklyApi::StatisticsRoot](docs/StatisticsRoot.md)
 - [LaunchDarklyApi::StatusConflictErrorRep](docs/StatusConflictErrorRep.md)
 - [LaunchDarklyApi::StatusResponse](docs/StatusResponse.md)
 - [LaunchDarklyApi::StatusServiceUnavailable](docs/StatusServiceUnavailable.md)
 - [LaunchDarklyApi::StoreIntegrationError](docs/StoreIntegrationError.md)
 - [LaunchDarklyApi::SubjectDataRep](docs/SubjectDataRep.md)
 - [LaunchDarklyApi::SubscriptionPost](docs/SubscriptionPost.md)
 - [LaunchDarklyApi::TagsCollection](docs/TagsCollection.md)
 - [LaunchDarklyApi::TagsLink](docs/TagsLink.md)
 - [LaunchDarklyApi::Target](docs/Target.md)
 - [LaunchDarklyApi::TargetResourceRep](docs/TargetResourceRep.md)
 - [LaunchDarklyApi::Team](docs/Team.md)
 - [LaunchDarklyApi::TeamCustomRole](docs/TeamCustomRole.md)
 - [LaunchDarklyApi::TeamCustomRoles](docs/TeamCustomRoles.md)
 - [LaunchDarklyApi::TeamImportsRep](docs/TeamImportsRep.md)
 - [LaunchDarklyApi::TeamMaintainers](docs/TeamMaintainers.md)
 - [LaunchDarklyApi::TeamMembers](docs/TeamMembers.md)
 - [LaunchDarklyApi::TeamPatchInput](docs/TeamPatchInput.md)
 - [LaunchDarklyApi::TeamPostInput](docs/TeamPostInput.md)
 - [LaunchDarklyApi::TeamProjects](docs/TeamProjects.md)
 - [LaunchDarklyApi::Teams](docs/Teams.md)
 - [LaunchDarklyApi::TeamsPatchInput](docs/TeamsPatchInput.md)
 - [LaunchDarklyApi::TimestampRep](docs/TimestampRep.md)
 - [LaunchDarklyApi::Token](docs/Token.md)
 - [LaunchDarklyApi::TokenSummary](docs/TokenSummary.md)
 - [LaunchDarklyApi::Tokens](docs/Tokens.md)
 - [LaunchDarklyApi::TreatmentInput](docs/TreatmentInput.md)
 - [LaunchDarklyApi::TreatmentParameterInput](docs/TreatmentParameterInput.md)
 - [LaunchDarklyApi::TreatmentRep](docs/TreatmentRep.md)
 - [LaunchDarklyApi::TreatmentResultRep](docs/TreatmentResultRep.md)
 - [LaunchDarklyApi::TriggerPost](docs/TriggerPost.md)
 - [LaunchDarklyApi::TriggerWorkflowCollectionRep](docs/TriggerWorkflowCollectionRep.md)
 - [LaunchDarklyApi::TriggerWorkflowRep](docs/TriggerWorkflowRep.md)
 - [LaunchDarklyApi::UnauthorizedErrorRep](docs/UnauthorizedErrorRep.md)
 - [LaunchDarklyApi::UpdatePhaseStatusInput](docs/UpdatePhaseStatusInput.md)
 - [LaunchDarklyApi::UpdateReleasePipelineInput](docs/UpdateReleasePipelineInput.md)
 - [LaunchDarklyApi::UpsertContextKindPayload](docs/UpsertContextKindPayload.md)
 - [LaunchDarklyApi::UpsertFlagDefaultsPayload](docs/UpsertFlagDefaultsPayload.md)
 - [LaunchDarklyApi::UpsertPayloadRep](docs/UpsertPayloadRep.md)
 - [LaunchDarklyApi::UpsertResponseRep](docs/UpsertResponseRep.md)
 - [LaunchDarklyApi::UrlPost](docs/UrlPost.md)
 - [LaunchDarklyApi::User](docs/User.md)
 - [LaunchDarklyApi::UserAttributeNamesRep](docs/UserAttributeNamesRep.md)
 - [LaunchDarklyApi::UserFlagSetting](docs/UserFlagSetting.md)
 - [LaunchDarklyApi::UserFlagSettings](docs/UserFlagSettings.md)
 - [LaunchDarklyApi::UserRecord](docs/UserRecord.md)
 - [LaunchDarklyApi::UserSegment](docs/UserSegment.md)
 - [LaunchDarklyApi::UserSegmentRule](docs/UserSegmentRule.md)
 - [LaunchDarklyApi::UserSegments](docs/UserSegments.md)
 - [LaunchDarklyApi::Users](docs/Users.md)
 - [LaunchDarklyApi::UsersRep](docs/UsersRep.md)
 - [LaunchDarklyApi::ValidationFailedErrorRep](docs/ValidationFailedErrorRep.md)
 - [LaunchDarklyApi::ValuePut](docs/ValuePut.md)
 - [LaunchDarklyApi::Variation](docs/Variation.md)
 - [LaunchDarklyApi::VariationEvalSummary](docs/VariationEvalSummary.md)
 - [LaunchDarklyApi::VariationOrRolloutRep](docs/VariationOrRolloutRep.md)
 - [LaunchDarklyApi::VariationSummary](docs/VariationSummary.md)
 - [LaunchDarklyApi::VersionsRep](docs/VersionsRep.md)
 - [LaunchDarklyApi::Webhook](docs/Webhook.md)
 - [LaunchDarklyApi::WebhookPost](docs/WebhookPost.md)
 - [LaunchDarklyApi::Webhooks](docs/Webhooks.md)
 - [LaunchDarklyApi::WeightedVariation](docs/WeightedVariation.md)
 - [LaunchDarklyApi::WorkflowTemplateMetadata](docs/WorkflowTemplateMetadata.md)
 - [LaunchDarklyApi::WorkflowTemplateOutput](docs/WorkflowTemplateOutput.md)
 - [LaunchDarklyApi::WorkflowTemplateParameter](docs/WorkflowTemplateParameter.md)
 - [LaunchDarklyApi::WorkflowTemplatesListingOutputRep](docs/WorkflowTemplatesListingOutputRep.md)


## Documentation for Authorization


### ApiKey


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

## Sample Code

```ruby
# Load the gem
require 'launchdarkly_api'
require 'launchdarkly_api/models/variation'

# Setup authorization
LaunchDarklyApi.configure do |config|
  config.api_key['ApiKey'] = ENV['LD_API_KEY']
  config.debugging = true
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = "openapi"
flag_key = "test-ruby"

# Create a flag with a json variations
body = LaunchDarklyApi::FeatureFlagBody.new(
  name: "test-ruby",
  key: flag_key,
  variations: [
    LaunchDarklyApi::Variation.new({value: [1,2]}),
    LaunchDarklyApi::Variation.new({value: [3,4]}),
    LaunchDarklyApi::Variation.new({value: [5]}),
  ])

begin
  result = api_instance.post_feature_flag(project_key, body)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception creating feature flag: #{e}"
end

# Clean up new flag
begin
  result = api_instance.delete_feature_flag(project_key, flag_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception deleting feature flag: #{e}"
end
```
