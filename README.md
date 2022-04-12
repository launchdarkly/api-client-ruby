This repository contains a client library for LaunchDarkly's REST API. This client was automatically
generated from our [OpenAPI specification](https://app.launchdarkly.com/api/v2/openapi.json) using a [code generation library](https://github.com/launchdarkly/ld-openapi). View our [sample code](#sample-code) for example usage.

This REST API is for custom integrations, data export, or automating your feature flag workflows. *DO NOT* use this client library to include feature flags in your web or mobile application. To integrate feature flags with your application, read the [SDK documentation](https://docs.launchdarkly.com/sdk).
# launchdarkly_api

LaunchDarklyApi - the Ruby gem for the LaunchDarkly REST API

# Overview

## Authentication

All REST API resources are authenticated with either [personal or service access tokens](https://docs.launchdarkly.com/home/account-security/api-access-tokens), or session cookies. Other authentication mechanisms are not supported. You can manage personal access tokens on your [Account settings](https://app.launchdarkly.com/settings/tokens) page.

LaunchDarkly also has SDK keys, mobile keys, and client-side IDs that are used by our server-side SDKs, mobile SDKs, and client-side SDKs, respectively. **These keys cannot be used to access our REST API**. These keys are environment-specific, and can only perform read-only operations (fetching feature flag settings).

| Auth mechanism                                                                                  | Allowed resources                                                                                     | Use cases                                          |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | -------------------------------------------------- |
| [Personal access tokens](https://docs.launchdarkly.com/home/account-security/api-access-tokens) | Can be customized on a per-token basis                                                                | Building scripts, custom integrations, data export |
| SDK keys                                                                                        | Can only access read-only SDK-specific resources and the firehose, restricted to a single environment | Server-side SDKs, Firehose API                     |
| Mobile keys                                                                                     | Can only access read-only mobile SDK-specific resources, restricted to a single environment           | Mobile SDKs                                        |
| Client-side ID                                                                                  | Single environment, only flags marked available to client-side                                        | Client-side JavaScript                             |

> #### Keep your access tokens and SDK keys private
>
> Access tokens should _never_ be exposed in untrusted contexts. Never put an access token in client-side JavaScript, or embed it in a mobile application. LaunchDarkly has special mobile keys that you can embed in mobile apps. If you accidentally expose an access token or SDK key, you can reset it from your [Account Settings](https://app.launchdarkly.com/settings#/tokens) page.
>
> The client-side ID is safe to embed in untrusted contexts. It's designed for use in client-side JavaScript.

### Via request header

The preferred way to authenticate with the API is by adding an `Authorization` header containing your access token to your requests. The value of the `Authorization` header must be your access token.

Manage personal access tokens from the [Account Settings](https://app.launchdarkly.com/settings/tokens) page.

### Via session cookie

For testing purposes, you can make API calls directly from your web browser. If you're logged in to the application, the API will use your existing session to authenticate calls.

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

All resources expect and return JSON response bodies. Error responses will also send a JSON body. Read [Errors](#section/Errors) for a more detailed description of the error format used by the API.

In practice this means that you always get a response with a `Content-Type` header set to `application/json`.

In addition, request bodies for `PUT`, `POST`, `REPORT` and `PATCH` requests must be encoded as JSON with a `Content-Type` header set to `application/json`.

### Summary and detailed representations

When you fetch a list of resources, the response includes only the most important attributes of each resource. This is a _summary representation_ of the resource. When you fetch an individual resource, such as a single feature flag, you receive a _detailed representation_ of the resource.

The best way to find a detailed representation is to follow links. Every summary representation includes a link to its detailed representation.

In most cases, the detailed representation contains all of the attributes of the resource. In a few cases, the detailed representation contains many, but not all, of the attributes of the resource. Typically this happens when an attribute of the requested resource is itself paginated. You can request that the response include a particular attribute by using the `expand` request parameter.

### Links and addressability

The best way to navigate the API is by following links. These are attributes in representations that link to other resources. The API always uses the same format for links:

- Links to other resources within the API are encapsulated in a `_links` object.
- If the resource has a corresponding link to HTML content on the site, it is stored in a special `_site` link.

Each link has two attributes: an href (the URL) and a type (the content type). For example, a feature resource might return the following:

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

### Expanding responses

Sometimes the detailed representation of a resource does not include all of the attributes of the resource by default. If this is the case, the request method will clearly document this and describe which attributes you can include in an expanded response.

To include the additional attributes, append the `expand` request parameter to your request and add a comma-separated list of the attributes to include. For example, when you append `?expand=members,roles` to the [Get team](/tag/Teams-(beta)#operation/getTeam) endpoint, the expanded response includes both of these attributes.

## Updates

Resources that accept partial updates use the `PATCH` verb, and support the [JSON Patch](https://datatracker.ietf.org/doc/html/rfc6902) format. Some resources also support the [JSON Merge Patch](https://datatracker.ietf.org/doc/html/rfc7386) format. In addition, some resources support optional comments that can be submitted with updates. Comments appear in outgoing webhooks, the audit log, and other integrations.

### Updates via JSON Patch

[JSON Patch](https://datatracker.ietf.org/doc/html/rfc6902) is a way to specify the modifications to perform on a resource. For example, in this feature flag representation:

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

JSON Patch documents are always arrays. You can specify multiple modifications to perform in a single request. You can also test that certain preconditions are met before applying the patch:

```json
[
  { \"op\": \"test\", \"path\": \"/version\", \"value\": 10 },
  { \"op\": \"replace\", \"path\": \"/description\", \"value\": \"The new description\" }
]
```

The above patch request tests whether the feature flag's `version` is `10`, and if so, changes the feature flag's description.

Attributes that aren't editable, like a resource's `_links`, have names that start with an underscore.

### Updates via JSON Merge Patch

The API also supports the [JSON Merge Patch](https://datatracker.ietf.org/doc/html/rfc7386) format, as well as the [Update feature flag](/tag/Feature-flags#operation/patchFeatureFlag) resource.

JSON Merge Patch is less expressive than JSON Patch but in many cases, it is simpler to construct a merge patch document. For example, you can change a feature flag's description with the following merge patch document:

```json
{
  \"description\": \"New flag description\"
}
```

### Updates with comments

You can submit optional comments with `PATCH` changes. The [Update feature flag](/tag/Feature-flags#operation/patchFeatureFlag) resource supports comments.

To submit a comment along with a JSON Patch document, use the following format:

```json
{
  \"comment\": \"This is a comment string\",
  \"patch\": [{ \"op\": \"replace\", \"path\": \"/description\", \"value\": \"The new description\" }]
}
```

To submit a comment along with a JSON Merge Patch document, use the following format:

```json
{
  \"comment\": \"This is a comment string\",
  \"merge\": { \"description\": \"New flag description\" }
}
```

### Updates via semantic patches

The API also supports the Semantic patch format. A semantic `PATCH` is a way to specify the modifications to perform on a resource as a set of executable instructions.

JSON Patch uses paths and a limited set of operations to describe how to transform the current state of the resource into a new state. Semantic patch allows you to be explicit about intent using precise, custom instructions. In many cases, semantic patch instructions can also be defined independently of the current state of the resource. This can be useful when defining a change that may be applied at a future date.

For example, in this feature flag configuration in environment Production:

```json
{
    \"name\": \"Alternate sort order\",
    \"kind\": \"boolean\",
    \"key\": \"sort.order\",
   ...
    \"environments\": {
        \"production\": {
            \"on\": true,
            \"archived\": false,
            \"salt\": \"c29ydC5vcmRlcg==\",
            \"sel\": \"8de1085cb7354b0ab41c0e778376dfd3\",
            \"lastModified\": 1469131558260,
            \"version\": 81,
            \"targets\": [
                {
                    \"values\": [
                        \"Gerhard.Little@yahoo.com\"
                    ],
                    \"variation\": 0
                },
                {
                    \"values\": [
                        \"1461797806429-33-861961230\",
                        \"438580d8-02ee-418d-9eec-0085cab2bdf0\"
                    ],
                    \"variation\": 1
                }
            ],
            \"rules\": [],
            \"fallthrough\": {
                \"variation\": 0
            },
            \"offVariation\": 1,
            \"prerequisites\": [],
            \"_site\": {
                \"href\": \"/default/production/features/sort.order\",
                \"type\": \"text/html\"
            }
       }
    }
}
```

You can add a date you want a user to be removed from the feature flag's user targets. For example, “remove user 1461797806429-33-861961230 from the user target for variation 0 on the Alternate sort order flag in the production environment on Wed Jul 08 2020 at 15:27:41 pm”. This is done using the following:

```json
{
  \"comment\": \"update expiring user targets\",
  \"instructions\": [
    {
      \"kind\": \"removeExpireUserTargetDate\",
      \"userKey\": \"userKey\",
      \"variationId\": \"978d53f9-7fe3-4a63-992d-97bcb4535dc8\"
    },
    {
      \"kind\": \"updateExpireUserTargetDate\",
      \"userKey\": \"userKey2\",
      \"variationId\": \"978d53f9-7fe3-4a63-992d-97bcb4535dc8\",
      \"value\": 1587582000000
    },
    {
      \"kind\": \"addExpireUserTargetDate\",
      \"userKey\": \"userKey3\",
      \"variationId\": \"978d53f9-7fe3-4a63-992d-97bcb4535dc8\",
      \"value\": 1594247266386
    }
  ]
}
```

Here is another example. In this feature flag configuration:

```json
{
  \"name\": \"New recommendations engine\",
  \"key\": \"engine.enable\",
  \"environments\": {
    \"test\": {
      \"on\": true
    }
  }
}
```

You can change the feature flag's description with the following patch document as a set of executable instructions. For example, “add user X to targets for variation Y and remove user A from targets for variation B for test flag”:

```json
{
  \"comment\": \"\",
  \"instructions\": [
    {
      \"kind\": \"removeUserTargets\",
      \"values\": [\"438580d8-02ee-418d-9eec-0085cab2bdf0\"],
      \"variationId\": \"852cb784-54ff-46b9-8c35-5498d2e4f270\"
    },
    {
      \"kind\": \"addUserTargets\",
      \"values\": [\"438580d8-02ee-418d-9eec-0085cab2bdf0\"],
      \"variationId\": \"1bb18465-33b6-49aa-a3bd-eeb6650b33ad\"
    }
  ]
}
```

> ### Supported semantic patch API endpoints
>
> - [Update feature flag](/tag/Feature-flags#operation/patchFeatureFlag)
> - [Update expiring user targets on feature flag](/tag/Feature-flags#operation/patchExpiringUserTargets)
> - [Update expiring user target for flags](/tag/User-settings#operation/patchExpiringFlagsForUser)
> - [Update expiring user targets on segment](/tag/Segments#operation/patchExpiringUserTargetsForSegment)

## Errors

The API always returns errors in a common format. Here's an example:

```json
{
  \"code\": \"invalid_request\",
  \"message\": \"A feature with that key already exists\",
  \"id\": \"30ce6058-87da-11e4-b116-123b93f75cba\"
}
```

The general class of error is indicated by the `code`. The `message` is a human-readable explanation of what went wrong. The `id` is a unique identifier. Use it when you're working with LaunchDarkly support to debug a problem with a specific API call.

### HTTP Status - Error Response Codes

| Code | Definition        | Desc.                                                                                       | Possible Solution                                                |
| ---- | ----------------- | ------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- |
| 400  | Bad Request       | A request that fails may return this HTTP response code.                                    | Ensure JSON syntax in request body is correct.                   |
| 401  | Unauthorized      | User doesn't have permission to an API call.                                                | Ensure your SDK key is good.                                     |
| 403  | Forbidden         | User does not have permission for operation.                                                | Ensure that the user or access token has proper permissions set. |
| 409  | Conflict          | The API request could not be completed because it conflicted with a concurrent API request. | Retry your request.                                              |
| 429  | Too many requests | See [Rate limiting](/#section/Rate-limiting).                                               | Wait and try again later.                                        |

## CORS

The LaunchDarkly API supports Cross Origin Resource Sharing (CORS) for AJAX requests from any origin. If an `Origin` header is given in a request, it will be echoed as an explicitly allowed origin. Otherwise, a wildcard is returned: `Access-Control-Allow-Origin: *`. For more information on CORS, see the [CORS W3C Recommendation](http://www.w3.org/TR/cors). Example CORS headers might look like:

```http
Access-Control-Allow-Headers: Accept, Content-Type, Content-Length, Accept-Encoding, Authorization
Access-Control-Allow-Methods: OPTIONS, GET, DELETE, PATCH
Access-Control-Allow-Origin: *
Access-Control-Max-Age: 300
```

You can make authenticated CORS calls just as you would make same-origin calls, using either [token or session-based authentication](#section/Authentication). If you’re using session auth, you should set the `withCredentials` property for your `xhr` request to `true`. You should never expose your access tokens to untrusted users.

## Rate limiting

We use several rate limiting strategies to ensure the availability of our APIs. Rate-limited calls to our APIs will return a `429` status code. Calls to our APIs will include headers indicating the current rate limit status. The specific headers returned depend on the API route being called. The limits differ based on the route, authentication mechanism, and other factors. Routes that are not rate limited may not contain any of the headers described below.

> ### Rate limiting and SDKs
>
> LaunchDarkly SDKs are never rate limited and do not use the API endpoints defined here. LaunchDarkly uses a different set of approaches, including streaming/server-sent events and a global CDN, to ensure availability to the routes used by LaunchDarkly SDKs.
>
> The client-side ID is safe to embed in untrusted contexts. It's designed for use in client-side JavaScript.

### Global rate limits

Authenticated requests are subject to a global limit. This is the maximum number of calls that can be made to the API per ten seconds. All personal access tokens on the account share this limit, so exceeding the limit with one access token will impact other tokens. Calls that are subject to global rate limits will return the headers below:

| Header name                    | Description                                                                      |
| ------------------------------ | -------------------------------------------------------------------------------- |
| `X-Ratelimit-Global-Remaining` | The maximum number of requests the account is permitted to make per ten seconds. |
| `X-Ratelimit-Reset`            | The time at which the current rate limit window resets in epoch milliseconds.    |

We do not publicly document the specific number of calls that can be made globally. This limit may change, and we encourage clients to program against the specification, relying on the two headers defined above, rather than hardcoding to the current limit.

### Route-level rate limits

Some authenticated routes have custom rate limits. These also reset every ten seconds. Any access tokens hitting the same route share this limit, so exceeding the limit with one access token may impact other tokens. Calls that are subject to route-level rate limits will return the headers below:

| Header name                   | Description                                                                                           |
| ----------------------------- | ----------------------------------------------------------------------------------------------------- |
| `X-Ratelimit-Route-Remaining` | The maximum number of requests to the current route the account is permitted to make per ten seconds. |
| `X-Ratelimit-Reset`           | The time at which the current rate limit window resets in epoch milliseconds.                         |

A _route_ represents a specific URL pattern and verb. For example, the [Delete environment](/tag/Environments#operation/deleteEnvironment) endpoint is considered a single route, and each call to delete an environment counts against your route-level rate limit for that route.

We do not publicly document the specific number of calls that can be made to each endpoint per ten seconds. These limits may change, and we encourage clients to program against the specification, relying on the two headers defined above, rather than hardcoding to the current limits.

### IP-based rate limiting

We also employ IP-based rate limiting on some API routes. If you hit an IP-based rate limit, your API response will include a `Retry-After` header indicating how long to wait before re-trying the call. Clients must wait at least `Retry-After` seconds before making additional calls to our API, and should employ jitter and backoff strategies to avoid triggering rate limits again.

## OpenAPI (Swagger)

We have a [complete OpenAPI (Swagger) specification](https://app.launchdarkly.com/api/v2/openapi.json) for our API.

You can use this specification to generate client libraries to interact with our REST API in your language of choice.

This specification is supported by several API-based tools such as Postman and Insomnia. In many cases, you can directly import our specification to ease use in navigating the APIs in the tooling.

## Client libraries

We auto-generate multiple client libraries based on our OpenAPI specification. To learn more, visit [GitHub](https://github.com/search?q=topic%3Alaunchdarkly-api+org%3Alaunchdarkly&type=Repositories).

## Method Overriding

Some firewalls and HTTP clients restrict the use of verbs other than `GET` and `POST`. In those environments, our API endpoints that use `PUT`, `PATCH`, and `DELETE` verbs will be inaccessible.

To avoid this issue, our API supports the `X-HTTP-Method-Override` header, allowing clients to \"tunnel\" `PUT`, `PATCH`, and `DELETE` requests via a `POST` request.

For example, if you wish to call one of our `PATCH` resources via a `POST` request, you can include `X-HTTP-Method-Override:PATCH` as a header.

## Beta resources

We sometimes release new API resources in **beta** status before we release them with general availability.

Resources that are in beta are still undergoing testing and development. They may change without notice, including becoming backwards incompatible.

We try to promote resources into general availability as quickly as possible. This happens after sufficient testing and when we're satisfied that we no longer need to make backwards-incompatible changes.

We mark beta resources with a \"Beta\" callout in our documentation, pictured below:

> ### This feature is in beta
>
> To use this feature, pass in a header including the `LD-API-Version` key with value set to `beta`. Use this header with each call. To learn more, read [Beta resources](/#section/Overview/Beta-resources).

### Using beta resources

To use a beta resource, you must include a header in the request. If you call a beta resource without this header, you'll receive a `403` response.

Use this header:

```
LD-API-Version: beta
```

## Versioning

We try hard to keep our REST API backwards compatible, but we occasionally have to make backwards-incompatible changes in the process of shipping new features. These breaking changes can cause unexpected behavior if you don't prepare for them accordingly.

Updates to our REST API include support for the latest features in LaunchDarkly. We also release a new version of our REST API every time we make a breaking change. We provide simultaneous support for multiple API versions so you can migrate from your current API version to a new version at your own pace.

### Setting the API version per request

You can set the API version on a specific request by sending an `LD-API-Version` header, as shown in the example below:

```
LD-API-Version: 20210729
```

The header value is the version number of the API version you'd like to request. The number for each version corresponds to the date the version was released in yyyymmdd format. In the example above the version `20210729` corresponds to July 29, 2021.

### Setting the API version per access token

When creating an access token, you must specify a specific version of the API to use. This ensures that integrations using this token cannot be broken by version changes.

Tokens created before versioning was released have their version set to `20160426` (the version of the API that existed before versioning) so that they continue working the same way they did before versioning.

If you would like to upgrade your integration to use a new API version, you can explicitly set the header described above.

> ### Best practice: Set the header for every client or integration
>
> We recommend that you set the API version header explicitly in any client or integration you build.
>
> Only rely on the access token API version during manual testing.

### API version changelog

| Version | Changes |
|---|---|
| `20210729` | <ul><li>Changed the [create approval request](/tag/Approvals#operation/postApprovalRequest) return value. It now returns HTTP Status Code `201` instead of `200`.</li><li> Changed the [get users](/tag/Users#operation/getUser) return value. It now returns a user record, not a user. </li><li> Added additional optional fields to environment, segments, flags, members, and segments, including the ability to create Big Segments. </li><li> Added default values for flag variations when new environments are created. </li><li> Added filtering and pagination for getting flags and members, including `limit`, `number`, `filter`, and `sort` query parameters. </li><li> Added endpoints for expiring user targets for flags and segments, scheduled changes, access tokens, Relay Proxy configuration, integrations and subscriptions, and approvals. </li></ul> |
| `20191212` | <ul><li>[List feature flags](/tag/Feature-flags#operation/getFeatureFlags) now defaults to sending summaries of feature flag configurations, equivalent to setting the query parameter `summary=true`. Summaries omit flag targeting rules and individual user targets from the payload. </li><li> Added endpoints for flags, flag status, projects, environments, users, audit logs, members, users, custom roles, segments, usage, streams, events, and data export. </li></ul> |
| `20160426` | <ul><li>Initial versioning of API. Tokens created before versioning have their version set to this.</li></ul> |


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.0
- Package version: 9.0.0
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
gem install ./launchdarkly_api-9.0.0.gem
```

(for development, run `gem install --dev ./launchdarkly_api-9.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'launchdarkly_api', '~> 9.0.0'

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
*LaunchDarklyApi::AccountMembersApi* | [**post_member_teams**](docs/AccountMembersApi.md#post_member_teams) | **POST** /api/v2/members/{id}/teams | Add member to teams
*LaunchDarklyApi::AccountMembersApi* | [**post_members**](docs/AccountMembersApi.md#post_members) | **POST** /api/v2/members | Invite new members
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_evaluations_usage**](docs/AccountUsageBetaApi.md#get_evaluations_usage) | **GET** /api/v2/usage/evaluations/{projectKey}/{environmentKey}/{featureFlagKey} | Get evaluations usage
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_events_usage**](docs/AccountUsageBetaApi.md#get_events_usage) | **GET** /api/v2/usage/events/{type} | Get events usage
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_mau_sdks_by_type**](docs/AccountUsageBetaApi.md#get_mau_sdks_by_type) | **GET** /api/v2/usage/mau/sdks | Get MAU SDKs by type
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_mau_usage**](docs/AccountUsageBetaApi.md#get_mau_usage) | **GET** /api/v2/usage/mau | Get MAU usage
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_mau_usage_by_category**](docs/AccountUsageBetaApi.md#get_mau_usage_by_category) | **GET** /api/v2/usage/mau/bycategory | Get MAU usage by category
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_stream_usage**](docs/AccountUsageBetaApi.md#get_stream_usage) | **GET** /api/v2/usage/streams/{source} | Get stream usage
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_stream_usage_by_sdk_version**](docs/AccountUsageBetaApi.md#get_stream_usage_by_sdk_version) | **GET** /api/v2/usage/streams/{source}/bysdkversion | Get stream usage by SDK version
*LaunchDarklyApi::AccountUsageBetaApi* | [**get_stream_usage_sdkversion**](docs/AccountUsageBetaApi.md#get_stream_usage_sdkversion) | **GET** /api/v2/usage/streams/{source}/sdkversions | Get stream usage SDK versions
*LaunchDarklyApi::ApprovalsApi* | [**delete_approval_request**](docs/ApprovalsApi.md#delete_approval_request) | **DELETE** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{id} | Delete approval request
*LaunchDarklyApi::ApprovalsApi* | [**get_approval**](docs/ApprovalsApi.md#get_approval) | **GET** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{id} | Get approval request
*LaunchDarklyApi::ApprovalsApi* | [**get_approvals**](docs/ApprovalsApi.md#get_approvals) | **GET** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests | List all approval requests
*LaunchDarklyApi::ApprovalsApi* | [**post_approval_request**](docs/ApprovalsApi.md#post_approval_request) | **POST** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests | Create approval request
*LaunchDarklyApi::ApprovalsApi* | [**post_approval_request_apply_request**](docs/ApprovalsApi.md#post_approval_request_apply_request) | **POST** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{id}/apply | Apply approval request
*LaunchDarklyApi::ApprovalsApi* | [**post_approval_request_review**](docs/ApprovalsApi.md#post_approval_request_review) | **POST** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{id}/reviews | Review approval request
*LaunchDarklyApi::ApprovalsApi* | [**post_flag_copy_config_approval_request**](docs/ApprovalsApi.md#post_flag_copy_config_approval_request) | **POST** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests-flag-copy | Create approval request to copy flag configurations across environments
*LaunchDarklyApi::AuditLogApi* | [**get_audit_log_entries**](docs/AuditLogApi.md#get_audit_log_entries) | **GET** /api/v2/auditlog | List audit log feature flag entries
*LaunchDarklyApi::AuditLogApi* | [**get_audit_log_entry**](docs/AuditLogApi.md#get_audit_log_entry) | **GET** /api/v2/auditlog/{id} | Get audit log entry
*LaunchDarklyApi::CodeReferencesApi* | [**delete_branches**](docs/CodeReferencesApi.md#delete_branches) | **POST** /api/v2/code-refs/repositories/{repo}/branch-delete-tasks | Delete branches
*LaunchDarklyApi::CodeReferencesApi* | [**delete_repository**](docs/CodeReferencesApi.md#delete_repository) | **DELETE** /api/v2/code-refs/repositories/{repo} | Delete repository
*LaunchDarklyApi::CodeReferencesApi* | [**get_branch**](docs/CodeReferencesApi.md#get_branch) | **GET** /api/v2/code-refs/repositories/{repo}/branches/{branch} | Get branch
*LaunchDarklyApi::CodeReferencesApi* | [**get_branches**](docs/CodeReferencesApi.md#get_branches) | **GET** /api/v2/code-refs/repositories/{repo}/branches | List branches
*LaunchDarklyApi::CodeReferencesApi* | [**get_extinctions**](docs/CodeReferencesApi.md#get_extinctions) | **GET** /api/v2/code-refs/extinctions | List extinctions
*LaunchDarklyApi::CodeReferencesApi* | [**get_repositories**](docs/CodeReferencesApi.md#get_repositories) | **GET** /api/v2/code-refs/repositories | List repositories
*LaunchDarklyApi::CodeReferencesApi* | [**get_repository**](docs/CodeReferencesApi.md#get_repository) | **GET** /api/v2/code-refs/repositories/{repo} | Get repository
*LaunchDarklyApi::CodeReferencesApi* | [**get_root_statistic**](docs/CodeReferencesApi.md#get_root_statistic) | **GET** /api/v2/code-refs/statistics | Get links to code reference repositories for each project
*LaunchDarklyApi::CodeReferencesApi* | [**get_statistics**](docs/CodeReferencesApi.md#get_statistics) | **GET** /api/v2/code-refs/statistics/{projectKey} | Get number of code references for flags
*LaunchDarklyApi::CodeReferencesApi* | [**patch_repository**](docs/CodeReferencesApi.md#patch_repository) | **PATCH** /api/v2/code-refs/repositories/{repo} | Update repository
*LaunchDarklyApi::CodeReferencesApi* | [**post_extinction**](docs/CodeReferencesApi.md#post_extinction) | **POST** /api/v2/code-refs/repositories/{repo}/branches/{branch}/extinction-events | Create extinction
*LaunchDarklyApi::CodeReferencesApi* | [**post_repository**](docs/CodeReferencesApi.md#post_repository) | **POST** /api/v2/code-refs/repositories | Create repository
*LaunchDarklyApi::CodeReferencesApi* | [**put_branch**](docs/CodeReferencesApi.md#put_branch) | **PUT** /api/v2/code-refs/repositories/{repo}/branches/{branch} | Upsert branch
*LaunchDarklyApi::CustomRolesApi* | [**delete_custom_role**](docs/CustomRolesApi.md#delete_custom_role) | **DELETE** /api/v2/roles/{customRoleKey} | Delete custom role
*LaunchDarklyApi::CustomRolesApi* | [**get_custom_role**](docs/CustomRolesApi.md#get_custom_role) | **GET** /api/v2/roles/{customRoleKey} | Get custom role
*LaunchDarklyApi::CustomRolesApi* | [**get_custom_roles**](docs/CustomRolesApi.md#get_custom_roles) | **GET** /api/v2/roles | List custom roles
*LaunchDarklyApi::CustomRolesApi* | [**patch_custom_role**](docs/CustomRolesApi.md#patch_custom_role) | **PATCH** /api/v2/roles/{customRoleKey} | Update custom role
*LaunchDarklyApi::CustomRolesApi* | [**post_custom_role**](docs/CustomRolesApi.md#post_custom_role) | **POST** /api/v2/roles | Create custom role
*LaunchDarklyApi::DataExportDestinationsApi* | [**delete_destination**](docs/DataExportDestinationsApi.md#delete_destination) | **DELETE** /api/v2/destinations/{projectKey}/{environmentKey}/{id} | Delete Data Export destination
*LaunchDarklyApi::DataExportDestinationsApi* | [**get_destination**](docs/DataExportDestinationsApi.md#get_destination) | **GET** /api/v2/destinations/{projectKey}/{environmentKey}/{id} | Get destination
*LaunchDarklyApi::DataExportDestinationsApi* | [**get_destinations**](docs/DataExportDestinationsApi.md#get_destinations) | **GET** /api/v2/destinations | List destinations
*LaunchDarklyApi::DataExportDestinationsApi* | [**patch_destination**](docs/DataExportDestinationsApi.md#patch_destination) | **PATCH** /api/v2/destinations/{projectKey}/{environmentKey}/{id} | Update Data Export destination
*LaunchDarklyApi::DataExportDestinationsApi* | [**post_destination**](docs/DataExportDestinationsApi.md#post_destination) | **POST** /api/v2/destinations/{projectKey}/{environmentKey} | Create data export destination
*LaunchDarklyApi::EnvironmentsApi* | [**delete_environment**](docs/EnvironmentsApi.md#delete_environment) | **DELETE** /api/v2/projects/{projectKey}/environments/{environmentKey} | Delete environment
*LaunchDarklyApi::EnvironmentsApi* | [**get_environment**](docs/EnvironmentsApi.md#get_environment) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey} | Get environment
*LaunchDarklyApi::EnvironmentsApi* | [**patch_environment**](docs/EnvironmentsApi.md#patch_environment) | **PATCH** /api/v2/projects/{projectKey}/environments/{environmentKey} | Update environment
*LaunchDarklyApi::EnvironmentsApi* | [**post_environment**](docs/EnvironmentsApi.md#post_environment) | **POST** /api/v2/projects/{projectKey}/environments | Create environment
*LaunchDarklyApi::EnvironmentsApi* | [**reset_environment_mobile_key**](docs/EnvironmentsApi.md#reset_environment_mobile_key) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/mobileKey | Reset environment mobile SDK key
*LaunchDarklyApi::EnvironmentsApi* | [**reset_environment_sdk_key**](docs/EnvironmentsApi.md#reset_environment_sdk_key) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/apiKey | Reset environment SDK key
*LaunchDarklyApi::ExperimentsBetaApi* | [**create_experiment**](docs/ExperimentsBetaApi.md#create_experiment) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments | Create experiment
*LaunchDarklyApi::ExperimentsBetaApi* | [**create_iteration**](docs/ExperimentsBetaApi.md#create_iteration) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments/{experimentKey}/iterations | Create iteration
*LaunchDarklyApi::ExperimentsBetaApi* | [**get_experiment**](docs/ExperimentsBetaApi.md#get_experiment) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments/{experimentKey} | Get experiment
*LaunchDarklyApi::ExperimentsBetaApi* | [**get_experiment_results**](docs/ExperimentsBetaApi.md#get_experiment_results) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments/{experimentKey}/metrics/{metricKey}/results | Get experiment results
*LaunchDarklyApi::ExperimentsBetaApi* | [**get_experiments**](docs/ExperimentsBetaApi.md#get_experiments) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments | Get experiments
*LaunchDarklyApi::ExperimentsBetaApi* | [**get_legacy_experiment_results**](docs/ExperimentsBetaApi.md#get_legacy_experiment_results) | **GET** /api/v2/flags/{projectKey}/{featureFlagKey}/experiments/{environmentKey}/{metricKey} | Get legacy experiment results (deprecated)
*LaunchDarklyApi::ExperimentsBetaApi* | [**patch_experiment**](docs/ExperimentsBetaApi.md#patch_experiment) | **PATCH** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments/{experimentKey} | Patch experiment
*LaunchDarklyApi::ExperimentsBetaApi* | [**reset_experiment**](docs/ExperimentsBetaApi.md#reset_experiment) | **DELETE** /api/v2/flags/{projectKey}/{featureFlagKey}/experiments/{environmentKey}/{metricKey}/results | Reset experiment results
*LaunchDarklyApi::FeatureFlagsApi* | [**copy_feature_flag**](docs/FeatureFlagsApi.md#copy_feature_flag) | **POST** /api/v2/flags/{projectKey}/{featureFlagKey}/copy | Copy feature flag
*LaunchDarklyApi::FeatureFlagsApi* | [**delete_feature_flag**](docs/FeatureFlagsApi.md#delete_feature_flag) | **DELETE** /api/v2/flags/{projectKey}/{featureFlagKey} | Delete feature flag
*LaunchDarklyApi::FeatureFlagsApi* | [**get_expiring_user_targets**](docs/FeatureFlagsApi.md#get_expiring_user_targets) | **GET** /api/v2/flags/{projectKey}/{featureFlagKey}/expiring-user-targets/{environmentKey} | Get expiring user targets for feature flag
*LaunchDarklyApi::FeatureFlagsApi* | [**get_feature_flag**](docs/FeatureFlagsApi.md#get_feature_flag) | **GET** /api/v2/flags/{projectKey}/{featureFlagKey} | Get feature flag
*LaunchDarklyApi::FeatureFlagsApi* | [**get_feature_flag_status**](docs/FeatureFlagsApi.md#get_feature_flag_status) | **GET** /api/v2/flag-statuses/{projectKey}/{environmentKey}/{featureFlagKey} | Get feature flag status
*LaunchDarklyApi::FeatureFlagsApi* | [**get_feature_flag_status_across_environments**](docs/FeatureFlagsApi.md#get_feature_flag_status_across_environments) | **GET** /api/v2/flag-status/{projectKey}/{featureFlagKey} | Get flag status across environments
*LaunchDarklyApi::FeatureFlagsApi* | [**get_feature_flag_statuses**](docs/FeatureFlagsApi.md#get_feature_flag_statuses) | **GET** /api/v2/flag-statuses/{projectKey}/{environmentKey} | List feature flag statuses
*LaunchDarklyApi::FeatureFlagsApi* | [**get_feature_flags**](docs/FeatureFlagsApi.md#get_feature_flags) | **GET** /api/v2/flags/{projectKey} | List feature flags
*LaunchDarklyApi::FeatureFlagsApi* | [**patch_expiring_user_targets**](docs/FeatureFlagsApi.md#patch_expiring_user_targets) | **PATCH** /api/v2/flags/{projectKey}/{featureFlagKey}/expiring-user-targets/{environmentKey} | Update expiring user targets on feature flag
*LaunchDarklyApi::FeatureFlagsApi* | [**patch_feature_flag**](docs/FeatureFlagsApi.md#patch_feature_flag) | **PATCH** /api/v2/flags/{projectKey}/{featureFlagKey} | Update feature flag
*LaunchDarklyApi::FeatureFlagsApi* | [**post_feature_flag**](docs/FeatureFlagsApi.md#post_feature_flag) | **POST** /api/v2/flags/{projectKey} | Create a feature flag
*LaunchDarklyApi::FeatureFlagsBetaApi* | [**get_dependent_flags**](docs/FeatureFlagsBetaApi.md#get_dependent_flags) | **GET** /api/v2/flags/{projectKey}/{featureFlagKey}/dependent-flags | List dependent feature flags
*LaunchDarklyApi::FeatureFlagsBetaApi* | [**get_dependent_flags_by_env**](docs/FeatureFlagsBetaApi.md#get_dependent_flags_by_env) | **GET** /api/v2/flags/{projectKey}/{environmentKey}/{featureFlagKey}/dependent-flags | List dependent feature flags by environment
*LaunchDarklyApi::FlagLinksBetaApi* | [**create_flag_link**](docs/FlagLinksBetaApi.md#create_flag_link) | **POST** /api/v2/flag-links/projects/{projectKey}/flags/{featureFlagKey} | Create flag link
*LaunchDarklyApi::FlagLinksBetaApi* | [**delete_flag_link**](docs/FlagLinksBetaApi.md#delete_flag_link) | **DELETE** /api/v2/flag-links/projects/{projectKey}/flags/{featureFlagKey}/{id} | Delete flag link
*LaunchDarklyApi::FlagLinksBetaApi* | [**get_flag_links**](docs/FlagLinksBetaApi.md#get_flag_links) | **GET** /api/v2/flag-links/projects/{projectKey}/flags/{featureFlagKey} | List flag links
*LaunchDarklyApi::FlagLinksBetaApi* | [**update_flag_link**](docs/FlagLinksBetaApi.md#update_flag_link) | **PATCH** /api/v2/flag-links/projects/{projectKey}/flags/{featureFlagKey}/{id} | Update flag link
*LaunchDarklyApi::FlagTriggersApi* | [**create_trigger_workflow**](docs/FlagTriggersApi.md#create_trigger_workflow) | **POST** /api/v2/flags/{projectKey}/{featureFlagKey}/triggers/{environmentKey} | Create flag trigger
*LaunchDarklyApi::FlagTriggersApi* | [**delete_trigger_workflow**](docs/FlagTriggersApi.md#delete_trigger_workflow) | **DELETE** /api/v2/flags/{projectKey}/{featureFlagKey}/triggers/{environmentKey}/{id} | Delete flag trigger
*LaunchDarklyApi::FlagTriggersApi* | [**get_trigger_workflow_by_id**](docs/FlagTriggersApi.md#get_trigger_workflow_by_id) | **GET** /api/v2/flags/{projectKey}/{featureFlagKey}/triggers/{environmentKey}/{id} | Get flag trigger by ID
*LaunchDarklyApi::FlagTriggersApi* | [**get_trigger_workflows**](docs/FlagTriggersApi.md#get_trigger_workflows) | **GET** /api/v2/flags/{projectKey}/{featureFlagKey}/triggers/{environmentKey} | List flag triggers
*LaunchDarklyApi::FlagTriggersApi* | [**patch_trigger_workflow**](docs/FlagTriggersApi.md#patch_trigger_workflow) | **PATCH** /api/v2/flags/{projectKey}/{featureFlagKey}/triggers/{environmentKey}/{id} | Update flag trigger
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
*LaunchDarklyApi::OtherApi* | [**get_ips**](docs/OtherApi.md#get_ips) | **GET** /api/v2/public-ip-list | Gets the public IP list
*LaunchDarklyApi::OtherApi* | [**get_openapi_spec**](docs/OtherApi.md#get_openapi_spec) | **GET** /api/v2/openapi.json | Gets the OpenAPI spec in json
*LaunchDarklyApi::OtherApi* | [**get_root**](docs/OtherApi.md#get_root) | **GET** /api/v2 | Root resource
*LaunchDarklyApi::OtherApi* | [**get_versions**](docs/OtherApi.md#get_versions) | **GET** /api/v2/versions | Get version information
*LaunchDarklyApi::ProjectsApi* | [**delete_project**](docs/ProjectsApi.md#delete_project) | **DELETE** /api/v2/projects/{projectKey} | Delete project
*LaunchDarklyApi::ProjectsApi* | [**get_project**](docs/ProjectsApi.md#get_project) | **GET** /api/v2/projects/{projectKey} | Get project
*LaunchDarklyApi::ProjectsApi* | [**get_projects**](docs/ProjectsApi.md#get_projects) | **GET** /api/v2/projects | List projects
*LaunchDarklyApi::ProjectsApi* | [**patch_project**](docs/ProjectsApi.md#patch_project) | **PATCH** /api/v2/projects/{projectKey} | Update project
*LaunchDarklyApi::ProjectsApi* | [**post_project**](docs/ProjectsApi.md#post_project) | **POST** /api/v2/projects | Create project
*LaunchDarklyApi::RelayProxyConfigurationsApi* | [**delete_relay_auto_config**](docs/RelayProxyConfigurationsApi.md#delete_relay_auto_config) | **DELETE** /api/v2/account/relay-auto-configs/{id} | Delete Relay Proxy config by ID
*LaunchDarklyApi::RelayProxyConfigurationsApi* | [**get_relay_proxy_config**](docs/RelayProxyConfigurationsApi.md#get_relay_proxy_config) | **GET** /api/v2/account/relay-auto-configs/{id} | Get Relay Proxy config
*LaunchDarklyApi::RelayProxyConfigurationsApi* | [**get_relay_proxy_configs**](docs/RelayProxyConfigurationsApi.md#get_relay_proxy_configs) | **GET** /api/v2/account/relay-auto-configs | List Relay Proxy configs
*LaunchDarklyApi::RelayProxyConfigurationsApi* | [**patch_relay_auto_config**](docs/RelayProxyConfigurationsApi.md#patch_relay_auto_config) | **PATCH** /api/v2/account/relay-auto-configs/{id} | Update a Relay Proxy config
*LaunchDarklyApi::RelayProxyConfigurationsApi* | [**post_relay_auto_config**](docs/RelayProxyConfigurationsApi.md#post_relay_auto_config) | **POST** /api/v2/account/relay-auto-configs | Create a new Relay Proxy config
*LaunchDarklyApi::RelayProxyConfigurationsApi* | [**reset_relay_auto_config**](docs/RelayProxyConfigurationsApi.md#reset_relay_auto_config) | **POST** /api/v2/account/relay-auto-configs/{id}/reset | Reset Relay Proxy configuration key
*LaunchDarklyApi::ScheduledChangesApi* | [**delete_flag_config_scheduled_changes**](docs/ScheduledChangesApi.md#delete_flag_config_scheduled_changes) | **DELETE** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes/{id} | Delete scheduled changes workflow
*LaunchDarklyApi::ScheduledChangesApi* | [**get_feature_flag_scheduled_change**](docs/ScheduledChangesApi.md#get_feature_flag_scheduled_change) | **GET** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes/{id} | Get a scheduled change
*LaunchDarklyApi::ScheduledChangesApi* | [**get_flag_config_scheduled_changes**](docs/ScheduledChangesApi.md#get_flag_config_scheduled_changes) | **GET** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes | List scheduled changes
*LaunchDarklyApi::ScheduledChangesApi* | [**patch_flag_config_scheduled_change**](docs/ScheduledChangesApi.md#patch_flag_config_scheduled_change) | **PATCH** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes/{id} | Update scheduled changes workflow
*LaunchDarklyApi::ScheduledChangesApi* | [**post_flag_config_scheduled_changes**](docs/ScheduledChangesApi.md#post_flag_config_scheduled_changes) | **POST** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes | Create scheduled changes workflow
*LaunchDarklyApi::SegmentsApi* | [**delete_segment**](docs/SegmentsApi.md#delete_segment) | **DELETE** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey} | Delete segment
*LaunchDarklyApi::SegmentsApi* | [**get_expiring_user_targets_for_segment**](docs/SegmentsApi.md#get_expiring_user_targets_for_segment) | **GET** /api/v2/segments/{projectKey}/{segmentKey}/expiring-user-targets/{environmentKey} | Get expiring user targets for segment
*LaunchDarklyApi::SegmentsApi* | [**get_segment**](docs/SegmentsApi.md#get_segment) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey} | Get segment
*LaunchDarklyApi::SegmentsApi* | [**get_segment_membership_for_user**](docs/SegmentsApi.md#get_segment_membership_for_user) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/users/{userKey} | Get Big Segment membership for user
*LaunchDarklyApi::SegmentsApi* | [**get_segments**](docs/SegmentsApi.md#get_segments) | **GET** /api/v2/segments/{projectKey}/{environmentKey} | List segments
*LaunchDarklyApi::SegmentsApi* | [**patch_expiring_user_targets_for_segment**](docs/SegmentsApi.md#patch_expiring_user_targets_for_segment) | **PATCH** /api/v2/segments/{projectKey}/{segmentKey}/expiring-user-targets/{environmentKey} | Update expiring user targets for segment
*LaunchDarklyApi::SegmentsApi* | [**patch_segment**](docs/SegmentsApi.md#patch_segment) | **PATCH** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey} | Patch segment
*LaunchDarklyApi::SegmentsApi* | [**post_segment**](docs/SegmentsApi.md#post_segment) | **POST** /api/v2/segments/{projectKey}/{environmentKey} | Create segment
*LaunchDarklyApi::SegmentsApi* | [**update_big_segment_targets**](docs/SegmentsApi.md#update_big_segment_targets) | **POST** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/users | Update targets on a Big Segment
*LaunchDarklyApi::SegmentsBetaApi* | [**create_big_segment_export**](docs/SegmentsBetaApi.md#create_big_segment_export) | **POST** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/exports | Create Big Segment export
*LaunchDarklyApi::SegmentsBetaApi* | [**create_big_segment_import**](docs/SegmentsBetaApi.md#create_big_segment_import) | **POST** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/imports | Create Big Segment import
*LaunchDarklyApi::SegmentsBetaApi* | [**get_big_segment_export**](docs/SegmentsBetaApi.md#get_big_segment_export) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/exports/{exportID} | Get Big Segment export
*LaunchDarklyApi::SegmentsBetaApi* | [**get_big_segment_import**](docs/SegmentsBetaApi.md#get_big_segment_import) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/imports/{importID} | Get Big Segment import
*LaunchDarklyApi::TagsApi* | [**get_tags**](docs/TagsApi.md#get_tags) | **GET** /api/v2/tags | List tags
*LaunchDarklyApi::TeamsBetaApi* | [**delete_team**](docs/TeamsBetaApi.md#delete_team) | **DELETE** /api/v2/teams/{teamKey} | Delete team
*LaunchDarklyApi::TeamsBetaApi* | [**get_team**](docs/TeamsBetaApi.md#get_team) | **GET** /api/v2/teams/{teamKey} | Get team
*LaunchDarklyApi::TeamsBetaApi* | [**get_team_maintainers**](docs/TeamsBetaApi.md#get_team_maintainers) | **GET** /api/v2/teams/{teamKey}/maintainers | Get team maintainers
*LaunchDarklyApi::TeamsBetaApi* | [**get_team_roles**](docs/TeamsBetaApi.md#get_team_roles) | **GET** /api/v2/teams/{teamKey}/roles | Get team custom roles
*LaunchDarklyApi::TeamsBetaApi* | [**get_teams**](docs/TeamsBetaApi.md#get_teams) | **GET** /api/v2/teams | List teams
*LaunchDarklyApi::TeamsBetaApi* | [**patch_team**](docs/TeamsBetaApi.md#patch_team) | **PATCH** /api/v2/teams/{teamKey} | Update team
*LaunchDarklyApi::TeamsBetaApi* | [**post_team**](docs/TeamsBetaApi.md#post_team) | **POST** /api/v2/teams | Create team
*LaunchDarklyApi::TeamsBetaApi* | [**post_team_members**](docs/TeamsBetaApi.md#post_team_members) | **POST** /api/v2/teams/{teamKey}/members | Add members to team
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
*LaunchDarklyApi::WorkflowsBetaApi* | [**delete_workflow**](docs/WorkflowsBetaApi.md#delete_workflow) | **DELETE** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/workflows/{workflowId} | Delete workflow
*LaunchDarklyApi::WorkflowsBetaApi* | [**get_custom_workflow**](docs/WorkflowsBetaApi.md#get_custom_workflow) | **GET** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/workflows/{workflowId} | Get custom workflow
*LaunchDarklyApi::WorkflowsBetaApi* | [**get_workflows**](docs/WorkflowsBetaApi.md#get_workflows) | **GET** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/workflows | Get workflows
*LaunchDarklyApi::WorkflowsBetaApi* | [**post_workflow**](docs/WorkflowsBetaApi.md#post_workflow) | **POST** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/workflows | Create workflow


## Documentation for Models

 - [LaunchDarklyApi::Access](docs/Access.md)
 - [LaunchDarklyApi::AccessAllowedReason](docs/AccessAllowedReason.md)
 - [LaunchDarklyApi::AccessAllowedRep](docs/AccessAllowedRep.md)
 - [LaunchDarklyApi::AccessDenied](docs/AccessDenied.md)
 - [LaunchDarklyApi::AccessDeniedReason](docs/AccessDeniedReason.md)
 - [LaunchDarklyApi::AccessTokenPost](docs/AccessTokenPost.md)
 - [LaunchDarklyApi::ActionInputRep](docs/ActionInputRep.md)
 - [LaunchDarklyApi::ActionOutputRep](docs/ActionOutputRep.md)
 - [LaunchDarklyApi::ApprovalConditionInputRep](docs/ApprovalConditionInputRep.md)
 - [LaunchDarklyApi::ApprovalConditionOutputRep](docs/ApprovalConditionOutputRep.md)
 - [LaunchDarklyApi::ApprovalSettings](docs/ApprovalSettings.md)
 - [LaunchDarklyApi::AuditLogEntryListingRep](docs/AuditLogEntryListingRep.md)
 - [LaunchDarklyApi::AuditLogEntryListingRepCollection](docs/AuditLogEntryListingRepCollection.md)
 - [LaunchDarklyApi::AuditLogEntryRep](docs/AuditLogEntryRep.md)
 - [LaunchDarklyApi::AuthorizedAppDataRep](docs/AuthorizedAppDataRep.md)
 - [LaunchDarklyApi::BigSegmentTarget](docs/BigSegmentTarget.md)
 - [LaunchDarklyApi::BranchCollectionRep](docs/BranchCollectionRep.md)
 - [LaunchDarklyApi::BranchRep](docs/BranchRep.md)
 - [LaunchDarklyApi::Clause](docs/Clause.md)
 - [LaunchDarklyApi::ClientSideAvailability](docs/ClientSideAvailability.md)
 - [LaunchDarklyApi::ClientSideAvailabilityPost](docs/ClientSideAvailabilityPost.md)
 - [LaunchDarklyApi::ConditionBaseOutputRep](docs/ConditionBaseOutputRep.md)
 - [LaunchDarklyApi::ConditionInputRep](docs/ConditionInputRep.md)
 - [LaunchDarklyApi::ConditionOutputRep](docs/ConditionOutputRep.md)
 - [LaunchDarklyApi::ConfidenceIntervalRep](docs/ConfidenceIntervalRep.md)
 - [LaunchDarklyApi::Conflict](docs/Conflict.md)
 - [LaunchDarklyApi::ConflictOutputRep](docs/ConflictOutputRep.md)
 - [LaunchDarklyApi::CopiedFromEnv](docs/CopiedFromEnv.md)
 - [LaunchDarklyApi::CreateCopyFlagConfigApprovalRequestRequest](docs/CreateCopyFlagConfigApprovalRequestRequest.md)
 - [LaunchDarklyApi::CreateFlagConfigApprovalRequestRequest](docs/CreateFlagConfigApprovalRequestRequest.md)
 - [LaunchDarklyApi::CustomProperty](docs/CustomProperty.md)
 - [LaunchDarklyApi::CustomRole](docs/CustomRole.md)
 - [LaunchDarklyApi::CustomRolePost](docs/CustomRolePost.md)
 - [LaunchDarklyApi::CustomRolePostData](docs/CustomRolePostData.md)
 - [LaunchDarklyApi::CustomRoles](docs/CustomRoles.md)
 - [LaunchDarklyApi::CustomWorkflowInputRep](docs/CustomWorkflowInputRep.md)
 - [LaunchDarklyApi::CustomWorkflowMeta](docs/CustomWorkflowMeta.md)
 - [LaunchDarklyApi::CustomWorkflowOutputRep](docs/CustomWorkflowOutputRep.md)
 - [LaunchDarklyApi::CustomWorkflowStageMeta](docs/CustomWorkflowStageMeta.md)
 - [LaunchDarklyApi::CustomWorkflowsListingOutputRep](docs/CustomWorkflowsListingOutputRep.md)
 - [LaunchDarklyApi::Decimal](docs/Decimal.md)
 - [LaunchDarklyApi::DefaultClientSideAvailabilityPost](docs/DefaultClientSideAvailabilityPost.md)
 - [LaunchDarklyApi::Defaults](docs/Defaults.md)
 - [LaunchDarklyApi::DependentFlag](docs/DependentFlag.md)
 - [LaunchDarklyApi::DependentFlagEnvironment](docs/DependentFlagEnvironment.md)
 - [LaunchDarklyApi::DependentFlagsByEnvironment](docs/DependentFlagsByEnvironment.md)
 - [LaunchDarklyApi::Destination](docs/Destination.md)
 - [LaunchDarklyApi::DestinationPost](docs/DestinationPost.md)
 - [LaunchDarklyApi::Destinations](docs/Destinations.md)
 - [LaunchDarklyApi::Environment](docs/Environment.md)
 - [LaunchDarklyApi::EnvironmentPost](docs/EnvironmentPost.md)
 - [LaunchDarklyApi::EvaluationReason](docs/EvaluationReason.md)
 - [LaunchDarklyApi::ExecutionOutputRep](docs/ExecutionOutputRep.md)
 - [LaunchDarklyApi::ExperimentAllocationRep](docs/ExperimentAllocationRep.md)
 - [LaunchDarklyApi::ExperimentCollectionRep](docs/ExperimentCollectionRep.md)
 - [LaunchDarklyApi::ExperimentEnabledPeriodRep](docs/ExperimentEnabledPeriodRep.md)
 - [LaunchDarklyApi::ExperimentEnvironmentSettingRep](docs/ExperimentEnvironmentSettingRep.md)
 - [LaunchDarklyApi::ExperimentInfoRep](docs/ExperimentInfoRep.md)
 - [LaunchDarklyApi::ExperimentMetadataRep](docs/ExperimentMetadataRep.md)
 - [LaunchDarklyApi::ExperimentPatchInput](docs/ExperimentPatchInput.md)
 - [LaunchDarklyApi::ExperimentPost](docs/ExperimentPost.md)
 - [LaunchDarklyApi::ExperimentRep](docs/ExperimentRep.md)
 - [LaunchDarklyApi::ExperimentResults](docs/ExperimentResults.md)
 - [LaunchDarklyApi::ExperimentStatsRep](docs/ExperimentStatsRep.md)
 - [LaunchDarklyApi::ExperimentTimeSeriesSlice](docs/ExperimentTimeSeriesSlice.md)
 - [LaunchDarklyApi::ExperimentTimeSeriesVariationSlice](docs/ExperimentTimeSeriesVariationSlice.md)
 - [LaunchDarklyApi::ExperimentTotalsRep](docs/ExperimentTotalsRep.md)
 - [LaunchDarklyApi::ExpiringUserTargetError](docs/ExpiringUserTargetError.md)
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
 - [LaunchDarklyApi::FlagCopyConfigEnvironment](docs/FlagCopyConfigEnvironment.md)
 - [LaunchDarklyApi::FlagCopyConfigPost](docs/FlagCopyConfigPost.md)
 - [LaunchDarklyApi::FlagGlobalAttributesRep](docs/FlagGlobalAttributesRep.md)
 - [LaunchDarklyApi::FlagInput](docs/FlagInput.md)
 - [LaunchDarklyApi::FlagLinkCollectionRep](docs/FlagLinkCollectionRep.md)
 - [LaunchDarklyApi::FlagLinkMember](docs/FlagLinkMember.md)
 - [LaunchDarklyApi::FlagLinkPost](docs/FlagLinkPost.md)
 - [LaunchDarklyApi::FlagLinkRep](docs/FlagLinkRep.md)
 - [LaunchDarklyApi::FlagListingRep](docs/FlagListingRep.md)
 - [LaunchDarklyApi::FlagRep](docs/FlagRep.md)
 - [LaunchDarklyApi::FlagScheduledChangesInput](docs/FlagScheduledChangesInput.md)
 - [LaunchDarklyApi::FlagStatusRep](docs/FlagStatusRep.md)
 - [LaunchDarklyApi::FlagSummary](docs/FlagSummary.md)
 - [LaunchDarklyApi::FlagTriggerInput](docs/FlagTriggerInput.md)
 - [LaunchDarklyApi::ForbiddenErrorRep](docs/ForbiddenErrorRep.md)
 - [LaunchDarklyApi::HunkRep](docs/HunkRep.md)
 - [LaunchDarklyApi::Import](docs/Import.md)
 - [LaunchDarklyApi::InitiatorRep](docs/InitiatorRep.md)
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
 - [LaunchDarklyApi::IterationExpandableProperties](docs/IterationExpandableProperties.md)
 - [LaunchDarklyApi::IterationInput](docs/IterationInput.md)
 - [LaunchDarklyApi::IterationRep](docs/IterationRep.md)
 - [LaunchDarklyApi::LastSeenMetadata](docs/LastSeenMetadata.md)
 - [LaunchDarklyApi::Link](docs/Link.md)
 - [LaunchDarklyApi::Member](docs/Member.md)
 - [LaunchDarklyApi::MemberDataRep](docs/MemberDataRep.md)
 - [LaunchDarklyApi::MemberImportItem](docs/MemberImportItem.md)
 - [LaunchDarklyApi::MemberPermissionGrantSummaryRep](docs/MemberPermissionGrantSummaryRep.md)
 - [LaunchDarklyApi::MemberSummary](docs/MemberSummary.md)
 - [LaunchDarklyApi::MemberTeamSummaryRep](docs/MemberTeamSummaryRep.md)
 - [LaunchDarklyApi::MemberTeamsPostInput](docs/MemberTeamsPostInput.md)
 - [LaunchDarklyApi::Members](docs/Members.md)
 - [LaunchDarklyApi::MethodNotAllowedErrorRep](docs/MethodNotAllowedErrorRep.md)
 - [LaunchDarklyApi::MetricCollectionRep](docs/MetricCollectionRep.md)
 - [LaunchDarklyApi::MetricInput](docs/MetricInput.md)
 - [LaunchDarklyApi::MetricListingRep](docs/MetricListingRep.md)
 - [LaunchDarklyApi::MetricPost](docs/MetricPost.md)
 - [LaunchDarklyApi::MetricRep](docs/MetricRep.md)
 - [LaunchDarklyApi::MetricSeen](docs/MetricSeen.md)
 - [LaunchDarklyApi::Modification](docs/Modification.md)
 - [LaunchDarklyApi::MultiEnvironmentDependentFlag](docs/MultiEnvironmentDependentFlag.md)
 - [LaunchDarklyApi::MultiEnvironmentDependentFlags](docs/MultiEnvironmentDependentFlags.md)
 - [LaunchDarklyApi::NewMemberForm](docs/NewMemberForm.md)
 - [LaunchDarklyApi::NotFoundErrorRep](docs/NotFoundErrorRep.md)
 - [LaunchDarklyApi::NullDecimal](docs/NullDecimal.md)
 - [LaunchDarklyApi::ParameterRep](docs/ParameterRep.md)
 - [LaunchDarklyApi::ParentResourceRep](docs/ParentResourceRep.md)
 - [LaunchDarklyApi::PatchFailedErrorRep](docs/PatchFailedErrorRep.md)
 - [LaunchDarklyApi::PatchOperation](docs/PatchOperation.md)
 - [LaunchDarklyApi::PatchSegmentInstruction](docs/PatchSegmentInstruction.md)
 - [LaunchDarklyApi::PatchSegmentRequest](docs/PatchSegmentRequest.md)
 - [LaunchDarklyApi::PatchWithComment](docs/PatchWithComment.md)
 - [LaunchDarklyApi::PermissionGrantInput](docs/PermissionGrantInput.md)
 - [LaunchDarklyApi::PostApprovalRequestApplyRequest](docs/PostApprovalRequestApplyRequest.md)
 - [LaunchDarklyApi::PostApprovalRequestReviewRequest](docs/PostApprovalRequestReviewRequest.md)
 - [LaunchDarklyApi::PostFlagScheduledChangesInput](docs/PostFlagScheduledChangesInput.md)
 - [LaunchDarklyApi::Prerequisite](docs/Prerequisite.md)
 - [LaunchDarklyApi::Project](docs/Project.md)
 - [LaunchDarklyApi::ProjectListingRep](docs/ProjectListingRep.md)
 - [LaunchDarklyApi::ProjectPost](docs/ProjectPost.md)
 - [LaunchDarklyApi::ProjectSummary](docs/ProjectSummary.md)
 - [LaunchDarklyApi::Projects](docs/Projects.md)
 - [LaunchDarklyApi::PubNubDetailRep](docs/PubNubDetailRep.md)
 - [LaunchDarklyApi::PutBranch](docs/PutBranch.md)
 - [LaunchDarklyApi::RateLimitedErrorRep](docs/RateLimitedErrorRep.md)
 - [LaunchDarklyApi::RecentTriggerBody](docs/RecentTriggerBody.md)
 - [LaunchDarklyApi::ReferenceRep](docs/ReferenceRep.md)
 - [LaunchDarklyApi::RelayAutoConfigCollectionRep](docs/RelayAutoConfigCollectionRep.md)
 - [LaunchDarklyApi::RelayAutoConfigPost](docs/RelayAutoConfigPost.md)
 - [LaunchDarklyApi::RelayAutoConfigRep](docs/RelayAutoConfigRep.md)
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
 - [LaunchDarklyApi::ReviewOutputRep](docs/ReviewOutputRep.md)
 - [LaunchDarklyApi::ReviewResponse](docs/ReviewResponse.md)
 - [LaunchDarklyApi::Rollout](docs/Rollout.md)
 - [LaunchDarklyApi::Rule](docs/Rule.md)
 - [LaunchDarklyApi::ScheduleConditionInputRep](docs/ScheduleConditionInputRep.md)
 - [LaunchDarklyApi::ScheduleConditionOutputRep](docs/ScheduleConditionOutputRep.md)
 - [LaunchDarklyApi::SdkListRep](docs/SdkListRep.md)
 - [LaunchDarklyApi::SdkVersionListRep](docs/SdkVersionListRep.md)
 - [LaunchDarklyApi::SdkVersionRep](docs/SdkVersionRep.md)
 - [LaunchDarklyApi::SegmentBody](docs/SegmentBody.md)
 - [LaunchDarklyApi::SegmentMetadata](docs/SegmentMetadata.md)
 - [LaunchDarklyApi::SegmentUserList](docs/SegmentUserList.md)
 - [LaunchDarklyApi::SegmentUserState](docs/SegmentUserState.md)
 - [LaunchDarklyApi::SeriesListRep](docs/SeriesListRep.md)
 - [LaunchDarklyApi::SourceEnv](docs/SourceEnv.md)
 - [LaunchDarklyApi::SourceFlag](docs/SourceFlag.md)
 - [LaunchDarklyApi::StageInputRep](docs/StageInputRep.md)
 - [LaunchDarklyApi::StageOutputRep](docs/StageOutputRep.md)
 - [LaunchDarklyApi::Statement](docs/Statement.md)
 - [LaunchDarklyApi::StatementPost](docs/StatementPost.md)
 - [LaunchDarklyApi::StatementPostData](docs/StatementPostData.md)
 - [LaunchDarklyApi::StatementRep](docs/StatementRep.md)
 - [LaunchDarklyApi::StatisticCollectionRep](docs/StatisticCollectionRep.md)
 - [LaunchDarklyApi::StatisticRep](docs/StatisticRep.md)
 - [LaunchDarklyApi::StatisticsRoot](docs/StatisticsRoot.md)
 - [LaunchDarklyApi::StatusConflictErrorRep](docs/StatusConflictErrorRep.md)
 - [LaunchDarklyApi::SubjectDataRep](docs/SubjectDataRep.md)
 - [LaunchDarklyApi::SubscriptionPost](docs/SubscriptionPost.md)
 - [LaunchDarklyApi::TagCollection](docs/TagCollection.md)
 - [LaunchDarklyApi::Target](docs/Target.md)
 - [LaunchDarklyApi::TargetResourceRep](docs/TargetResourceRep.md)
 - [LaunchDarklyApi::Team](docs/Team.md)
 - [LaunchDarklyApi::TeamCustomRole](docs/TeamCustomRole.md)
 - [LaunchDarklyApi::TeamCustomRoles](docs/TeamCustomRoles.md)
 - [LaunchDarklyApi::TeamImportsRep](docs/TeamImportsRep.md)
 - [LaunchDarklyApi::TeamMaintainers](docs/TeamMaintainers.md)
 - [LaunchDarklyApi::TeamPatchInput](docs/TeamPatchInput.md)
 - [LaunchDarklyApi::TeamPostInput](docs/TeamPostInput.md)
 - [LaunchDarklyApi::TeamProjects](docs/TeamProjects.md)
 - [LaunchDarklyApi::Teams](docs/Teams.md)
 - [LaunchDarklyApi::TimestampRep](docs/TimestampRep.md)
 - [LaunchDarklyApi::TitleRep](docs/TitleRep.md)
 - [LaunchDarklyApi::Token](docs/Token.md)
 - [LaunchDarklyApi::TokenDataRep](docs/TokenDataRep.md)
 - [LaunchDarklyApi::Tokens](docs/Tokens.md)
 - [LaunchDarklyApi::TreatmentInput](docs/TreatmentInput.md)
 - [LaunchDarklyApi::TreatmentParameterInput](docs/TreatmentParameterInput.md)
 - [LaunchDarklyApi::TreatmentRep](docs/TreatmentRep.md)
 - [LaunchDarklyApi::TriggerPost](docs/TriggerPost.md)
 - [LaunchDarklyApi::TriggerWorkflowCollectionRep](docs/TriggerWorkflowCollectionRep.md)
 - [LaunchDarklyApi::TriggerWorkflowRep](docs/TriggerWorkflowRep.md)
 - [LaunchDarklyApi::UnauthorizedErrorRep](docs/UnauthorizedErrorRep.md)
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
 - [LaunchDarklyApi::ValuePut](docs/ValuePut.md)
 - [LaunchDarklyApi::Variation](docs/Variation.md)
 - [LaunchDarklyApi::VariationOrRolloutRep](docs/VariationOrRolloutRep.md)
 - [LaunchDarklyApi::VariationSummary](docs/VariationSummary.md)
 - [LaunchDarklyApi::VersionsRep](docs/VersionsRep.md)
 - [LaunchDarklyApi::Webhook](docs/Webhook.md)
 - [LaunchDarklyApi::WebhookPost](docs/WebhookPost.md)
 - [LaunchDarklyApi::Webhooks](docs/Webhooks.md)
 - [LaunchDarklyApi::WeightedVariation](docs/WeightedVariation.md)


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
