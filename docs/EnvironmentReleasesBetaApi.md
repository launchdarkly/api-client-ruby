# LaunchDarklyApi::EnvironmentReleasesBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_environment_release**](EnvironmentReleasesBetaApi.md#get_environment_release) | **GET** /api/v2/projects/{projectKey}/flags/{flagKey}/environments/{environmentKey}/releases/{releaseId} | Get an environment release |
| [**list_environment_releases**](EnvironmentReleasesBetaApi.md#list_environment_releases) | **GET** /api/v2/projects/{projectKey}/flags/{flagKey}/environments/{environmentKey}/releases | List environment releases |
| [**start_environment_release**](EnvironmentReleasesBetaApi.md#start_environment_release) | **POST** /api/v2/projects/{projectKey}/flags/{flagKey}/environments/{environmentKey}/releases | Start an environment release |
| [**stop_environment_release**](EnvironmentReleasesBetaApi.md#stop_environment_release) | **PUT** /api/v2/projects/{projectKey}/flags/{flagKey}/environments/{environmentKey}/releases/{releaseId}/stop | Stop an environment release |


## get_environment_release

> <EnvironmentRelease> get_environment_release(ld_api_version, project_key, flag_key, environment_key, release_id, opts)

Get an environment release

Returns an environment release and all its phases in phase-index order. The release ID must belong to the flag and environment in the path. Returns `404` for a release that ended more than 90 days ago. Pass `expand=metrics` to attach each metric's definition to the top-level `metrics` array. Analysis settings come from the version pinned when the release started (`metricVersionId`); name, description, tags, maintainer, and archive state reflect the current metric and may change afterwards. 

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::EnvironmentReleasesBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
flag_key = 'flag_key_example' # String | 
environment_key = 'environment_key_example' # String | 
release_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  expand: ['metrics'] # Array<String> | Optional fields to expand.
}

begin
  # Get an environment release
  result = api_instance.get_environment_release(ld_api_version, project_key, flag_key, environment_key, release_id, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling EnvironmentReleasesBetaApi->get_environment_release: #{e}"
end
```

#### Using the get_environment_release_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnvironmentRelease>, Integer, Hash)> get_environment_release_with_http_info(ld_api_version, project_key, flag_key, environment_key, release_id, opts)

```ruby
begin
  # Get an environment release
  data, status_code, headers = api_instance.get_environment_release_with_http_info(ld_api_version, project_key, flag_key, environment_key, release_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnvironmentRelease>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling EnvironmentReleasesBetaApi->get_environment_release_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **flag_key** | **String** |  |  |
| **environment_key** | **String** |  |  |
| **release_id** | **String** |  |  |
| **expand** | [**Array&lt;String&gt;**](String.md) | Optional fields to expand. | [optional] |

### Return type

[**EnvironmentRelease**](EnvironmentRelease.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_environment_releases

> <EnvironmentReleaseCollection> list_environment_releases(ld_api_version, project_key, flag_key, environment_key, opts)

List environment releases

Returns the environment releases for the flag in the environment, newest first. Each release includes its phases in phase-index order. Metric definitions are not included. To get them, call `getEnvironmentRelease` with `expand=metrics`. Returns an empty `items` array when the flag has no releases in the environment, or when no release matches the `filter`. Releases that ended more than 90 days ago are not returned.  Results are paginated. By default, the first 25 releases are returned. Use `limit` and `offset` to page through the rest, and `totalCount` to learn how many releases match in total. The `_links` object includes `first`, `prev`, `next`, and `last` links where they apply. 

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::EnvironmentReleasesBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
flag_key = 'flag_key_example' # String | 
environment_key = 'environment_key_example' # String | 
opts = {
  filter: 'kind equals guarded', # String | A queryfilter expression that narrows the list. Supported fields and operators: `kind` (`equals`) with values `progressive` or `guarded`. 
  limit: 56, # Integer | The number of releases to return. Defaults to 25. Maximum is 100.
  offset: 56, # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten releases and then returns the next releases in the list, up to the query `limit`.
  _snapshot: '_snapshot_example' # String | Pins the read to a moment in time (nanoseconds since the Unix epoch) so pages walked in sequence reflect one consistent snapshot. Follow the pagination links rather than constructing this value. Out-of-range values are ignored.
}

begin
  # List environment releases
  result = api_instance.list_environment_releases(ld_api_version, project_key, flag_key, environment_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling EnvironmentReleasesBetaApi->list_environment_releases: #{e}"
end
```

#### Using the list_environment_releases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnvironmentReleaseCollection>, Integer, Hash)> list_environment_releases_with_http_info(ld_api_version, project_key, flag_key, environment_key, opts)

```ruby
begin
  # List environment releases
  data, status_code, headers = api_instance.list_environment_releases_with_http_info(ld_api_version, project_key, flag_key, environment_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnvironmentReleaseCollection>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling EnvironmentReleasesBetaApi->list_environment_releases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **flag_key** | **String** |  |  |
| **environment_key** | **String** |  |  |
| **filter** | **String** | A queryfilter expression that narrows the list. Supported fields and operators: &#x60;kind&#x60; (&#x60;equals&#x60;) with values &#x60;progressive&#x60; or &#x60;guarded&#x60;.  | [optional] |
| **limit** | **Integer** | The number of releases to return. Defaults to 25. Maximum is 100. | [optional][default to 25] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten releases and then returns the next releases in the list, up to the query &#x60;limit&#x60;. | [optional][default to 0] |
| **_snapshot** | **String** | Pins the read to a moment in time (nanoseconds since the Unix epoch) so pages walked in sequence reflect one consistent snapshot. Follow the pagination links rather than constructing this value. Out-of-range values are ignored. | [optional] |

### Return type

[**EnvironmentReleaseCollection**](EnvironmentReleaseCollection.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## start_environment_release

> <EnvironmentRelease> start_environment_release(ld_api_version, project_key, flag_key, environment_key, start_environment_release_request)

Start an environment release

Creates and starts a release on a flag in an environment, either from inline configuration or from an environment release plan. A release has one or more phases. Each phase is an audience, targeted by one flag rule, and has its own steps: the schedule of allocations at which that rule serves the target variation. After all of a phase's steps complete, the phase serves the target variation to 100% of its contexts.  **Inline configuration.** Each entry in `phases` must specify exactly one targeting mode:  - **Existing rule**: set `ruleId`. The rule must be enabled. Only a   single-phase release can use an existing rule. - **New rule**: set `clauses`, with an optional `description`. New   rules are appended to the end of the flag's rule list. To insert   them before an existing rule instead, set the top-level   `beforeRuleId`, which applies to every phase.  Every phase's rule, including an existing rule passed by `ruleId`, must include `{\"contextKind\": \"<randomizationUnit>\", \"attribute\": \"kind\", \"op\": \"in\", \"values\": [\"<randomizationUnit>\"]}`, not negated and with no other values, so the release only reaches contexts of the `randomizationUnit` kind, or multi-contexts containing the `randomizationUnit` kind. An existing rule needs the clause even if its other clauses only match that context kind. A phase without it returns `400`.  For multiple phases, set `phases` with at least two entries. Each phase creates a rule. The first rule is enabled and starts immediately. Subsequent rules stay disabled until the release advances to them: automatically when `advancementMode` is `automatic`, or by an explicit advance when it is `manual`. `advancementMode` is required for a multi-phase release.  Releases on the flag's default rule are not supported. A phase that omits both targeting modes is rejected.  The flag must be on in the environment, or the request returns `409`. The release only reaches contexts that match a phase's rule. Other contexts keep getting the flag's default rule, which may already serve the target variation.  The release type is inferred from `metrics`: an omitted or empty array creates a progressive release; one or more metrics creates a guarded release. Metrics must be listed individually; metric groups are not accepted.  Every start runs release health checks, described in `ReleaseHealthCheckKind`. A flag that hasn't recently been evaluated for contexts of the `randomizationUnit` kind fails `flag_evaluations_with_context`, and one with no recent evaluations at all also fails `flag_evaluations_any`. Guarded releases also check that each metric receives events. A failing check returns `400` with code `health_checks_failed`. To start the release anyway, list the failing kinds in `bypassHealthChecks`.  **From a release plan.** Set `releasePlanKey` to start from a plan in this environment instead of configuring the release inline; a request that also sets fields the plan supplies is rejected. The plan's current version runs as stored, with metric groups expanded into their members. Health checks run against the plan's randomization unit and metrics. Returns `400` if the plan is missing or incomplete, and `422` until environment release plans are available for the account.  Requires the `updateRules` action on the flag in this environment, plus `updateFallthrough` when `cleanupBehavior` is `remove_rules_and_update_default_rule`. A release started from a plan requires both. The start is recorded in the flag's audit log as a targeting change that carries `comment`.  In an environment that requires approvals, this endpoint fails with `405`. Tokens granted the `bypassRequiredApproval` action can still call it to start the release directly.  This operation is not idempotent. Retrying a request that already started a release returns `409` with code `release_already_active`. The earlier request may have succeeded; call `listEnvironmentReleases` to confirm the running release is yours. 

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::EnvironmentReleasesBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
flag_key = 'flag_key_example' # String | 
environment_key = 'environment_key_example' # String | 
start_environment_release_request = LaunchDarklyApi::StartEnvironmentReleaseRequest.new({original_variation_id: 'original_variation_id_example', target_variation_id: 'target_variation_id_example'}) # StartEnvironmentReleaseRequest | 

begin
  # Start an environment release
  result = api_instance.start_environment_release(ld_api_version, project_key, flag_key, environment_key, start_environment_release_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling EnvironmentReleasesBetaApi->start_environment_release: #{e}"
end
```

#### Using the start_environment_release_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnvironmentRelease>, Integer, Hash)> start_environment_release_with_http_info(ld_api_version, project_key, flag_key, environment_key, start_environment_release_request)

```ruby
begin
  # Start an environment release
  data, status_code, headers = api_instance.start_environment_release_with_http_info(ld_api_version, project_key, flag_key, environment_key, start_environment_release_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnvironmentRelease>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling EnvironmentReleasesBetaApi->start_environment_release_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **flag_key** | **String** |  |  |
| **environment_key** | **String** |  |  |
| **start_environment_release_request** | [**StartEnvironmentReleaseRequest**](StartEnvironmentReleaseRequest.md) |  |  |

### Return type

[**EnvironmentRelease**](EnvironmentRelease.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## stop_environment_release

> <EnvironmentRelease> stop_environment_release(ld_api_version, project_key, flag_key, environment_key, release_id, stop_environment_release_request)

Stop an environment release

Stops a release and resolves its phases according to the `resolution` you specify. To learn how each resolution treats completed and pending phases, read the `resolution` schema.  Requires the `updateRules` action on the flag in this environment, or `updateFallthrough` for a historical release that ran on the default rule. The stop is recorded in the flag's audit log as a targeting change that names the resolution and carries `comment`.  In an environment that requires approvals, this endpoint fails with `405`. Tokens granted the `bypassRequiredApproval` action can still call it to stop the release directly.  Stopping a release that has already completed or been stopped returns `200` and makes no changes. Returns `404` for a release that ended more than 90 days ago. 

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::EnvironmentReleasesBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
flag_key = 'flag_key_example' # String | 
environment_key = 'environment_key_example' # String | 
release_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
stop_environment_release_request = LaunchDarklyApi::StopEnvironmentReleaseRequest.new({resolution: LaunchDarklyApi::EnvironmentReleaseResolution::EnvironmentReleaseResolutionRollForwardAllPhases}) # StopEnvironmentReleaseRequest | 

begin
  # Stop an environment release
  result = api_instance.stop_environment_release(ld_api_version, project_key, flag_key, environment_key, release_id, stop_environment_release_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling EnvironmentReleasesBetaApi->stop_environment_release: #{e}"
end
```

#### Using the stop_environment_release_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnvironmentRelease>, Integer, Hash)> stop_environment_release_with_http_info(ld_api_version, project_key, flag_key, environment_key, release_id, stop_environment_release_request)

```ruby
begin
  # Stop an environment release
  data, status_code, headers = api_instance.stop_environment_release_with_http_info(ld_api_version, project_key, flag_key, environment_key, release_id, stop_environment_release_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnvironmentRelease>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling EnvironmentReleasesBetaApi->stop_environment_release_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **flag_key** | **String** |  |  |
| **environment_key** | **String** |  |  |
| **release_id** | **String** |  |  |
| **stop_environment_release_request** | [**StopEnvironmentReleaseRequest**](StopEnvironmentReleaseRequest.md) |  |  |

### Return type

[**EnvironmentRelease**](EnvironmentRelease.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

