This repository contains a client library for LaunchDarkly's REST API. This client was automatically
generated from our [OpenAPI specification](https://app.launchdarkly.com/api/v2/openapi.json) using a [code generation library](https://github.com/launchdarkly/ld-openapi). View our [sample code](#getting-started) for example usage.

This REST API is for custom integrations, data export, or automating your feature flag workflows. *DO NOT* use this client library to include feature flags in your web or mobile application. To integrate feature flags with your application, read the [SDK documentation](https://docs.launchdarkly.com/sdk).

This client library is only compatible with the latest version of our REST API, version `20220603`. Previous versions of this client library, prior to version 10.0.0, are only compatible with earlier versions of our REST API. When you create an access token, you can set the REST API version associated with the token. By default, API requests you send using the token will use the specified API version. To learn more, read [Versioning](https://apidocs.launchdarkly.com/#section/Overview/Versioning).
# launchdarkly_api

LaunchDarklyApi - the Ruby gem for the LaunchDarkly REST API

# Overview

## Authentication

All REST API resources are authenticated with either [personal or service access tokens](https://docs.launchdarkly.com/home/account-security/api-access-tokens), or session cookies. Other authentication mechanisms are not supported. You can manage personal access tokens on your [**Account settings**](https://app.launchdarkly.com/settings/tokens) page.

LaunchDarkly also has SDK keys, mobile keys, and client-side IDs that are used by our server-side SDKs, mobile SDKs, and JavaScript-based SDKs, respectively. **These keys cannot be used to access our REST API**. These keys are environment-specific, and can only perform read-only operations such as fetching feature flag settings.

| Auth mechanism                                                                                  | Allowed resources                                                                                     | Use cases                                          |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | -------------------------------------------------- |
| [Personal or service access tokens](https://docs.launchdarkly.com/home/account-security/api-access-tokens) | Can be customized on a per-token basis                                                                | Building scripts, custom integrations, data export. |
| SDK keys                                                                                        | Can only access read-only resources specific to server-side SDKs. Restricted to a single environment. | Server-side SDKs                     |
| Mobile keys                                                                                     | Can only access read-only resources specific to mobile SDKs, and only for flags marked available to mobile keys. Restricted to a single environment.           | Mobile SDKs                                        |
| Client-side ID                                                                                  | Can only access read-only resources specific to JavaScript-based client-side SDKs, and only for flags marked available to client-side. Restricted to a single environment.           | Client-side JavaScript                             |

> #### Keep your access tokens and SDK keys private
>
> Access tokens should _never_ be exposed in untrusted contexts. Never put an access token in client-side JavaScript, or embed it in a mobile application. LaunchDarkly has special mobile keys that you can embed in mobile apps. If you accidentally expose an access token or SDK key, you can reset it from your [**Account settings**](https://app.launchdarkly.com/settings/tokens) page.
>
> The client-side ID is safe to embed in untrusted contexts. It's designed for use in client-side JavaScript.

### Authentication using request header

The preferred way to authenticate with the API is by adding an `Authorization` header containing your access token to your requests. The value of the `Authorization` header must be your access token.

Manage personal access tokens from the [**Account settings**](https://app.launchdarkly.com/settings/tokens) page.

### Authentication using session cookie

For testing purposes, you can make API calls directly from your web browser. If you are logged in to the LaunchDarkly application, the API will use your existing session to authenticate calls.

If you have a [role](https://docs.launchdarkly.com/home/team/built-in-roles) other than Admin, or have a [custom role](https://docs.launchdarkly.com/home/team/custom-roles) defined, you may not have permission to perform some API calls. You will receive a `401` response code in that case.

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

All resources expect and return JSON response bodies. Error responses also send a JSON body. To learn more about the error format of the API, read [Errors](/#section/Overview/Errors).

In practice this means that you always get a response with a `Content-Type` header set to `application/json`.

In addition, request bodies for `PATCH`, `POST`, and `PUT` requests must be encoded as JSON with a `Content-Type` header set to `application/json`.

### Summary and detailed representations

When you fetch a list of resources, the response includes only the most important attributes of each resource. This is a _summary representation_ of the resource. When you fetch an individual resource, such as a single feature flag, you receive a _detailed representation_ of the resource.

The best way to find a detailed representation is to follow links. Every summary representation includes a link to its detailed representation.

### Expanding responses

Sometimes the detailed representation of a resource does not include all of the attributes of the resource by default. If this is the case, the request method will clearly document this and describe which attributes you can include in an expanded response.

To include the additional attributes, append the `expand` request parameter to your request and add a comma-separated list of the attributes to include. For example, when you append `?expand=members,roles` to the [Get team](/tag/Teams#operation/getTeam) endpoint, the expanded response includes both of these attributes.

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

Resources that accept partial updates use the `PATCH` verb. Most resources support the [JSON patch](/reference#updates-using-json-patch) format. Some resources also support the [JSON merge patch](/reference#updates-using-json-merge-patch) format, and some resources support the [semantic patch](/reference#updates-using-semantic-patch) format, which is a way to specify the modifications to perform as a set of executable instructions. Each resource supports optional [comments](/reference#updates-with-comments) that you can submit with updates. Comments appear in outgoing webhooks, the audit log, and other integrations.

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

If any instruction in the patch encounters an error, the endpoint returns an error and will not change the resource. In general, each instruction silently does nothing if the resource is already in the state you request.

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
| 429  | Too many requests | Read [Rate limiting](/#section/Overview/Rate-limiting).                                               | Wait and try again later.                                        |

## CORS

The LaunchDarkly API supports Cross Origin Resource Sharing (CORS) for AJAX requests from any origin. If an `Origin` header is given in a request, it will be echoed as an explicitly allowed origin. Otherwise the request returns a wildcard, `Access-Control-Allow-Origin: *`. For more information on CORS, read the [CORS W3C Recommendation](http://www.w3.org/TR/cors). Example CORS headers might look like:

```http
Access-Control-Allow-Headers: Accept, Content-Type, Content-Length, Accept-Encoding, Authorization
Access-Control-Allow-Methods: OPTIONS, GET, DELETE, PATCH
Access-Control-Allow-Origin: *
Access-Control-Max-Age: 300
```

You can make authenticated CORS calls just as you would make same-origin calls, using either [token or session-based authentication](/#section/Overview/Authentication). If you are using session authentication, you should set the `withCredentials` property for your `xhr` request to `true`. You should never expose your access tokens to untrusted entities.

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

A _route_ represents a specific URL pattern and verb. For example, the [Delete environment](/tag/Environments#operation/deleteEnvironment) endpoint is considered a single route, and each call to delete an environment counts against your route-level rate limit for that route.

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
> To use this feature, pass in a header including the `LD-API-Version` key with value set to `beta`. Use this header with each call. To learn more, read [Beta resources](/#section/Overview/Beta-resources).
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

If you are working in the federal instance of LaunchDarkly, the base URI for each request is `https://app.launchdarkly.us`. In the \"Try it\" sandbox for each request, click the request path to view the complete resource path for the federal environment.

To learn more, read [LaunchDarkly in federal environments](https://docs.launchdarkly.com/home/advanced/federal).

## Versioning

We try hard to keep our REST API backwards compatible, but we occasionally have to make backwards-incompatible changes in the process of shipping new features. These breaking changes can cause unexpected behavior if you don't prepare for them accordingly.

Updates to our REST API include support for the latest features in LaunchDarkly. We also release a new version of our REST API every time we make a breaking change. We provide simultaneous support for multiple API versions so you can migrate from your current API version to a new version at your own pace.

### Setting the API version per request

You can set the API version on a specific request by sending an `LD-API-Version` header, as shown in the example below:

```
LD-API-Version: 20220603
```

The header value is the version number of the API version you would like to request. The number for each version corresponds to the date the version was released in `yyyymmdd` format. In the example above the version `20220603` corresponds to June 03, 2022.

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

|<div style=\"width:75px\">Version</div> | Changes | End of life (EOL)
|---|---|---|
| `20220603` | <ul><li>Changed the [list projects](/tag/Projects#operation/getProjects) return value:<ul><li>Response is now paginated with a default limit of `20`.</li><li>Added support for filter and sort.</li><li>The project `environments` field is now expandable. This field is omitted by default.</li></ul></li><li>Changed the [get project](/tag/Projects#operation/getProject) return value:<ul><li>The `environments` field is now expandable. This field is omitted by default.</li></ul></li></ul> | Current |
| `20210729` | <ul><li>Changed the [create approval request](/tag/Approvals#operation/postApprovalRequest) return value. It now returns HTTP Status Code `201` instead of `200`.</li><li> Changed the [get users](/tag/Users#operation/getUser) return value. It now returns a user record, not a user. </li><li>Added additional optional fields to environment, segments, flags, members, and segments, including the ability to create Big Segments. </li><li> Added default values for flag variations when new environments are created. </li><li>Added filtering and pagination for getting flags and members, including `limit`, `number`, `filter`, and `sort` query parameters. </li><li>Added endpoints for expiring user targets for flags and segments, scheduled changes, access tokens, Relay Proxy configuration, integrations and subscriptions, and approvals. </li></ul> | 2023-06-03 |
| `20191212` | <ul><li>[List feature flags](/tag/Feature-flags#operation/getFeatureFlags) now defaults to sending summaries of feature flag configurations, equivalent to setting the query parameter `summary=true`. Summaries omit flag targeting rules and individual user targets from the payload. </li><li> Added endpoints for flags, flag status, projects, environments, audit logs, members, users, custom roles, segments, usage, streams, events, and data export. </li></ul> | 2022-07-29 |
| `20160426` | <ul><li>Initial versioning of API. Tokens created before versioning have their version set to this.</li></ul> | 2020-12-12 |


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.0
- Package version: 14.0.0
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
gem install ./launchdarkly_api-14.0.0.gem
```

(for development, run `gem install --dev ./launchdarkly_api-14.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'launchdarkly_api', '~> 14.0.0'

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

api_instance = LaunchDarklyApi::AccessTokensApi.new
id = 'id_example' # String | The ID of the access token to update

begin
  #Delete access token
  api_instance.delete_token(id)
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling AccessTokensApi->delete_token: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://app.launchdarkly.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
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
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_evaluations_usage**](docs/AccountUsageBetaApi.md#get_evaluations_usage) | **GET** /api/v2/usage/evaluations/{projectKey}/{environmentKey}/{featureFlagKey} | Get evaluations usage
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_events_usage**](docs/AccountUsageBetaApi.md#get_events_usage) | **GET** /api/v2/usage/events/{type} | Get events usage
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_experimentation_keys_usage**](docs/AccountUsageBetaApi.md#get_experimentation_keys_usage) | **GET** /api/v2/usage/experimentation-keys | Get experimentation keys usage
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_experimentation_units_usage**](docs/AccountUsageBetaApi.md#get_experimentation_units_usage) | **GET** /api/v2/usage/experimentation-units | Get experimentation units usage
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_mau_sdks_by_type**](docs/AccountUsageBetaApi.md#get_mau_sdks_by_type) | **GET** /api/v2/usage/mau/sdks | Get MAU SDKs by type
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_mau_usage**](docs/AccountUsageBetaApi.md#get_mau_usage) | **GET** /api/v2/usage/mau | Get MAU usage
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_mau_usage_by_category**](docs/AccountUsageBetaApi.md#get_mau_usage_by_category) | **GET** /api/v2/usage/mau/bycategory | Get MAU usage by category
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_stream_usage**](docs/AccountUsageBetaApi.md#get_stream_usage) | **GET** /api/v2/usage/streams/{source} | Get stream usage
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_stream_usage_by_sdk_version**](docs/AccountUsageBetaApi.md#get_stream_usage_by_sdk_version) | **GET** /api/v2/usage/streams/{source}/bysdkversion | Get stream usage by SDK version
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_stream_usage_sdkversion**](docs/AccountUsageBetaApi.md#get_stream_usage_sdkversion) | **GET** /api/v2/usage/streams/{source}/sdkversions | Get stream usage SDK versions
*LaunchDarklyApi::ApplicationsBetaApi* | [**create_application**](docs/ApplicationsBetaApi.md#create_application) | **POST** /api/v2/applications | Post application
*LaunchDarklyApi::ApplicationsBetaApi* | [**delete_application**](docs/ApplicationsBetaApi.md#delete_application) | **DELETE** /api/v2/applications/{applicationKey} | Delete application
*LaunchDarklyApi::ApplicationsBetaApi* | [**delete_application_version**](docs/ApplicationsBetaApi.md#delete_application_version) | **DELETE** /api/v2/applications/{applicationKey}/versions/{versionKey} | Delete application version
*LaunchDarklyApi::ApplicationsBetaApi* | [**get_application**](docs/ApplicationsBetaApi.md#get_application) | **GET** /api/v2/applications/{applicationKey} | Get application by key
*LaunchDarklyApi::ApplicationsBetaApi* | [**get_application_versions**](docs/ApplicationsBetaApi.md#get_application_versions) | **GET** /api/v2/applications/{applicationKey}/versions | Get application versions by application key
*LaunchDarklyApi::ApplicationsBetaApi* | [**get_applications**](docs/ApplicationsBetaApi.md#get_applications) | **GET** /api/v2/applications | Get applications
*LaunchDarklyApi::ApplicationsBetaApi* | [**patch_application**](docs/ApplicationsBetaApi.md#patch_application) | **PATCH** /api/v2/applications/{applicationKey} | Update application
*LaunchDarklyApi::ApplicationsBetaApi* | [**patch_application_version**](docs/ApplicationsBetaApi.md#patch_application_version) | **PATCH** /api/v2/applications/{applicationKey}/versions/{versionKey} | Update application version
*LaunchDarklyApi::ApplicationsBetaApi* | [**post_application_version**](docs/ApplicationsBetaApi.md#post_application_version) | **POST** /api/v2/applications/{applicationKey}/versions | Post application version
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
*LaunchDarklyApi::AuditLogApi* | [**get_audit_log_entries**](docs/AuditLogApi.md#get_audit_log_entries) | **GET** /api/v2/auditlog | List audit log entries
*LaunchDarklyApi::AuditLogApi* | [**get_audit_log_entry**](docs/AuditLogApi.md#get_audit_log_entry) | **GET** /api/v2/auditlog/{id} | Get audit log entry
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
*LaunchDarklyApi::EnvironmentsApi* | [**delete_environment**](docs/EnvironmentsApi.md#delete_environment) | **DELETE** /api/v2/projects/{projectKey}/environments/{environmentKey} | Delete environment
*LaunchDarklyApi::EnvironmentsApi* | [**get_environment**](docs/EnvironmentsApi.md#get_environment) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey} | Get environment
*LaunchDarklyApi::EnvironmentsApi* | [**get_environments_by_project**](docs/EnvironmentsApi.md#get_environments_by_project) | **GET** /api/v2/projects/{projectKey}/environments | List environments
*LaunchDarklyApi::EnvironmentsApi* | [**patch_environment**](docs/EnvironmentsApi.md#patch_environment) | **PATCH** /api/v2/projects/{projectKey}/environments/{environmentKey} | Update environment
*LaunchDarklyApi::EnvironmentsApi* | [**post_environment**](docs/EnvironmentsApi.md#post_environment) | **POST** /api/v2/projects/{projectKey}/environments | Create environment
*LaunchDarklyApi::EnvironmentsApi* | [**reset_environment_mobile_key**](docs/EnvironmentsApi.md#reset_environment_mobile_key) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/mobileKey | Reset environment mobile SDK key
*LaunchDarklyApi::EnvironmentsApi* | [**reset_environment_sdk_key**](docs/EnvironmentsApi.md#reset_environment_sdk_key) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/apiKey | Reset environment SDK key
*LaunchDarklyApi::ExperimentsBetaApi* | [**create_experiment**](docs/ExperimentsBetaApi.md#create_experiment) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments | Create experiment
*LaunchDarklyApi::ExperimentsBetaApi* | [**create_iteration**](docs/ExperimentsBetaApi.md#create_iteration) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments/{experimentKey}/iterations | Create iteration
*LaunchDarklyApi::ExperimentsBetaApi* | [**get_experiment**](docs/ExperimentsBetaApi.md#get_experiment) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments/{experimentKey} | Get experiment
*LaunchDarklyApi::ExperimentsBetaApi* | [**get_experiment_results**](docs/ExperimentsBetaApi.md#get_experiment_results) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments/{experimentKey}/metrics/{metricKey}/results | Get experiment results
*LaunchDarklyApi::ExperimentsBetaApi* | [**get_experiment_results_for_metric_group**](docs/ExperimentsBetaApi.md#get_experiment_results_for_metric_group) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments/{experimentKey}/metric-groups/{metricGroupKey}/results | Get experiment results for metric group
*LaunchDarklyApi::ExperimentsBetaApi* | [**get_experimentation_settings**](docs/ExperimentsBetaApi.md#get_experimentation_settings) | **GET** /api/v2/projects/{projectKey}/experimentation-settings | Get experimentation settings
*LaunchDarklyApi::ExperimentsBetaApi* | [**get_experiments**](docs/ExperimentsBetaApi.md#get_experiments) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments | Get experiments
*LaunchDarklyApi::ExperimentsBetaApi* | [**get_legacy_experiment_results**](docs/ExperimentsBetaApi.md#get_legacy_experiment_results) | **GET** /api/v2/flags/{projectKey}/{featureFlagKey}/experiments/{environmentKey}/{metricKey} | Get legacy experiment results (deprecated)
*LaunchDarklyApi::ExperimentsBetaApi* | [**patch_experiment**](docs/ExperimentsBetaApi.md#patch_experiment) | **PATCH** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments/{experimentKey} | Patch experiment
*LaunchDarklyApi::ExperimentsBetaApi* | [**put_experimentation_settings**](docs/ExperimentsBetaApi.md#put_experimentation_settings) | **PUT** /api/v2/projects/{projectKey}/experimentation-settings | Update experimentation settings
*LaunchDarklyApi::ExperimentsBetaApi* | [**reset_experiment**](docs/ExperimentsBetaApi.md#reset_experiment) | **DELETE** /api/v2/flags/{projectKey}/{featureFlagKey}/experiments/{environmentKey}/{metricKey}/results | Reset experiment results
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
*LaunchDarklyApi::FeatureFlagsBetaApi* | [**get_dependent_flags**](docs/FeatureFlagsBetaApi.md#get_dependent_flags) | **GET** /api/v2/flags/{projectKey}/{featureFlagKey}/dependent-flags | List dependent feature flags
*LaunchDarklyApi::FeatureFlagsBetaApi* | [**get_dependent_flags_by_env**](docs/FeatureFlagsBetaApi.md#get_dependent_flags_by_env) | **GET** /api/v2/flags/{projectKey}/{environmentKey}/{featureFlagKey}/dependent-flags | List dependent feature flags by environment
*LaunchDarklyApi::FeatureFlagsBetaApi* | [**post_migration_safety_issues**](docs/FeatureFlagsBetaApi.md#post_migration_safety_issues) | **POST** /api/v2/projects/{projectKey}/flags/{flagKey}/environments/{environmentKey}/migration-safety-issues | Get migration safety issues
*LaunchDarklyApi::FlagLinksBetaApi* | [**create_flag_link**](docs/FlagLinksBetaApi.md#create_flag_link) | **POST** /api/v2/flag-links/projects/{projectKey}/flags/{featureFlagKey} | Create flag link
*LaunchDarklyApi::FlagLinksBetaApi* | [**delete_flag_link**](docs/FlagLinksBetaApi.md#delete_flag_link) | **DELETE** /api/v2/flag-links/projects/{projectKey}/flags/{featureFlagKey}/{id} | Delete flag link
*LaunchDarklyApi::FlagLinksBetaApi* | [**get_flag_links**](docs/FlagLinksBetaApi.md#get_flag_links) | **GET** /api/v2/flag-links/projects/{projectKey}/flags/{featureFlagKey} | List flag links
*LaunchDarklyApi::FlagLinksBetaApi* | [**update_flag_link**](docs/FlagLinksBetaApi.md#update_flag_link) | **PATCH** /api/v2/flag-links/projects/{projectKey}/flags/{featureFlagKey}/{id} | Update flag link
*LaunchDarklyApi::FlagTriggersApi* | [**create_trigger_workflow**](docs/FlagTriggersApi.md#create_trigger_workflow) | **POST** /api/v2/flags/{projectKey}/{featureFlagKey}/triggers/{environmentKey} | Create flag trigger
*LaunchDarklyApi::FlagTriggersApi* | [**delete_trigger_workflow**](docs/FlagTriggersApi.md#delete_trigger_workflow) | **DELETE** /api/v2/flags/{projectKey}/{featureFlagKey}/triggers/{environmentKey}/{id} | Delete flag trigger
*LaunchDarklyApi::FlagTriggersApi* | [**get_trigger_workflow_by_id**](docs/FlagTriggersApi.md#get_trigger_workflow_by_id) | **GET** /api/v2/flags/{projectKey}/{featureFlagKey}/triggers/{environmentKey}/{id} | Get flag trigger by ID
*LaunchDarklyApi::FlagTriggersApi* | [**get_trigger_workflows**](docs/FlagTriggersApi.md#get_trigger_workflows) | **GET** /api/v2/flags/{projectKey}/{featureFlagKey}/triggers/{environmentKey} | List flag triggers
*LaunchDarklyApi::FlagTriggersApi* | [**patch_trigger_workflow**](docs/FlagTriggersApi.md#patch_trigger_workflow) | **PATCH** /api/v2/flags/{projectKey}/{featureFlagKey}/triggers/{environmentKey}/{id} | Update flag trigger
*LaunchDarklyApi::FollowFlagsApi* | [**delete_flag_followers**](docs/FollowFlagsApi.md#delete_flag_followers) | **DELETE** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/followers/{memberId} | Remove a member as a follower of a flag in a project and environment
*LaunchDarklyApi::FollowFlagsApi* | [**get_flag_followers**](docs/FollowFlagsApi.md#get_flag_followers) | **GET** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/followers | Get followers of a flag in a project and environment
*LaunchDarklyApi::FollowFlagsApi* | [**get_followers_by_proj_env**](docs/FollowFlagsApi.md#get_followers_by_proj_env) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/followers | Get followers of all flags in a given project and environment
*LaunchDarklyApi::FollowFlagsApi* | [**put_flag_followers**](docs/FollowFlagsApi.md#put_flag_followers) | **PUT** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/followers/{memberId} | Add a member as a follower of a flag in a project and environment
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
*LaunchDarklyApi::OtherApi* | [**get_ips**](docs/OtherApi.md#get_ips) | **GET** /api/v2/public-ip-list | Gets the public IP list
*LaunchDarklyApi::OtherApi* | [**get_openapi_spec**](docs/OtherApi.md#get_openapi_spec) | **GET** /api/v2/openapi.json | Gets the OpenAPI spec in json
*LaunchDarklyApi::OtherApi* | [**get_root**](docs/OtherApi.md#get_root) | **GET** /api/v2 | Root resource
*LaunchDarklyApi::OtherApi* | [**get_versions**](docs/OtherApi.md#get_versions) | **GET** /api/v2/versions | Get version information
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
*LaunchDarklyApi::ReleasePipelinesBetaApi* | [**get_release_pipeline_by_key**](docs/ReleasePipelinesBetaApi.md#get_release_pipeline_by_key) | **GET** /api/v2/projects/{projectKey}/release-pipelines/{pipelineKey} | Get release pipeline by key
*LaunchDarklyApi::ReleasePipelinesBetaApi* | [**patch_release_pipeline**](docs/ReleasePipelinesBetaApi.md#patch_release_pipeline) | **PATCH** /api/v2/projects/{projectKey}/release-pipelines/{pipelineKey} | Update a release pipeline
*LaunchDarklyApi::ReleasePipelinesBetaApi* | [**post_release_pipeline**](docs/ReleasePipelinesBetaApi.md#post_release_pipeline) | **POST** /api/v2/projects/{projectKey}/release-pipelines | Create a release pipeline
*LaunchDarklyApi::ReleasesBetaApi* | [**get_release_by_flag_key**](docs/ReleasesBetaApi.md#get_release_by_flag_key) | **GET** /api/v2/flags/{projectKey}/{flagKey}/release | Get release for flag
*LaunchDarklyApi::ReleasesBetaApi* | [**patch_release_by_flag_key**](docs/ReleasesBetaApi.md#patch_release_by_flag_key) | **PATCH** /api/v2/flags/{projectKey}/{flagKey}/release | Patch release for flag
*LaunchDarklyApi::ScheduledChangesApi* | [**delete_flag_config_scheduled_changes**](docs/ScheduledChangesApi.md#delete_flag_config_scheduled_changes) | **DELETE** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes/{id} | Delete scheduled changes workflow
*LaunchDarklyApi::ScheduledChangesApi* | [**get_feature_flag_scheduled_change**](docs/ScheduledChangesApi.md#get_feature_flag_scheduled_change) | **GET** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes/{id} | Get a scheduled change
*LaunchDarklyApi::ScheduledChangesApi* | [**get_flag_config_scheduled_changes**](docs/ScheduledChangesApi.md#get_flag_config_scheduled_changes) | **GET** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes | List scheduled changes
*LaunchDarklyApi::ScheduledChangesApi* | [**patch_flag_config_scheduled_change**](docs/ScheduledChangesApi.md#patch_flag_config_scheduled_change) | **PATCH** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes/{id} | Update scheduled changes workflow
*LaunchDarklyApi::ScheduledChangesApi* | [**post_flag_config_scheduled_changes**](docs/ScheduledChangesApi.md#post_flag_config_scheduled_changes) | **POST** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes | Create scheduled changes workflow
*LaunchDarklyApi::SegmentsApi* | [**delete_segment**](docs/SegmentsApi.md#delete_segment) | **DELETE** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey} | Delete segment
*LaunchDarklyApi::SegmentsApi* | [**get_context_instance_segments_membership_by_env**](docs/SegmentsApi.md#get_context_instance_segments_membership_by_env) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/segments/evaluate | List segment memberships for context instance
*LaunchDarklyApi::SegmentsApi* | [**get_expiring_targets_for_segment**](docs/SegmentsApi.md#get_expiring_targets_for_segment) | **GET** /api/v2/segments/{projectKey}/{segmentKey}/expiring-targets/{environmentKey} | Get expiring targets for segment
*LaunchDarklyApi::SegmentsApi* | [**get_expiring_user_targets_for_segment**](docs/SegmentsApi.md#get_expiring_user_targets_for_segment) | **GET** /api/v2/segments/{projectKey}/{segmentKey}/expiring-user-targets/{environmentKey} | Get expiring user targets for segment
*LaunchDarklyApi::SegmentsApi* | [**get_segment**](docs/SegmentsApi.md#get_segment) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey} | Get segment
*LaunchDarklyApi::SegmentsApi* | [**get_segment_membership_for_context**](docs/SegmentsApi.md#get_segment_membership_for_context) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/contexts/{contextKey} | Get Big Segment membership for context
*LaunchDarklyApi::SegmentsApi* | [**get_segment_membership_for_user**](docs/SegmentsApi.md#get_segment_membership_for_user) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/users/{userKey} | Get Big Segment membership for user
*LaunchDarklyApi::SegmentsApi* | [**get_segments**](docs/SegmentsApi.md#get_segments) | **GET** /api/v2/segments/{projectKey}/{environmentKey} | List segments
*LaunchDarklyApi::SegmentsApi* | [**patch_expiring_targets_for_segment**](docs/SegmentsApi.md#patch_expiring_targets_for_segment) | **PATCH** /api/v2/segments/{projectKey}/{segmentKey}/expiring-targets/{environmentKey} | Update expiring targets for segment
*LaunchDarklyApi::SegmentsApi* | [**patch_expiring_user_targets_for_segment**](docs/SegmentsApi.md#patch_expiring_user_targets_for_segment) | **PATCH** /api/v2/segments/{projectKey}/{segmentKey}/expiring-user-targets/{environmentKey} | Update expiring user targets for segment
*LaunchDarklyApi::SegmentsApi* | [**patch_segment**](docs/SegmentsApi.md#patch_segment) | **PATCH** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey} | Patch segment
*LaunchDarklyApi::SegmentsApi* | [**post_segment**](docs/SegmentsApi.md#post_segment) | **POST** /api/v2/segments/{projectKey}/{environmentKey} | Create segment
*LaunchDarklyApi::SegmentsApi* | [**update_big_segment_context_targets**](docs/SegmentsApi.md#update_big_segment_context_targets) | **POST** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/contexts | Update context targets on a Big Segment
*LaunchDarklyApi::SegmentsApi* | [**update_big_segment_targets**](docs/SegmentsApi.md#update_big_segment_targets) | **POST** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/users | Update user context targets on a Big Segment
*LaunchDarklyApi::SegmentsBetaApi* | [**create_big_segment_export**](docs/SegmentsBetaApi.md#create_big_segment_export) | **POST** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/exports | Create Big Segment export
*LaunchDarklyApi::SegmentsBetaApi* | [**create_big_segment_import**](docs/SegmentsBetaApi.md#create_big_segment_import) | **POST** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/imports | Create Big Segment import
*LaunchDarklyApi::SegmentsBetaApi* | [**get_big_segment_export**](docs/SegmentsBetaApi.md#get_big_segment_export) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/exports/{exportID} | Get Big Segment export
*LaunchDarklyApi::SegmentsBetaApi* | [**get_big_segment_import**](docs/SegmentsBetaApi.md#get_big_segment_import) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/imports/{importID} | Get Big Segment import
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

 - [LaunchDarklyApi::Access](docs/Access.md)
 - [LaunchDarklyApi::AccessAllowedReason](docs/AccessAllowedReason.md)
 - [LaunchDarklyApi::AccessAllowedRep](docs/AccessAllowedRep.md)
 - [LaunchDarklyApi::AccessDenied](docs/AccessDenied.md)
 - [LaunchDarklyApi::AccessDeniedReason](docs/AccessDeniedReason.md)
 - [LaunchDarklyApi::AccessTokenPost](docs/AccessTokenPost.md)
 - [LaunchDarklyApi::ActionInput](docs/ActionInput.md)
 - [LaunchDarklyApi::ActionOutput](docs/ActionOutput.md)
 - [LaunchDarklyApi::ApplicationCollectionRep](docs/ApplicationCollectionRep.md)
 - [LaunchDarklyApi::ApplicationExpandableFields](docs/ApplicationExpandableFields.md)
 - [LaunchDarklyApi::ApplicationFlagCollectionRep](docs/ApplicationFlagCollectionRep.md)
 - [LaunchDarklyApi::ApplicationRep](docs/ApplicationRep.md)
 - [LaunchDarklyApi::ApplicationVersionRep](docs/ApplicationVersionRep.md)
 - [LaunchDarklyApi::ApplicationVersionsCollectionRep](docs/ApplicationVersionsCollectionRep.md)
 - [LaunchDarklyApi::ApprovalConditionInput](docs/ApprovalConditionInput.md)
 - [LaunchDarklyApi::ApprovalConditionOutput](docs/ApprovalConditionOutput.md)
 - [LaunchDarklyApi::ApprovalRequestResponse](docs/ApprovalRequestResponse.md)
 - [LaunchDarklyApi::ApprovalSettings](docs/ApprovalSettings.md)
 - [LaunchDarklyApi::Audience](docs/Audience.md)
 - [LaunchDarklyApi::AudiencePost](docs/AudiencePost.md)
 - [LaunchDarklyApi::AuditLogEntryListingRep](docs/AuditLogEntryListingRep.md)
 - [LaunchDarklyApi::AuditLogEntryListingRepCollection](docs/AuditLogEntryListingRepCollection.md)
 - [LaunchDarklyApi::AuditLogEntryRep](docs/AuditLogEntryRep.md)
 - [LaunchDarklyApi::AuthorizedAppDataRep](docs/AuthorizedAppDataRep.md)
 - [LaunchDarklyApi::BigSegmentTarget](docs/BigSegmentTarget.md)
 - [LaunchDarklyApi::BooleanDefaults](docs/BooleanDefaults.md)
 - [LaunchDarklyApi::BooleanFlagDefaults](docs/BooleanFlagDefaults.md)
 - [LaunchDarklyApi::BranchCollectionRep](docs/BranchCollectionRep.md)
 - [LaunchDarklyApi::BranchRep](docs/BranchRep.md)
 - [LaunchDarklyApi::BulkEditMembersRep](docs/BulkEditMembersRep.md)
 - [LaunchDarklyApi::BulkEditTeamsRep](docs/BulkEditTeamsRep.md)
 - [LaunchDarklyApi::Clause](docs/Clause.md)
 - [LaunchDarklyApi::Client](docs/Client.md)
 - [LaunchDarklyApi::ClientCollection](docs/ClientCollection.md)
 - [LaunchDarklyApi::ClientSideAvailability](docs/ClientSideAvailability.md)
 - [LaunchDarklyApi::ClientSideAvailabilityPost](docs/ClientSideAvailabilityPost.md)
 - [LaunchDarklyApi::CompletedBy](docs/CompletedBy.md)
 - [LaunchDarklyApi::ConditionBaseOutput](docs/ConditionBaseOutput.md)
 - [LaunchDarklyApi::ConditionInput](docs/ConditionInput.md)
 - [LaunchDarklyApi::ConditionOutput](docs/ConditionOutput.md)
 - [LaunchDarklyApi::ConfidenceIntervalRep](docs/ConfidenceIntervalRep.md)
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
 - [LaunchDarklyApi::ContextKind](docs/ContextKind.md)
 - [LaunchDarklyApi::ContextKindRep](docs/ContextKindRep.md)
 - [LaunchDarklyApi::ContextKindsCollectionRep](docs/ContextKindsCollectionRep.md)
 - [LaunchDarklyApi::ContextRecord](docs/ContextRecord.md)
 - [LaunchDarklyApi::ContextSearch](docs/ContextSearch.md)
 - [LaunchDarklyApi::Contexts](docs/Contexts.md)
 - [LaunchDarklyApi::CopiedFromEnv](docs/CopiedFromEnv.md)
 - [LaunchDarklyApi::CreateApplicationInput](docs/CreateApplicationInput.md)
 - [LaunchDarklyApi::CreateApplicationVersionInput](docs/CreateApplicationVersionInput.md)
 - [LaunchDarklyApi::CreateApprovalRequestRequest](docs/CreateApprovalRequestRequest.md)
 - [LaunchDarklyApi::CreateCopyFlagConfigApprovalRequestRequest](docs/CreateCopyFlagConfigApprovalRequestRequest.md)
 - [LaunchDarklyApi::CreateFlagConfigApprovalRequestRequest](docs/CreateFlagConfigApprovalRequestRequest.md)
 - [LaunchDarklyApi::CreatePhaseInput](docs/CreatePhaseInput.md)
 - [LaunchDarklyApi::CreateReleasePipelineInput](docs/CreateReleasePipelineInput.md)
 - [LaunchDarklyApi::CreateWorkflowTemplateInput](docs/CreateWorkflowTemplateInput.md)
 - [LaunchDarklyApi::CredibleIntervalRep](docs/CredibleIntervalRep.md)
 - [LaunchDarklyApi::CustomProperty](docs/CustomProperty.md)
 - [LaunchDarklyApi::CustomRole](docs/CustomRole.md)
 - [LaunchDarklyApi::CustomRolePost](docs/CustomRolePost.md)
 - [LaunchDarklyApi::CustomRolePostData](docs/CustomRolePostData.md)
 - [LaunchDarklyApi::CustomRoleSummary](docs/CustomRoleSummary.md)
 - [LaunchDarklyApi::CustomRoles](docs/CustomRoles.md)
 - [LaunchDarklyApi::CustomWorkflowInput](docs/CustomWorkflowInput.md)
 - [LaunchDarklyApi::CustomWorkflowMeta](docs/CustomWorkflowMeta.md)
 - [LaunchDarklyApi::CustomWorkflowOutput](docs/CustomWorkflowOutput.md)
 - [LaunchDarklyApi::CustomWorkflowStageMeta](docs/CustomWorkflowStageMeta.md)
 - [LaunchDarklyApi::CustomWorkflowsListingOutput](docs/CustomWorkflowsListingOutput.md)
 - [LaunchDarklyApi::Database](docs/Database.md)
 - [LaunchDarklyApi::DefaultClientSideAvailability](docs/DefaultClientSideAvailability.md)
 - [LaunchDarklyApi::DefaultClientSideAvailabilityPost](docs/DefaultClientSideAvailabilityPost.md)
 - [LaunchDarklyApi::Defaults](docs/Defaults.md)
 - [LaunchDarklyApi::DependentExperimentRep](docs/DependentExperimentRep.md)
 - [LaunchDarklyApi::DependentFlag](docs/DependentFlag.md)
 - [LaunchDarklyApi::DependentFlagEnvironment](docs/DependentFlagEnvironment.md)
 - [LaunchDarklyApi::DependentFlagsByEnvironment](docs/DependentFlagsByEnvironment.md)
 - [LaunchDarklyApi::DependentMetricOrMetricGroupRep](docs/DependentMetricOrMetricGroupRep.md)
 - [LaunchDarklyApi::DesignExpandableProperties](docs/DesignExpandableProperties.md)
 - [LaunchDarklyApi::DesignRep](docs/DesignRep.md)
 - [LaunchDarklyApi::Destination](docs/Destination.md)
 - [LaunchDarklyApi::DestinationPost](docs/DestinationPost.md)
 - [LaunchDarklyApi::Destinations](docs/Destinations.md)
 - [LaunchDarklyApi::Distribution](docs/Distribution.md)
 - [LaunchDarklyApi::Environment](docs/Environment.md)
 - [LaunchDarklyApi::EnvironmentPost](docs/EnvironmentPost.md)
 - [LaunchDarklyApi::EnvironmentSummary](docs/EnvironmentSummary.md)
 - [LaunchDarklyApi::Environments](docs/Environments.md)
 - [LaunchDarklyApi::EvaluationReason](docs/EvaluationReason.md)
 - [LaunchDarklyApi::ExecutionOutput](docs/ExecutionOutput.md)
 - [LaunchDarklyApi::ExpandableApprovalRequestResponse](docs/ExpandableApprovalRequestResponse.md)
 - [LaunchDarklyApi::ExpandableApprovalRequestsResponse](docs/ExpandableApprovalRequestsResponse.md)
 - [LaunchDarklyApi::ExpandedFlagRep](docs/ExpandedFlagRep.md)
 - [LaunchDarklyApi::Experiment](docs/Experiment.md)
 - [LaunchDarklyApi::ExperimentAllocationRep](docs/ExperimentAllocationRep.md)
 - [LaunchDarklyApi::ExperimentBayesianResultsRep](docs/ExperimentBayesianResultsRep.md)
 - [LaunchDarklyApi::ExperimentCollectionRep](docs/ExperimentCollectionRep.md)
 - [LaunchDarklyApi::ExperimentEnabledPeriodRep](docs/ExperimentEnabledPeriodRep.md)
 - [LaunchDarklyApi::ExperimentEnvironmentSettingRep](docs/ExperimentEnvironmentSettingRep.md)
 - [LaunchDarklyApi::ExperimentExpandableProperties](docs/ExperimentExpandableProperties.md)
 - [LaunchDarklyApi::ExperimentInfoRep](docs/ExperimentInfoRep.md)
 - [LaunchDarklyApi::ExperimentMetadataRep](docs/ExperimentMetadataRep.md)
 - [LaunchDarklyApi::ExperimentPatchInput](docs/ExperimentPatchInput.md)
 - [LaunchDarklyApi::ExperimentPost](docs/ExperimentPost.md)
 - [LaunchDarklyApi::ExperimentResults](docs/ExperimentResults.md)
 - [LaunchDarklyApi::ExperimentStatsRep](docs/ExperimentStatsRep.md)
 - [LaunchDarklyApi::ExperimentTimeSeriesSlice](docs/ExperimentTimeSeriesSlice.md)
 - [LaunchDarklyApi::ExperimentTimeSeriesVariationSlice](docs/ExperimentTimeSeriesVariationSlice.md)
 - [LaunchDarklyApi::ExperimentTotalsRep](docs/ExperimentTotalsRep.md)
 - [LaunchDarklyApi::ExperimentationSettingsPut](docs/ExperimentationSettingsPut.md)
 - [LaunchDarklyApi::ExperimentationSettingsRep](docs/ExperimentationSettingsRep.md)
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
 - [LaunchDarklyApi::FlagDefaults](docs/FlagDefaults.md)
 - [LaunchDarklyApi::FlagDefaultsApiBaseRep](docs/FlagDefaultsApiBaseRep.md)
 - [LaunchDarklyApi::FlagDefaultsRep](docs/FlagDefaultsRep.md)
 - [LaunchDarklyApi::FlagFollowersByProjEnvGetRep](docs/FlagFollowersByProjEnvGetRep.md)
 - [LaunchDarklyApi::FlagFollowersGetRep](docs/FlagFollowersGetRep.md)
 - [LaunchDarklyApi::FlagGlobalAttributesRep](docs/FlagGlobalAttributesRep.md)
 - [LaunchDarklyApi::FlagInput](docs/FlagInput.md)
 - [LaunchDarklyApi::FlagLinkCollectionRep](docs/FlagLinkCollectionRep.md)
 - [LaunchDarklyApi::FlagLinkMember](docs/FlagLinkMember.md)
 - [LaunchDarklyApi::FlagLinkPost](docs/FlagLinkPost.md)
 - [LaunchDarklyApi::FlagLinkRep](docs/FlagLinkRep.md)
 - [LaunchDarklyApi::FlagListingRep](docs/FlagListingRep.md)
 - [LaunchDarklyApi::FlagMigrationSettingsRep](docs/FlagMigrationSettingsRep.md)
 - [LaunchDarklyApi::FlagRep](docs/FlagRep.md)
 - [LaunchDarklyApi::FlagScheduledChangesInput](docs/FlagScheduledChangesInput.md)
 - [LaunchDarklyApi::FlagSempatch](docs/FlagSempatch.md)
 - [LaunchDarklyApi::FlagStatusRep](docs/FlagStatusRep.md)
 - [LaunchDarklyApi::FlagSummary](docs/FlagSummary.md)
 - [LaunchDarklyApi::FlagTriggerInput](docs/FlagTriggerInput.md)
 - [LaunchDarklyApi::FollowFlagMember](docs/FollowFlagMember.md)
 - [LaunchDarklyApi::FollowersPerFlag](docs/FollowersPerFlag.md)
 - [LaunchDarklyApi::ForbiddenErrorRep](docs/ForbiddenErrorRep.md)
 - [LaunchDarklyApi::HunkRep](docs/HunkRep.md)
 - [LaunchDarklyApi::Import](docs/Import.md)
 - [LaunchDarklyApi::InitiatorRep](docs/InitiatorRep.md)
 - [LaunchDarklyApi::InstructionUserRequest](docs/InstructionUserRequest.md)
 - [LaunchDarklyApi::Integration](docs/Integration.md)
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
 - [LaunchDarklyApi::LegacyExperimentRep](docs/LegacyExperimentRep.md)
 - [LaunchDarklyApi::Link](docs/Link.md)
 - [LaunchDarklyApi::MaintainerInput](docs/MaintainerInput.md)
 - [LaunchDarklyApi::MaintainerRep](docs/MaintainerRep.md)
 - [LaunchDarklyApi::MaintainerTeam](docs/MaintainerTeam.md)
 - [LaunchDarklyApi::Member](docs/Member.md)
 - [LaunchDarklyApi::MemberDataRep](docs/MemberDataRep.md)
 - [LaunchDarklyApi::MemberImportItem](docs/MemberImportItem.md)
 - [LaunchDarklyApi::MemberInput](docs/MemberInput.md)
 - [LaunchDarklyApi::MemberPermissionGrantSummaryRep](docs/MemberPermissionGrantSummaryRep.md)
 - [LaunchDarklyApi::MemberSummary](docs/MemberSummary.md)
 - [LaunchDarklyApi::MemberTeamSummaryRep](docs/MemberTeamSummaryRep.md)
 - [LaunchDarklyApi::MemberTeamsPostInput](docs/MemberTeamsPostInput.md)
 - [LaunchDarklyApi::Members](docs/Members.md)
 - [LaunchDarklyApi::MembersPatchInput](docs/MembersPatchInput.md)
 - [LaunchDarklyApi::MethodNotAllowedErrorRep](docs/MethodNotAllowedErrorRep.md)
 - [LaunchDarklyApi::MetricCollectionRep](docs/MetricCollectionRep.md)
 - [LaunchDarklyApi::MetricEventDefaultRep](docs/MetricEventDefaultRep.md)
 - [LaunchDarklyApi::MetricGroupCollectionRep](docs/MetricGroupCollectionRep.md)
 - [LaunchDarklyApi::MetricGroupPost](docs/MetricGroupPost.md)
 - [LaunchDarklyApi::MetricGroupRep](docs/MetricGroupRep.md)
 - [LaunchDarklyApi::MetricGroupRepExpandableProperties](docs/MetricGroupRepExpandableProperties.md)
 - [LaunchDarklyApi::MetricGroupResultsRep](docs/MetricGroupResultsRep.md)
 - [LaunchDarklyApi::MetricInGroupRep](docs/MetricInGroupRep.md)
 - [LaunchDarklyApi::MetricInGroupResultsRep](docs/MetricInGroupResultsRep.md)
 - [LaunchDarklyApi::MetricInMetricGroupInput](docs/MetricInMetricGroupInput.md)
 - [LaunchDarklyApi::MetricInput](docs/MetricInput.md)
 - [LaunchDarklyApi::MetricListingRep](docs/MetricListingRep.md)
 - [LaunchDarklyApi::MetricListingRepExpandableProperties](docs/MetricListingRepExpandableProperties.md)
 - [LaunchDarklyApi::MetricPost](docs/MetricPost.md)
 - [LaunchDarklyApi::MetricRep](docs/MetricRep.md)
 - [LaunchDarklyApi::MetricRepExpandableProperties](docs/MetricRepExpandableProperties.md)
 - [LaunchDarklyApi::MetricSeen](docs/MetricSeen.md)
 - [LaunchDarklyApi::MetricV2Rep](docs/MetricV2Rep.md)
 - [LaunchDarklyApi::MigrationSafetyIssueRep](docs/MigrationSafetyIssueRep.md)
 - [LaunchDarklyApi::MigrationSettingsPost](docs/MigrationSettingsPost.md)
 - [LaunchDarklyApi::Modification](docs/Modification.md)
 - [LaunchDarklyApi::MultiEnvironmentDependentFlag](docs/MultiEnvironmentDependentFlag.md)
 - [LaunchDarklyApi::MultiEnvironmentDependentFlags](docs/MultiEnvironmentDependentFlags.md)
 - [LaunchDarklyApi::NewMemberForm](docs/NewMemberForm.md)
 - [LaunchDarklyApi::NotFoundErrorRep](docs/NotFoundErrorRep.md)
 - [LaunchDarklyApi::OauthClientPost](docs/OauthClientPost.md)
 - [LaunchDarklyApi::ParameterDefault](docs/ParameterDefault.md)
 - [LaunchDarklyApi::ParameterDefaultInput](docs/ParameterDefaultInput.md)
 - [LaunchDarklyApi::ParameterRep](docs/ParameterRep.md)
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
 - [LaunchDarklyApi::PostApprovalRequestApplyRequest](docs/PostApprovalRequestApplyRequest.md)
 - [LaunchDarklyApi::PostApprovalRequestReviewRequest](docs/PostApprovalRequestReviewRequest.md)
 - [LaunchDarklyApi::PostFlagScheduledChangesInput](docs/PostFlagScheduledChangesInput.md)
 - [LaunchDarklyApi::Prerequisite](docs/Prerequisite.md)
 - [LaunchDarklyApi::Project](docs/Project.md)
 - [LaunchDarklyApi::ProjectListingRep](docs/ProjectListingRep.md)
 - [LaunchDarklyApi::ProjectPost](docs/ProjectPost.md)
 - [LaunchDarklyApi::ProjectRep](docs/ProjectRep.md)
 - [LaunchDarklyApi::ProjectSummary](docs/ProjectSummary.md)
 - [LaunchDarklyApi::Projects](docs/Projects.md)
 - [LaunchDarklyApi::PubNubDetailRep](docs/PubNubDetailRep.md)
 - [LaunchDarklyApi::PutBranch](docs/PutBranch.md)
 - [LaunchDarklyApi::RandomizationUnitInput](docs/RandomizationUnitInput.md)
 - [LaunchDarklyApi::RandomizationUnitRep](docs/RandomizationUnitRep.md)
 - [LaunchDarklyApi::RateLimitedErrorRep](docs/RateLimitedErrorRep.md)
 - [LaunchDarklyApi::RecentTriggerBody](docs/RecentTriggerBody.md)
 - [LaunchDarklyApi::ReferenceRep](docs/ReferenceRep.md)
 - [LaunchDarklyApi::RelativeDifferenceRep](docs/RelativeDifferenceRep.md)
 - [LaunchDarklyApi::RelayAutoConfigCollectionRep](docs/RelayAutoConfigCollectionRep.md)
 - [LaunchDarklyApi::RelayAutoConfigPost](docs/RelayAutoConfigPost.md)
 - [LaunchDarklyApi::RelayAutoConfigRep](docs/RelayAutoConfigRep.md)
 - [LaunchDarklyApi::Release](docs/Release.md)
 - [LaunchDarklyApi::ReleasePhase](docs/ReleasePhase.md)
 - [LaunchDarklyApi::ReleasePipeline](docs/ReleasePipeline.md)
 - [LaunchDarklyApi::ReleasePipelineCollection](docs/ReleasePipelineCollection.md)
 - [LaunchDarklyApi::RepositoryCollectionRep](docs/RepositoryCollectionRep.md)
 - [LaunchDarklyApi::RepositoryPost](docs/RepositoryPost.md)
 - [LaunchDarklyApi::RepositoryRep](docs/RepositoryRep.md)
 - [LaunchDarklyApi::ResolvedContext](docs/ResolvedContext.md)
 - [LaunchDarklyApi::ResolvedImage](docs/ResolvedImage.md)
 - [LaunchDarklyApi::ResolvedTitle](docs/ResolvedTitle.md)
 - [LaunchDarklyApi::ResolvedUIBlockElement](docs/ResolvedUIBlockElement.md)
 - [LaunchDarklyApi::ResolvedUIBlocks](docs/ResolvedUIBlocks.md)
 - [LaunchDarklyApi::ResourceAccess](docs/ResourceAccess.md)
 - [LaunchDarklyApi::ResourceIDResponse](docs/ResourceIDResponse.md)
 - [LaunchDarklyApi::ResourceId](docs/ResourceId.md)
 - [LaunchDarklyApi::ReviewOutput](docs/ReviewOutput.md)
 - [LaunchDarklyApi::ReviewResponse](docs/ReviewResponse.md)
 - [LaunchDarklyApi::Rollout](docs/Rollout.md)
 - [LaunchDarklyApi::RootResponse](docs/RootResponse.md)
 - [LaunchDarklyApi::Rule](docs/Rule.md)
 - [LaunchDarklyApi::RuleClause](docs/RuleClause.md)
 - [LaunchDarklyApi::ScheduleConditionInput](docs/ScheduleConditionInput.md)
 - [LaunchDarklyApi::ScheduleConditionOutput](docs/ScheduleConditionOutput.md)
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
 - [LaunchDarklyApi::SlicedResultsRep](docs/SlicedResultsRep.md)
 - [LaunchDarklyApi::SourceEnv](docs/SourceEnv.md)
 - [LaunchDarklyApi::SourceFlag](docs/SourceFlag.md)
 - [LaunchDarklyApi::StageInput](docs/StageInput.md)
 - [LaunchDarklyApi::StageOutput](docs/StageOutput.md)
 - [LaunchDarklyApi::Statement](docs/Statement.md)
 - [LaunchDarklyApi::StatementPost](docs/StatementPost.md)
 - [LaunchDarklyApi::StatementPostData](docs/StatementPostData.md)
 - [LaunchDarklyApi::StatisticCollectionRep](docs/StatisticCollectionRep.md)
 - [LaunchDarklyApi::StatisticRep](docs/StatisticRep.md)
 - [LaunchDarklyApi::StatisticsRep](docs/StatisticsRep.md)
 - [LaunchDarklyApi::StatisticsRoot](docs/StatisticsRoot.md)
 - [LaunchDarklyApi::StatusConflictErrorRep](docs/StatusConflictErrorRep.md)
 - [LaunchDarklyApi::StatusServiceUnavailable](docs/StatusServiceUnavailable.md)
 - [LaunchDarklyApi::SubjectDataRep](docs/SubjectDataRep.md)
 - [LaunchDarklyApi::SubscriptionPost](docs/SubscriptionPost.md)
 - [LaunchDarklyApi::TagCollection](docs/TagCollection.md)
 - [LaunchDarklyApi::Target](docs/Target.md)
 - [LaunchDarklyApi::TargetResourceRep](docs/TargetResourceRep.md)
 - [LaunchDarklyApi::Team](docs/Team.md)
 - [LaunchDarklyApi::TeamCustomRole](docs/TeamCustomRole.md)
 - [LaunchDarklyApi::TeamCustomRoles](docs/TeamCustomRoles.md)
 - [LaunchDarklyApi::TeamImportsRep](docs/TeamImportsRep.md)
 - [LaunchDarklyApi::TeamInput](docs/TeamInput.md)
 - [LaunchDarklyApi::TeamMaintainers](docs/TeamMaintainers.md)
 - [LaunchDarklyApi::TeamMembers](docs/TeamMembers.md)
 - [LaunchDarklyApi::TeamPatchInput](docs/TeamPatchInput.md)
 - [LaunchDarklyApi::TeamPostInput](docs/TeamPostInput.md)
 - [LaunchDarklyApi::TeamProjects](docs/TeamProjects.md)
 - [LaunchDarklyApi::TeamRepExpandableProperties](docs/TeamRepExpandableProperties.md)
 - [LaunchDarklyApi::Teams](docs/Teams.md)
 - [LaunchDarklyApi::TeamsPatchInput](docs/TeamsPatchInput.md)
 - [LaunchDarklyApi::TimestampRep](docs/TimestampRep.md)
 - [LaunchDarklyApi::TitleRep](docs/TitleRep.md)
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
 - [LaunchDarklyApi::UserRecordRep](docs/UserRecordRep.md)
 - [LaunchDarklyApi::UserSegment](docs/UserSegment.md)
 - [LaunchDarklyApi::UserSegmentRule](docs/UserSegmentRule.md)
 - [LaunchDarklyApi::UserSegments](docs/UserSegments.md)
 - [LaunchDarklyApi::Users](docs/Users.md)
 - [LaunchDarklyApi::UsersRep](docs/UsersRep.md)
 - [LaunchDarklyApi::ValuePut](docs/ValuePut.md)
 - [LaunchDarklyApi::Variate](docs/Variate.md)
 - [LaunchDarklyApi::Variation](docs/Variation.md)
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
 - [LaunchDarklyApi::WorkflowTemplateParameterInput](docs/WorkflowTemplateParameterInput.md)
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
