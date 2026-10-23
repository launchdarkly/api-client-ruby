# LaunchDarklyApi::AccountUsageBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_ai_runs_usage**](AccountUsageBetaApi.md#get_ai_runs_usage) | **GET** /api/v2/usage/ai-runs | Get AI runs usage |
| [**get_contexts_clientside_usage**](AccountUsageBetaApi.md#get_contexts_clientside_usage) | **GET** /api/v2/usage/clientside-contexts | Get contexts clientside usage |
| [**get_contexts_serverside_usage**](AccountUsageBetaApi.md#get_contexts_serverside_usage) | **GET** /api/v2/usage/serverside-contexts | Get contexts serverside usage |
| [**get_contexts_total_usage**](AccountUsageBetaApi.md#get_contexts_total_usage) | **GET** /api/v2/usage/total-contexts | Get contexts total usage |
| [**get_data_export_events_usage**](AccountUsageBetaApi.md#get_data_export_events_usage) | **GET** /api/v2/usage/data-export-events | Get data export events usage |
| [**get_data_export_project_ranking**](AccountUsageBetaApi.md#get_data_export_project_ranking) | **GET** /api/v2/usage/data-export-events/projects/ranking | Rank Streaming usage by project |
| [**get_evaluations_usage**](AccountUsageBetaApi.md#get_evaluations_usage) | **GET** /api/v2/usage/evaluations/{projectKey}/{environmentKey}/{featureFlagKey} | Get evaluations usage |
| [**get_events_usage**](AccountUsageBetaApi.md#get_events_usage) | **GET** /api/v2/usage/events/{type} | Get events usage |
| [**get_experimentation_events_usage**](AccountUsageBetaApi.md#get_experimentation_events_usage) | **GET** /api/v2/usage/experimentation-events | Get experimentation events usage |
| [**get_experimentation_keys_usage**](AccountUsageBetaApi.md#get_experimentation_keys_usage) | **GET** /api/v2/usage/experimentation-keys | Get experimentation keys usage |
| [**get_mau_clientside_usage**](AccountUsageBetaApi.md#get_mau_clientside_usage) | **GET** /api/v2/usage/clientside-mau | Get MAU clientside usage |
| [**get_mau_sdks_by_type**](AccountUsageBetaApi.md#get_mau_sdks_by_type) | **GET** /api/v2/usage/mau/sdks | Get MAU SDKs by type |
| [**get_mau_total_usage**](AccountUsageBetaApi.md#get_mau_total_usage) | **GET** /api/v2/usage/total-mau | Get MAU total usage |
| [**get_mau_usage**](AccountUsageBetaApi.md#get_mau_usage) | **GET** /api/v2/usage/mau | Get MAU usage |
| [**get_mau_usage_by_category**](AccountUsageBetaApi.md#get_mau_usage_by_category) | **GET** /api/v2/usage/mau/bycategory | Get MAU usage by category |
| [**get_observability_errors_usage**](AccountUsageBetaApi.md#get_observability_errors_usage) | **GET** /api/v2/usage/observability/errors | Get observability errors usage |
| [**get_observability_logs_usage**](AccountUsageBetaApi.md#get_observability_logs_usage) | **GET** /api/v2/usage/observability/logs | Get observability logs usage |
| [**get_observability_metrics_usage**](AccountUsageBetaApi.md#get_observability_metrics_usage) | **GET** /api/v2/usage/observability/metrics | Get observability metrics usage |
| [**get_observability_sessions_usage**](AccountUsageBetaApi.md#get_observability_sessions_usage) | **GET** /api/v2/usage/observability/sessions | Get observability sessions usage |
| [**get_observability_traces_usage**](AccountUsageBetaApi.md#get_observability_traces_usage) | **GET** /api/v2/usage/observability/traces | Get observability traces usage |
| [**get_sdk_all_versions**](AccountUsageBetaApi.md#get_sdk_all_versions) | **GET** /api/v2/usage/sdk-versions/all | Get usage details for all SDK versions |
| [**get_sdk_versions_details**](AccountUsageBetaApi.md#get_sdk_versions_details) | **GET** /api/v2/usage/sdk-versions/details | Get SDK versions usage details |
| [**get_service_connections_usage**](AccountUsageBetaApi.md#get_service_connections_usage) | **GET** /api/v2/usage/service-connections | Get service connections usage |
| [**get_stream_usage**](AccountUsageBetaApi.md#get_stream_usage) | **GET** /api/v2/usage/streams/{source} | Get stream usage |
| [**get_stream_usage_by_sdk_version**](AccountUsageBetaApi.md#get_stream_usage_by_sdk_version) | **GET** /api/v2/usage/streams/{source}/bysdkversion | Get stream usage by SDK version |
| [**get_stream_usage_sdkversion**](AccountUsageBetaApi.md#get_stream_usage_sdkversion) | **GET** /api/v2/usage/streams/{source}/sdkversions | Get stream usage SDK versions |
| [**get_vega_ai_usage**](AccountUsageBetaApi.md#get_vega_ai_usage) | **GET** /api/v2/usage/vega-ai | Get Vega AI usage |
| [**get_warehouse_export_usage**](AccountUsageBetaApi.md#get_warehouse_export_usage) | **GET** /api/v2/usage/warehouse-export | Get warehouse Data Export usage |


## get_ai_runs_usage

> <SeriesListRep> get_ai_runs_usage(opts)

Get AI runs usage

Get a time series array showing the number of AI runs recorded for your account. The supported granularity varies by aggregation type. The maximum time range is 365 days.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month.
  to: 'to_example', # String | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time.
  project_key: 'project_key_example', # String | A project key to filter results by. Can be specified multiple times, one query parameter per project key.
  environment_key: 'environment_key_example', # String | An environment key to filter results by. If specified, exactly one `projectKey` must be provided. Can be specified multiple times, one query parameter per environment key.
  sdk_name: 'sdk_name_example', # String | An SDK name to filter results by. Can be specified multiple times, one query parameter per SDK name.
  sdk_version: 'sdk_version_example', # String | An SDK version to filter results by. Can be specified multiple times, one query parameter per SDK version.
  sdk_type: 'sdk_type_example', # String | An SDK type to filter results by. Can be specified multiple times, one query parameter per SDK type.
  group_by: 'group_by_example', # String | If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.<br/>Valid values: `projectId`, `environmentId`, `sdkName`, `sdkVersion`, `sdkType`.
  aggregation_type: 'aggregation_type_example', # String | Specifies the aggregation method. Defaults to `month_to_date`.<br/>Valid values: `month_to_date`, `incremental`.
  granularity: 'granularity_example' # String | Specifies the data granularity. Defaults to `daily`. `monthly` granularity is only supported with the **month_to_date** aggregation type.<br/>Valid values: `daily`, `hourly`, `monthly`.
}

begin
  # Get AI runs usage
  result = api_instance.get_ai_runs_usage(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_ai_runs_usage: #{e}"
end
```

#### Using the get_ai_runs_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRep>, Integer, Hash)> get_ai_runs_usage_with_http_info(opts)

```ruby
begin
  # Get AI runs usage
  data, status_code, headers = api_instance.get_ai_runs_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_ai_runs_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key to filter results by. Can be specified multiple times, one query parameter per project key. | [optional] |
| **environment_key** | **String** | An environment key to filter results by. If specified, exactly one &#x60;projectKey&#x60; must be provided. Can be specified multiple times, one query parameter per environment key. | [optional] |
| **sdk_name** | **String** | An SDK name to filter results by. Can be specified multiple times, one query parameter per SDK name. | [optional] |
| **sdk_version** | **String** | An SDK version to filter results by. Can be specified multiple times, one query parameter per SDK version. | [optional] |
| **sdk_type** | **String** | An SDK type to filter results by. Can be specified multiple times, one query parameter per SDK type. | [optional] |
| **group_by** | **String** | If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.&lt;br/&gt;Valid values: &#x60;projectId&#x60;, &#x60;environmentId&#x60;, &#x60;sdkName&#x60;, &#x60;sdkVersion&#x60;, &#x60;sdkType&#x60;. | [optional] |
| **aggregation_type** | **String** | Specifies the aggregation method. Defaults to &#x60;month_to_date&#x60;.&lt;br/&gt;Valid values: &#x60;month_to_date&#x60;, &#x60;incremental&#x60;. | [optional] |
| **granularity** | **String** | Specifies the data granularity. Defaults to &#x60;daily&#x60;. &#x60;monthly&#x60; granularity is only supported with the **month_to_date** aggregation type.&lt;br/&gt;Valid values: &#x60;daily&#x60;, &#x60;hourly&#x60;, &#x60;monthly&#x60;. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contexts_clientside_usage

> <SeriesListRep> get_contexts_clientside_usage(opts)

Get contexts clientside usage

Get a detailed time series of the number of context key usages observed by LaunchDarkly in your account, including non-primary context kinds. Use this for breakdowns that go beyond the primary-only aggregation of MAU endpoints. The counts reflect data reported by client-side SDKs.<br/><br/>The supported granularity varies by aggregation type. The maximum time range is 365 days.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month.
  to: 'to_example', # String | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time.
  project_key: 'project_key_example', # String | A project key to filter results by. Can be specified multiple times, one query parameter per project key.
  environment_key: 'environment_key_example', # String | An environment key to filter results by. If specified, exactly one `projectKey` must be provided. Can be specified multiple times, one query parameter per environment key.
  context_kind: 'context_kind_example', # String | A context kind to filter results by. Can be specified multiple times, one query parameter per context kind.
  sdk_name: 'sdk_name_example', # String | An SDK name to filter results by. Can be specified multiple times, one query parameter per SDK name.
  anonymous: 'anonymous_example', # String | An anonymous value to filter results by. Can be specified multiple times, one query parameter per anonymous value.<br/>Valid values: `true`, `false`.
  group_by: 'group_by_example', # String | If specified, returns data for each distinct value of the given field. `contextKind` is always included as a grouping dimension. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.<br/>Valid values: `projectId`, `environmentId`, `sdkName`, `sdkAppId`, `anonymousV2`.
  aggregation_type: 'aggregation_type_example', # String | Specifies the aggregation method. Defaults to `month_to_date`.<br/>Valid values: `month_to_date`, `incremental`, `rolling_30d`.
  granularity: 'granularity_example' # String | Specifies the data granularity. Defaults to `daily`. Valid values depend on `aggregationType`: **month_to_date** supports `daily` and `monthly`; **incremental** and **rolling_30d** support `daily` only.
}

begin
  # Get contexts clientside usage
  result = api_instance.get_contexts_clientside_usage(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_contexts_clientside_usage: #{e}"
end
```

#### Using the get_contexts_clientside_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRep>, Integer, Hash)> get_contexts_clientside_usage_with_http_info(opts)

```ruby
begin
  # Get contexts clientside usage
  data, status_code, headers = api_instance.get_contexts_clientside_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_contexts_clientside_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key to filter results by. Can be specified multiple times, one query parameter per project key. | [optional] |
| **environment_key** | **String** | An environment key to filter results by. If specified, exactly one &#x60;projectKey&#x60; must be provided. Can be specified multiple times, one query parameter per environment key. | [optional] |
| **context_kind** | **String** | A context kind to filter results by. Can be specified multiple times, one query parameter per context kind. | [optional] |
| **sdk_name** | **String** | An SDK name to filter results by. Can be specified multiple times, one query parameter per SDK name. | [optional] |
| **anonymous** | **String** | An anonymous value to filter results by. Can be specified multiple times, one query parameter per anonymous value.&lt;br/&gt;Valid values: &#x60;true&#x60;, &#x60;false&#x60;. | [optional] |
| **group_by** | **String** | If specified, returns data for each distinct value of the given field. &#x60;contextKind&#x60; is always included as a grouping dimension. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.&lt;br/&gt;Valid values: &#x60;projectId&#x60;, &#x60;environmentId&#x60;, &#x60;sdkName&#x60;, &#x60;sdkAppId&#x60;, &#x60;anonymousV2&#x60;. | [optional] |
| **aggregation_type** | **String** | Specifies the aggregation method. Defaults to &#x60;month_to_date&#x60;.&lt;br/&gt;Valid values: &#x60;month_to_date&#x60;, &#x60;incremental&#x60;, &#x60;rolling_30d&#x60;. | [optional] |
| **granularity** | **String** | Specifies the data granularity. Defaults to &#x60;daily&#x60;. Valid values depend on &#x60;aggregationType&#x60;: **month_to_date** supports &#x60;daily&#x60; and &#x60;monthly&#x60;; **incremental** and **rolling_30d** support &#x60;daily&#x60; only. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contexts_serverside_usage

> <SeriesListRep> get_contexts_serverside_usage(opts)

Get contexts serverside usage

Get a detailed time series of the number of context key usages observed by LaunchDarkly in your account, including non-primary context kinds. Use this for breakdowns that go beyond the primary-only aggregation of MAU endpoints. The counts reflect data reported by server-side SDKs.<br/><br/>The supported granularity varies by aggregation type. The maximum time range is 365 days.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month.
  to: 'to_example', # String | The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time.
  project_key: 'project_key_example', # String | A project key to filter results by. Can be specified multiple times, one query parameter per project key.
  environment_key: 'environment_key_example', # String | An environment key to filter results by. If specified, exactly one `projectKey` must be provided. Can be specified multiple times, one query parameter per environment key.
  context_kind: 'context_kind_example', # String | A context kind to filter results by. Can be specified multiple times, one query parameter per context kind.
  sdk_name: 'sdk_name_example', # String | An SDK name to filter results by. Can be specified multiple times, one query parameter per SDK name.
  anonymous: 'anonymous_example', # String | An anonymous value to filter results by. Can be specified multiple times, one query parameter per anonymous value.<br/>Valid values: `true`, `false`.
  group_by: 'group_by_example', # String | If specified, returns data for each distinct value of the given field. `contextKind` is always included as a grouping dimension. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.<br/>Valid values: `projectId`, `environmentId`, `sdkName`, `sdkAppId`, `anonymousV2`.
  aggregation_type: 'aggregation_type_example', # String | Specifies the aggregation method. Defaults to `month_to_date`.<br/>Valid values: `month_to_date`, `incremental`, `rolling_30d`.
  granularity: 'granularity_example' # String | Specifies the data granularity. Defaults to `daily`. Valid values depend on `aggregationType`: **month_to_date** supports `daily` and `monthly`; **incremental** and **rolling_30d** support `daily` only.
}

begin
  # Get contexts serverside usage
  result = api_instance.get_contexts_serverside_usage(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_contexts_serverside_usage: #{e}"
end
```

#### Using the get_contexts_serverside_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRep>, Integer, Hash)> get_contexts_serverside_usage_with_http_info(opts)

```ruby
begin
  # Get contexts serverside usage
  data, status_code, headers = api_instance.get_contexts_serverside_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_contexts_serverside_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key to filter results by. Can be specified multiple times, one query parameter per project key. | [optional] |
| **environment_key** | **String** | An environment key to filter results by. If specified, exactly one &#x60;projectKey&#x60; must be provided. Can be specified multiple times, one query parameter per environment key. | [optional] |
| **context_kind** | **String** | A context kind to filter results by. Can be specified multiple times, one query parameter per context kind. | [optional] |
| **sdk_name** | **String** | An SDK name to filter results by. Can be specified multiple times, one query parameter per SDK name. | [optional] |
| **anonymous** | **String** | An anonymous value to filter results by. Can be specified multiple times, one query parameter per anonymous value.&lt;br/&gt;Valid values: &#x60;true&#x60;, &#x60;false&#x60;. | [optional] |
| **group_by** | **String** | If specified, returns data for each distinct value of the given field. &#x60;contextKind&#x60; is always included as a grouping dimension. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.&lt;br/&gt;Valid values: &#x60;projectId&#x60;, &#x60;environmentId&#x60;, &#x60;sdkName&#x60;, &#x60;sdkAppId&#x60;, &#x60;anonymousV2&#x60;. | [optional] |
| **aggregation_type** | **String** | Specifies the aggregation method. Defaults to &#x60;month_to_date&#x60;.&lt;br/&gt;Valid values: &#x60;month_to_date&#x60;, &#x60;incremental&#x60;, &#x60;rolling_30d&#x60;. | [optional] |
| **granularity** | **String** | Specifies the data granularity. Defaults to &#x60;daily&#x60;. Valid values depend on &#x60;aggregationType&#x60;: **month_to_date** supports &#x60;daily&#x60; and &#x60;monthly&#x60;; **incremental** and **rolling_30d** support &#x60;daily&#x60; only. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contexts_total_usage

> <SeriesListRep> get_contexts_total_usage(opts)

Get contexts total usage

Get a detailed time series of the number of context key usages observed by LaunchDarkly in your account, including non-primary context kinds. Use this for breakdowns that go beyond the primary-only aggregation of MAU endpoints.<br/><br/>The supported granularity varies by aggregation type. The maximum time range is 365 days.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month.
  to: 'to_example', # String | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time.
  project_key: 'project_key_example', # String | A project key to filter results by. Can be specified multiple times, one query parameter per project key.
  environment_key: 'environment_key_example', # String | An environment key to filter results by. If specified, exactly one `projectKey` must be provided. Can be specified multiple times, one query parameter per environment key.
  context_kind: 'context_kind_example', # String | A context kind to filter results by. Can be specified multiple times, one query parameter per context kind.
  sdk_name: 'sdk_name_example', # String | An SDK name to filter results by. Can be specified multiple times, one query parameter per SDK name.
  sdk_type: 'sdk_type_example', # String | An SDK type to filter results by. Can be specified multiple times, one query parameter per SDK type.
  anonymous: 'anonymous_example', # String | An anonymous value to filter results by. Can be specified multiple times, one query parameter per anonymous value.<br/>Valid values: `true`, `false`.
  group_by: 'group_by_example', # String | If specified, returns data for each distinct value of the given field. `contextKind` is always included as a grouping dimension. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.<br/>Valid values: `projectId`, `environmentId`, `sdkName`, `sdkType`, `sdkAppId`, `anonymousV2`.
  aggregation_type: 'aggregation_type_example', # String | Specifies the aggregation method. Defaults to `month_to_date`.<br/>Valid values: `month_to_date`, `incremental`, `rolling_30d`.
  granularity: 'granularity_example' # String | Specifies the data granularity. Defaults to `daily`. Valid values depend on `aggregationType`: **month_to_date** supports `daily` and `monthly`; **incremental** and **rolling_30d** support `daily` only.
}

begin
  # Get contexts total usage
  result = api_instance.get_contexts_total_usage(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_contexts_total_usage: #{e}"
end
```

#### Using the get_contexts_total_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRep>, Integer, Hash)> get_contexts_total_usage_with_http_info(opts)

```ruby
begin
  # Get contexts total usage
  data, status_code, headers = api_instance.get_contexts_total_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_contexts_total_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key to filter results by. Can be specified multiple times, one query parameter per project key. | [optional] |
| **environment_key** | **String** | An environment key to filter results by. If specified, exactly one &#x60;projectKey&#x60; must be provided. Can be specified multiple times, one query parameter per environment key. | [optional] |
| **context_kind** | **String** | A context kind to filter results by. Can be specified multiple times, one query parameter per context kind. | [optional] |
| **sdk_name** | **String** | An SDK name to filter results by. Can be specified multiple times, one query parameter per SDK name. | [optional] |
| **sdk_type** | **String** | An SDK type to filter results by. Can be specified multiple times, one query parameter per SDK type. | [optional] |
| **anonymous** | **String** | An anonymous value to filter results by. Can be specified multiple times, one query parameter per anonymous value.&lt;br/&gt;Valid values: &#x60;true&#x60;, &#x60;false&#x60;. | [optional] |
| **group_by** | **String** | If specified, returns data for each distinct value of the given field. &#x60;contextKind&#x60; is always included as a grouping dimension. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.&lt;br/&gt;Valid values: &#x60;projectId&#x60;, &#x60;environmentId&#x60;, &#x60;sdkName&#x60;, &#x60;sdkType&#x60;, &#x60;sdkAppId&#x60;, &#x60;anonymousV2&#x60;. | [optional] |
| **aggregation_type** | **String** | Specifies the aggregation method. Defaults to &#x60;month_to_date&#x60;.&lt;br/&gt;Valid values: &#x60;month_to_date&#x60;, &#x60;incremental&#x60;, &#x60;rolling_30d&#x60;. | [optional] |
| **granularity** | **String** | Specifies the data granularity. Defaults to &#x60;daily&#x60;. Valid values depend on &#x60;aggregationType&#x60;: **month_to_date** supports &#x60;daily&#x60; and &#x60;monthly&#x60;; **incremental** and **rolling_30d** support &#x60;daily&#x60; only. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_data_export_events_usage

> <DataExportSeriesListRep> get_data_export_events_usage(opts)

Get data export events usage

Get a time series array showing the number of data export events from your account. The supported granularity varies by aggregation type. The maximum time range is 365 days. `groupBy=projectId` resolves legacy rows through the account's current environment-to-project mapping and returns `409` instead of a partial series when any successful row remains unattributed. Plain project filtering keeps its current-environment compatibility behavior.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month.
  to: 'to_example', # String | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time.
  project_key: 'project_key_example', # String | A project key to filter results by. Without `groupBy=projectId`, filters to the project's current environments so retained pre-materialization usage remains visible. Can be specified multiple times, one query parameter per project key.
  environment_key: 'environment_key_example', # String | An environment key to filter results by. If specified, exactly one `projectKey` must be provided. Can be specified multiple times, one query parameter per environment key.
  event_kind: 'event_kind_example', # String | An event kind to filter results by. Can be specified multiple times, one query parameter per event kind.
  destination_kind: 'destination_kind_example', # String | A Streaming configuration kind to filter results by. Values preserve raw product identity; `snowflake` is legacy Streaming Snowflake and is distinct from Warehouse `snowflake-v2`. Can be specified multiple times.<br/>Valid values: `kinesis`, `google-pubsub`, `mparticle`, `segment`, `azure-event-hubs`, `snowflake`, `unknown`.
  group_by: 'group_by_example', # String | If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension. `projectId` requires one or more explicit `projectKey` filters and is capped at 100 selected projects. `destinationId` returns one series per streaming destination with `destinationName` metadata, plus `destinationViewable` when the destination is in the current configuration. The destination's own kind is added as `destinationKind` only when you can view the destination. A kind requested with `groupBy=destinationKind` is returned unchanged. A destination ID absent from the current configuration is named `Unknown historical destination`. Destinations you cannot view are reported together in one `Unknown destination` series with `destinationId` `hidden` and `destinationViewable` `false`, one per combination of the other requested dimensions, such as `destinationKind`. Usage without a destination ID is one series with an empty `destinationId` named `Unattributed`.<br/>Valid values: `projectId`, `environmentId`, `eventKind`, `destinationKind`, `destinationId`.
  aggregation_type: 'aggregation_type_example', # String | Specifies the aggregation method. Defaults to `month_to_date`.<br/>Valid values: `month_to_date`, `incremental`.
  granularity: 'granularity_example' # String | Specifies the data granularity. Defaults to `daily`. `monthly` granularity is only supported with the **month_to_date** aggregation type.<br/>Valid values: `daily`, `hourly`, `monthly`.
}

begin
  # Get data export events usage
  result = api_instance.get_data_export_events_usage(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_data_export_events_usage: #{e}"
end
```

#### Using the get_data_export_events_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataExportSeriesListRep>, Integer, Hash)> get_data_export_events_usage_with_http_info(opts)

```ruby
begin
  # Get data export events usage
  data, status_code, headers = api_instance.get_data_export_events_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataExportSeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_data_export_events_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key to filter results by. Without &#x60;groupBy&#x3D;projectId&#x60;, filters to the project&#39;s current environments so retained pre-materialization usage remains visible. Can be specified multiple times, one query parameter per project key. | [optional] |
| **environment_key** | **String** | An environment key to filter results by. If specified, exactly one &#x60;projectKey&#x60; must be provided. Can be specified multiple times, one query parameter per environment key. | [optional] |
| **event_kind** | **String** | An event kind to filter results by. Can be specified multiple times, one query parameter per event kind. | [optional] |
| **destination_kind** | **String** | A Streaming configuration kind to filter results by. Values preserve raw product identity; &#x60;snowflake&#x60; is legacy Streaming Snowflake and is distinct from Warehouse &#x60;snowflake-v2&#x60;. Can be specified multiple times.&lt;br/&gt;Valid values: &#x60;kinesis&#x60;, &#x60;google-pubsub&#x60;, &#x60;mparticle&#x60;, &#x60;segment&#x60;, &#x60;azure-event-hubs&#x60;, &#x60;snowflake&#x60;, &#x60;unknown&#x60;. | [optional] |
| **group_by** | **String** | If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension. &#x60;projectId&#x60; requires one or more explicit &#x60;projectKey&#x60; filters and is capped at 100 selected projects. &#x60;destinationId&#x60; returns one series per streaming destination with &#x60;destinationName&#x60; metadata, plus &#x60;destinationViewable&#x60; when the destination is in the current configuration. The destination&#39;s own kind is added as &#x60;destinationKind&#x60; only when you can view the destination. A kind requested with &#x60;groupBy&#x3D;destinationKind&#x60; is returned unchanged. A destination ID absent from the current configuration is named &#x60;Unknown historical destination&#x60;. Destinations you cannot view are reported together in one &#x60;Unknown destination&#x60; series with &#x60;destinationId&#x60; &#x60;hidden&#x60; and &#x60;destinationViewable&#x60; &#x60;false&#x60;, one per combination of the other requested dimensions, such as &#x60;destinationKind&#x60;. Usage without a destination ID is one series with an empty &#x60;destinationId&#x60; named &#x60;Unattributed&#x60;.&lt;br/&gt;Valid values: &#x60;projectId&#x60;, &#x60;environmentId&#x60;, &#x60;eventKind&#x60;, &#x60;destinationKind&#x60;, &#x60;destinationId&#x60;. | [optional] |
| **aggregation_type** | **String** | Specifies the aggregation method. Defaults to &#x60;month_to_date&#x60;.&lt;br/&gt;Valid values: &#x60;month_to_date&#x60;, &#x60;incremental&#x60;. | [optional] |
| **granularity** | **String** | Specifies the data granularity. Defaults to &#x60;daily&#x60;. &#x60;monthly&#x60; granularity is only supported with the **month_to_date** aggregation type.&lt;br/&gt;Valid values: &#x60;daily&#x60;, &#x60;hourly&#x60;, &#x60;monthly&#x60;. | [optional] |

### Return type

[**DataExportSeriesListRep**](DataExportSeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_data_export_project_ranking

> <DataExportProjectRankingRep> get_data_export_project_ranking(from, to, opts)

Rank Streaming usage by project

Rank projects with usage in the requested range by successful Streaming transfers. Legacy rows are attributed through the account's complete current environment-to-project mapping. If any successful row remains unattributed after resolution, the operation returns `409` instead of a partial ranking. The result limit does not cap the account-wide project universe or environment mapping. This source-specific operation does not provide Combined or Warehouse ranking.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
from = 789 # Integer | Inclusive UTC range start in Unix milliseconds.
to = 789 # Integer | Exclusive UTC range end in Unix milliseconds.
opts = {
  source: 'source_example', # String | The source scope. Only `streaming` is supported.
  dimension: 'dimension_example', # String | The ranking dimension. Only `project` is supported.
  project_key: ['inner_example'], # Array<String> | A canonical project key to include. Can be specified multiple times, with at most 100 unique explicit selections; duplicates do not consume the limit. When omitted, all account projects with usage in the requested range are ranked.
  search: 'search_example', # String | A case-insensitive substring matched against canonical project keys before querying usage. Project names are not searched.
  cursor: 'cursor_example', # String | An opaque cursor returned by a previous response. Cursors are bound to the account and ranking inputs.
  limit: 56 # Integer | The maximum number of ranked projects to return. This bounds response rows and look-ahead, not the account-wide candidate universe.
}

begin
  # Rank Streaming usage by project
  result = api_instance.get_data_export_project_ranking(from, to, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_data_export_project_ranking: #{e}"
end
```

#### Using the get_data_export_project_ranking_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataExportProjectRankingRep>, Integer, Hash)> get_data_export_project_ranking_with_http_info(from, to, opts)

```ruby
begin
  # Rank Streaming usage by project
  data, status_code, headers = api_instance.get_data_export_project_ranking_with_http_info(from, to, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataExportProjectRankingRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_data_export_project_ranking_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Integer** | Inclusive UTC range start in Unix milliseconds. |  |
| **to** | **Integer** | Exclusive UTC range end in Unix milliseconds. |  |
| **source** | **String** | The source scope. Only &#x60;streaming&#x60; is supported. | [optional][default to &#39;streaming&#39;] |
| **dimension** | **String** | The ranking dimension. Only &#x60;project&#x60; is supported. | [optional][default to &#39;project&#39;] |
| **project_key** | [**Array&lt;String&gt;**](String.md) | A canonical project key to include. Can be specified multiple times, with at most 100 unique explicit selections; duplicates do not consume the limit. When omitted, all account projects with usage in the requested range are ranked. | [optional] |
| **search** | **String** | A case-insensitive substring matched against canonical project keys before querying usage. Project names are not searched. | [optional] |
| **cursor** | **String** | An opaque cursor returned by a previous response. Cursors are bound to the account and ranking inputs. | [optional] |
| **limit** | **Integer** | The maximum number of ranked projects to return. This bounds response rows and look-ahead, not the account-wide candidate universe. | [optional][default to 5] |

### Return type

[**DataExportProjectRankingRep**](DataExportProjectRankingRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_evaluations_usage

> <SeriesListRep> get_evaluations_usage(project_key, environment_key, feature_flag_key, opts)

Get evaluations usage

Get time-series arrays of the number of times a flag is evaluated, broken down by the variation that resulted from that evaluation. The granularity of the returned data depends on the length of the requested time range: ranges shorter than two hours return minutely data, ranges shorter than two days return hourly data, and ranges of two days or longer return daily data. Minutely data is retained for 70 days; a range shorter than two hours that starts before then is returned at hourly granularity instead, with the start of the range widened to the containing hour. Ranges that predate available data return an empty series list. If a flag has served many distinct variation values in the requested range, the least recently seen values may be aggregated into a single additional series labeled \"Other Variations\".

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp. Defaults to 30 days ago.
  to: 'to_example', # String | The series of data returned ends at this timestamp. Defaults to the current time.
  tz: 'tz_example' # String | The timezone to use for breaks between days when returning daily data.
}

begin
  # Get evaluations usage
  result = api_instance.get_evaluations_usage(project_key, environment_key, feature_flag_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_evaluations_usage: #{e}"
end
```

#### Using the get_evaluations_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRep>, Integer, Hash)> get_evaluations_usage_with_http_info(project_key, environment_key, feature_flag_key, opts)

```ruby
begin
  # Get evaluations usage
  data, status_code, headers = api_instance.get_evaluations_usage_with_http_info(project_key, environment_key, feature_flag_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_evaluations_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **feature_flag_key** | **String** | The feature flag key |  |
| **from** | **String** | The series of data returned starts from this timestamp. Defaults to 30 days ago. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp. Defaults to the current time. | [optional] |
| **tz** | **String** | The timezone to use for breaks between days when returning daily data. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_events_usage

> <SeriesListRep> get_events_usage(type, opts)

Get events usage

Get time-series arrays of the number of times a flag is evaluated, broken down by the variation that resulted from that evaluation. The granularity of the data depends on the age of the data requested. If the requested range is within the past two hours, minutely data is returned. If it is within the last two days, hourly data is returned. Otherwise, daily data is returned.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
type = 'type_example' # String | The type of event to retrieve. Must be either `received` or `published`.
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp. Defaults to 24 hours ago.
  to: 'to_example' # String | The series of data returned ends at this timestamp. Defaults to the current time.
}

begin
  # Get events usage
  result = api_instance.get_events_usage(type, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_events_usage: #{e}"
end
```

#### Using the get_events_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRep>, Integer, Hash)> get_events_usage_with_http_info(type, opts)

```ruby
begin
  # Get events usage
  data, status_code, headers = api_instance.get_events_usage_with_http_info(type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_events_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of event to retrieve. Must be either &#x60;received&#x60; or &#x60;published&#x60;. |  |
| **from** | **String** | The series of data returned starts from this timestamp. Defaults to 24 hours ago. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp. Defaults to the current time. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_experimentation_events_usage

> <SeriesListRep> get_experimentation_events_usage(opts)

Get experimentation events usage

Get a time series array showing the number of experimentation events from your account. The supported granularity varies by aggregation type. The maximum time range is 365 days.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month.
  to: 'to_example', # String | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time.
  project_key: 'project_key_example', # String | A project key to filter results by. Without `environmentKey`, filters to the project's current environments. Can be specified multiple times, one query parameter per project key.
  environment_key: 'environment_key_example', # String | An environment key to filter results by. If specified, exactly one `projectKey` must be provided. Can be specified multiple times, one query parameter per environment key.
  event_key: 'event_key_example', # String | An event key to filter results by. Can be specified multiple times, one query parameter per event key.
  event_kind: 'event_kind_example', # String | An event kind to filter results by. Can be specified multiple times, one query parameter per event kind.
  group_by: 'group_by_example', # String | If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.<br/>Valid values: `environmentId`, `eventKey`, `eventKind`.
  aggregation_type: 'aggregation_type_example', # String | Specifies the aggregation method. Defaults to `month_to_date`.<br/>Valid values: `month_to_date`, `incremental`.
  granularity: 'granularity_example' # String | Specifies the data granularity. Defaults to `daily`. `monthly` granularity is only supported with the **month_to_date** aggregation type.<br/>Valid values: `daily`, `hourly`, `monthly`.
}

begin
  # Get experimentation events usage
  result = api_instance.get_experimentation_events_usage(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_experimentation_events_usage: #{e}"
end
```

#### Using the get_experimentation_events_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRep>, Integer, Hash)> get_experimentation_events_usage_with_http_info(opts)

```ruby
begin
  # Get experimentation events usage
  data, status_code, headers = api_instance.get_experimentation_events_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_experimentation_events_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key to filter results by. Without &#x60;environmentKey&#x60;, filters to the project&#39;s current environments. Can be specified multiple times, one query parameter per project key. | [optional] |
| **environment_key** | **String** | An environment key to filter results by. If specified, exactly one &#x60;projectKey&#x60; must be provided. Can be specified multiple times, one query parameter per environment key. | [optional] |
| **event_key** | **String** | An event key to filter results by. Can be specified multiple times, one query parameter per event key. | [optional] |
| **event_kind** | **String** | An event kind to filter results by. Can be specified multiple times, one query parameter per event kind. | [optional] |
| **group_by** | **String** | If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.&lt;br/&gt;Valid values: &#x60;environmentId&#x60;, &#x60;eventKey&#x60;, &#x60;eventKind&#x60;. | [optional] |
| **aggregation_type** | **String** | Specifies the aggregation method. Defaults to &#x60;month_to_date&#x60;.&lt;br/&gt;Valid values: &#x60;month_to_date&#x60;, &#x60;incremental&#x60;. | [optional] |
| **granularity** | **String** | Specifies the data granularity. Defaults to &#x60;daily&#x60;. &#x60;monthly&#x60; granularity is only supported with the **month_to_date** aggregation type.&lt;br/&gt;Valid values: &#x60;daily&#x60;, &#x60;hourly&#x60;, &#x60;monthly&#x60;. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_experimentation_keys_usage

> <SeriesListRep> get_experimentation_keys_usage(opts)

Get experimentation keys usage

Get a time series array showing the number of experimentation keys from your account. The supported granularity varies by aggregation type. The maximum time range is 365 days.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month.
  to: 'to_example', # String | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time.
  project_key: 'project_key_example', # String | A project key to filter results by. Without `environmentKey`, filters by project, including projects that currently have no environments. Can be specified multiple times, one query parameter per project key.
  environment_key: 'environment_key_example', # String | An environment key to filter results by. If specified, exactly one `projectKey` must be provided. Can be specified multiple times, one query parameter per environment key.
  experiment_id: 'experiment_id_example', # String | An experiment ID to filter results by. Can be specified multiple times, one query parameter per experiment ID.
  group_by: 'group_by_example', # String | If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.<br/>Valid values: `projectId`, `environmentId`, `experimentId`.
  aggregation_type: 'aggregation_type_example', # String | Specifies the aggregation method. Defaults to `month_to_date`.<br/>Valid values: `month_to_date`, `incremental`.
  granularity: 'granularity_example' # String | Specifies the data granularity. Defaults to `daily`. `monthly` granularity is only supported with the **month_to_date** aggregation type.<br/>Valid values: `daily`, `hourly`, `monthly`.
}

begin
  # Get experimentation keys usage
  result = api_instance.get_experimentation_keys_usage(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_experimentation_keys_usage: #{e}"
end
```

#### Using the get_experimentation_keys_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRep>, Integer, Hash)> get_experimentation_keys_usage_with_http_info(opts)

```ruby
begin
  # Get experimentation keys usage
  data, status_code, headers = api_instance.get_experimentation_keys_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_experimentation_keys_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key to filter results by. Without &#x60;environmentKey&#x60;, filters by project, including projects that currently have no environments. Can be specified multiple times, one query parameter per project key. | [optional] |
| **environment_key** | **String** | An environment key to filter results by. If specified, exactly one &#x60;projectKey&#x60; must be provided. Can be specified multiple times, one query parameter per environment key. | [optional] |
| **experiment_id** | **String** | An experiment ID to filter results by. Can be specified multiple times, one query parameter per experiment ID. | [optional] |
| **group_by** | **String** | If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.&lt;br/&gt;Valid values: &#x60;projectId&#x60;, &#x60;environmentId&#x60;, &#x60;experimentId&#x60;. | [optional] |
| **aggregation_type** | **String** | Specifies the aggregation method. Defaults to &#x60;month_to_date&#x60;.&lt;br/&gt;Valid values: &#x60;month_to_date&#x60;, &#x60;incremental&#x60;. | [optional] |
| **granularity** | **String** | Specifies the data granularity. Defaults to &#x60;daily&#x60;. &#x60;monthly&#x60; granularity is only supported with the **month_to_date** aggregation type.&lt;br/&gt;Valid values: &#x60;daily&#x60;, &#x60;hourly&#x60;, &#x60;monthly&#x60;. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mau_clientside_usage

> <SeriesListRep> get_mau_clientside_usage(opts)

Get MAU clientside usage

Get a time series of the number of context key usages observed by LaunchDarkly in your account, for the primary context kind only. The counts reflect data reported from client-side SDKs.<br/><br/>For past months, the primary context kind is fixed and reflects the last known primary kind for that month. For the current month, it may vary as new primary context kinds are observed.<br/><br/>The supported granularity varies by aggregation type. The maximum time range is 365 days.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month.
  to: 'to_example', # String | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time.
  project_key: 'project_key_example', # String | A project key to filter results by. Can be specified multiple times, one query parameter per project key.
  environment_key: 'environment_key_example', # String | An environment key to filter results by. If specified, exactly one `projectKey` must be provided. Can be specified multiple times, one query parameter per environment key.
  sdk_name: 'sdk_name_example', # String | An SDK name to filter results by. Can be specified multiple times, one query parameter per SDK name.
  anonymous: 'anonymous_example', # String | An anonymous value to filter results by. Can be specified multiple times, one query parameter per anonymous value.<br/>Valid values: `true`, `false`.
  group_by: 'group_by_example', # String | If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.<br/>Valid values: `projectId`, `environmentId`, `sdkName`, `sdkAppId`, `anonymousV2`.
  aggregation_type: 'aggregation_type_example', # String | Specifies the aggregation method. Defaults to `month_to_date`.<br/>Valid values: `month_to_date`, `incremental`, `rolling_30d`.
  granularity: 'granularity_example' # String | Specifies the data granularity. Defaults to `daily`. Valid values depend on `aggregationType`: **month_to_date** supports `daily` and `monthly`; **incremental** and **rolling_30d** support `daily` only.
}

begin
  # Get MAU clientside usage
  result = api_instance.get_mau_clientside_usage(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_mau_clientside_usage: #{e}"
end
```

#### Using the get_mau_clientside_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRep>, Integer, Hash)> get_mau_clientside_usage_with_http_info(opts)

```ruby
begin
  # Get MAU clientside usage
  data, status_code, headers = api_instance.get_mau_clientside_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_mau_clientside_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key to filter results by. Can be specified multiple times, one query parameter per project key. | [optional] |
| **environment_key** | **String** | An environment key to filter results by. If specified, exactly one &#x60;projectKey&#x60; must be provided. Can be specified multiple times, one query parameter per environment key. | [optional] |
| **sdk_name** | **String** | An SDK name to filter results by. Can be specified multiple times, one query parameter per SDK name. | [optional] |
| **anonymous** | **String** | An anonymous value to filter results by. Can be specified multiple times, one query parameter per anonymous value.&lt;br/&gt;Valid values: &#x60;true&#x60;, &#x60;false&#x60;. | [optional] |
| **group_by** | **String** | If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.&lt;br/&gt;Valid values: &#x60;projectId&#x60;, &#x60;environmentId&#x60;, &#x60;sdkName&#x60;, &#x60;sdkAppId&#x60;, &#x60;anonymousV2&#x60;. | [optional] |
| **aggregation_type** | **String** | Specifies the aggregation method. Defaults to &#x60;month_to_date&#x60;.&lt;br/&gt;Valid values: &#x60;month_to_date&#x60;, &#x60;incremental&#x60;, &#x60;rolling_30d&#x60;. | [optional] |
| **granularity** | **String** | Specifies the data granularity. Defaults to &#x60;daily&#x60;. Valid values depend on &#x60;aggregationType&#x60;: **month_to_date** supports &#x60;daily&#x60; and &#x60;monthly&#x60;; **incremental** and **rolling_30d** support &#x60;daily&#x60; only. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mau_sdks_by_type

> <SdkListRep> get_mau_sdks_by_type(opts)

Get MAU SDKs by type

Get a list of SDKs. These are all of the SDKs that have connected to LaunchDarkly by monthly active users (MAU) in the requested time period.<br/><br/>Endpoints for retrieving monthly active users (MAU) do not return information about active context instances. After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should not rely on this endpoint. To learn more, read [Account usage metrics](https://launchdarkly.com/docs/home/account/metrics).

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The data returned starts from this timestamp. Defaults to seven days ago. The timestamp is in Unix milliseconds, for example, 1656694800000.
  to: 'to_example', # String | The data returned ends at this timestamp. Defaults to the current time. The timestamp is in Unix milliseconds, for example, 1657904400000.
  sdktype: 'sdktype_example' # String | The type of SDK with monthly active users (MAU) to list. Must be either `client` or `server`.
}

begin
  # Get MAU SDKs by type
  result = api_instance.get_mau_sdks_by_type(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_mau_sdks_by_type: #{e}"
end
```

#### Using the get_mau_sdks_by_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdkListRep>, Integer, Hash)> get_mau_sdks_by_type_with_http_info(opts)

```ruby
begin
  # Get MAU SDKs by type
  data, status_code, headers = api_instance.get_mau_sdks_by_type_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdkListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_mau_sdks_by_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The data returned starts from this timestamp. Defaults to seven days ago. The timestamp is in Unix milliseconds, for example, 1656694800000. | [optional] |
| **to** | **String** | The data returned ends at this timestamp. Defaults to the current time. The timestamp is in Unix milliseconds, for example, 1657904400000. | [optional] |
| **sdktype** | **String** | The type of SDK with monthly active users (MAU) to list. Must be either &#x60;client&#x60; or &#x60;server&#x60;. | [optional] |

### Return type

[**SdkListRep**](SdkListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mau_total_usage

> <SeriesListRep> get_mau_total_usage(opts)

Get MAU total usage

Get a time series of the number of context key usages observed by LaunchDarkly in your account, for the primary context kind only.<br/><br/>For past months, this reflects the context kind that was most recently marked as primary for that month. For the current month, the context kind may vary as new primary kinds are observed.<br/><br/>The supported granularity varies by aggregation type. The maximum time range is 365 days.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month.
  to: 'to_example', # String | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time.
  project_key: 'project_key_example', # String | A project key to filter results by. Can be specified multiple times, one query parameter per project key.
  environment_key: 'environment_key_example', # String | An environment key to filter results by. If specified, exactly one `projectKey` must be provided. Can be specified multiple times, one query parameter per environment key.
  sdk_name: 'sdk_name_example', # String | An SDK name to filter results by. Can be specified multiple times, one query parameter per SDK name.
  sdk_type: 'sdk_type_example', # String | An SDK type to filter results by. Can be specified multiple times, one query parameter per SDK type.
  anonymous: 'anonymous_example', # String | An anonymous value to filter results by. Can be specified multiple times, one query parameter per anonymous value.<br/>Valid values: `true`, `false`.
  group_by: 'group_by_example', # String | If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.<br/>Valid values: `projectId`, `environmentId`, `sdkName`, `sdkType`, `sdkAppId`, `anonymousV2`.
  aggregation_type: 'aggregation_type_example', # String | Specifies the aggregation method. Defaults to `month_to_date`.<br/>Valid values: `month_to_date`, `incremental`, `rolling_30d`.
  granularity: 'granularity_example' # String | Specifies the data granularity. Defaults to `daily`. Valid values depend on `aggregationType`: **month_to_date** supports `daily` and `monthly`; **incremental** and **rolling_30d** support `daily` only.
}

begin
  # Get MAU total usage
  result = api_instance.get_mau_total_usage(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_mau_total_usage: #{e}"
end
```

#### Using the get_mau_total_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRep>, Integer, Hash)> get_mau_total_usage_with_http_info(opts)

```ruby
begin
  # Get MAU total usage
  data, status_code, headers = api_instance.get_mau_total_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_mau_total_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key to filter results by. Can be specified multiple times, one query parameter per project key. | [optional] |
| **environment_key** | **String** | An environment key to filter results by. If specified, exactly one &#x60;projectKey&#x60; must be provided. Can be specified multiple times, one query parameter per environment key. | [optional] |
| **sdk_name** | **String** | An SDK name to filter results by. Can be specified multiple times, one query parameter per SDK name. | [optional] |
| **sdk_type** | **String** | An SDK type to filter results by. Can be specified multiple times, one query parameter per SDK type. | [optional] |
| **anonymous** | **String** | An anonymous value to filter results by. Can be specified multiple times, one query parameter per anonymous value.&lt;br/&gt;Valid values: &#x60;true&#x60;, &#x60;false&#x60;. | [optional] |
| **group_by** | **String** | If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.&lt;br/&gt;Valid values: &#x60;projectId&#x60;, &#x60;environmentId&#x60;, &#x60;sdkName&#x60;, &#x60;sdkType&#x60;, &#x60;sdkAppId&#x60;, &#x60;anonymousV2&#x60;. | [optional] |
| **aggregation_type** | **String** | Specifies the aggregation method. Defaults to &#x60;month_to_date&#x60;.&lt;br/&gt;Valid values: &#x60;month_to_date&#x60;, &#x60;incremental&#x60;, &#x60;rolling_30d&#x60;. | [optional] |
| **granularity** | **String** | Specifies the data granularity. Defaults to &#x60;daily&#x60;. Valid values depend on &#x60;aggregationType&#x60;: **month_to_date** supports &#x60;daily&#x60; and &#x60;monthly&#x60;; **incremental** and **rolling_30d** support &#x60;daily&#x60; only. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mau_usage

> <SeriesListRep> get_mau_usage(opts)

Get MAU usage

Get a time-series array of the number of monthly active users (MAU) seen by LaunchDarkly from your account. The granularity is always daily.<br/><br/>Endpoints for retrieving monthly active users (MAU) do not return information about active context instances. After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should not rely on this endpoint. To learn more, read [Account usage metrics](https://launchdarkly.com/docs/home/account/metrics).

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp. Defaults to 30 days ago.
  to: 'to_example', # String | The series of data returned ends at this timestamp. Defaults to the current time.
  project: 'project_example', # String | A project key to filter results to. Can be specified multiple times, one query parameter per project key, to view data for multiple projects.
  environment: 'environment_example', # String | An environment key to filter results to. When using this parameter, exactly one project key must also be set. Can be specified multiple times as separate query parameters to view data for multiple environments within a single project.
  sdktype: 'sdktype_example', # String | An SDK type to filter results to. Can be specified multiple times, one query parameter per SDK type. Valid values: client, server
  sdk: 'sdk_example', # String | An SDK name to filter results to. Can be specified multiple times, one query parameter per SDK.
  anonymous: 'anonymous_example', # String | If specified, filters results to either anonymous or nonanonymous users.
  groupby: 'groupby_example', # String | If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions (for example, to group by both project and SDK). Valid values: project, environment, sdktype, sdk, anonymous, contextKind, sdkAppId
  aggregation_type: 'aggregation_type_example', # String | If specified, queries for rolling 30-day, month-to-date, or daily incremental counts. Default is rolling 30-day. Valid values: rolling_30d, month_to_date, daily_incremental
  context_kind: 'context_kind_example' # String | Filters results to the specified context kinds. Can be specified multiple times, one query parameter per context kind. If not set, queries for the user context kind.
}

begin
  # Get MAU usage
  result = api_instance.get_mau_usage(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_mau_usage: #{e}"
end
```

#### Using the get_mau_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRep>, Integer, Hash)> get_mau_usage_with_http_info(opts)

```ruby
begin
  # Get MAU usage
  data, status_code, headers = api_instance.get_mau_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_mau_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp. Defaults to 30 days ago. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp. Defaults to the current time. | [optional] |
| **project** | **String** | A project key to filter results to. Can be specified multiple times, one query parameter per project key, to view data for multiple projects. | [optional] |
| **environment** | **String** | An environment key to filter results to. When using this parameter, exactly one project key must also be set. Can be specified multiple times as separate query parameters to view data for multiple environments within a single project. | [optional] |
| **sdktype** | **String** | An SDK type to filter results to. Can be specified multiple times, one query parameter per SDK type. Valid values: client, server | [optional] |
| **sdk** | **String** | An SDK name to filter results to. Can be specified multiple times, one query parameter per SDK. | [optional] |
| **anonymous** | **String** | If specified, filters results to either anonymous or nonanonymous users. | [optional] |
| **groupby** | **String** | If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions (for example, to group by both project and SDK). Valid values: project, environment, sdktype, sdk, anonymous, contextKind, sdkAppId | [optional] |
| **aggregation_type** | **String** | If specified, queries for rolling 30-day, month-to-date, or daily incremental counts. Default is rolling 30-day. Valid values: rolling_30d, month_to_date, daily_incremental | [optional] |
| **context_kind** | **String** | Filters results to the specified context kinds. Can be specified multiple times, one query parameter per context kind. If not set, queries for the user context kind. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mau_usage_by_category

> <SeriesListRep> get_mau_usage_by_category(opts)

Get MAU usage by category

Get time-series arrays of the number of monthly active users (MAU) seen by LaunchDarkly from your account, broken down by the category of users. The category is either `browser`, `mobile`, or `backend`.<br/><br/>Endpoints for retrieving monthly active users (MAU) do not return information about active context instances. After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should not rely on this endpoint. To learn more, read [Account usage metrics](https://launchdarkly.com/docs/home/account/metrics).

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp. Defaults to 30 days ago.
  to: 'to_example' # String | The series of data returned ends at this timestamp. Defaults to the current time.
}

begin
  # Get MAU usage by category
  result = api_instance.get_mau_usage_by_category(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_mau_usage_by_category: #{e}"
end
```

#### Using the get_mau_usage_by_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRep>, Integer, Hash)> get_mau_usage_by_category_with_http_info(opts)

```ruby
begin
  # Get MAU usage by category
  data, status_code, headers = api_instance.get_mau_usage_by_category_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_mau_usage_by_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp. Defaults to 30 days ago. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp. Defaults to the current time. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_observability_errors_usage

> <SeriesListRep> get_observability_errors_usage(opts)

Get observability errors usage

Get time-series arrays of the number of observability errors. Supports `daily` and `monthly` granularity.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month.
  to: 'to_example', # String | The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time.
  project_key: 'project_key_example', # String | A project key to filter results by. Can be specified multiple times, one query parameter per project key.
  granularity: 'granularity_example', # String | Specifies the data granularity. Defaults to `daily`. Valid values depend on `aggregationType`: **month_to_date** supports `daily` and `monthly`; **incremental** and **rolling_30d** support `daily` only.
  aggregation_type: 'aggregation_type_example' # String | Specifies the aggregation method. Defaults to `month_to_date`.<br/>Valid values: `month_to_date`, `incremental`, `rolling_30d`.
}

begin
  # Get observability errors usage
  result = api_instance.get_observability_errors_usage(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_observability_errors_usage: #{e}"
end
```

#### Using the get_observability_errors_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRep>, Integer, Hash)> get_observability_errors_usage_with_http_info(opts)

```ruby
begin
  # Get observability errors usage
  data, status_code, headers = api_instance.get_observability_errors_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_observability_errors_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key to filter results by. Can be specified multiple times, one query parameter per project key. | [optional] |
| **granularity** | **String** | Specifies the data granularity. Defaults to &#x60;daily&#x60;. Valid values depend on &#x60;aggregationType&#x60;: **month_to_date** supports &#x60;daily&#x60; and &#x60;monthly&#x60;; **incremental** and **rolling_30d** support &#x60;daily&#x60; only. | [optional] |
| **aggregation_type** | **String** | Specifies the aggregation method. Defaults to &#x60;month_to_date&#x60;.&lt;br/&gt;Valid values: &#x60;month_to_date&#x60;, &#x60;incremental&#x60;, &#x60;rolling_30d&#x60;. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_observability_logs_usage

> <SeriesListRep> get_observability_logs_usage(opts)

Get observability logs usage

Get time-series arrays of the number of observability logs. Supports `daily` and `monthly` granularity.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month.
  to: 'to_example', # String | The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time.
  project_key: 'project_key_example', # String | A project key to filter results by. Can be specified multiple times, one query parameter per project key.
  granularity: 'granularity_example', # String | Specifies the data granularity. Defaults to `daily`. Valid values depend on `aggregationType`: **month_to_date** supports `daily` and `monthly`; **incremental** and **rolling_30d** support `daily` only.
  aggregation_type: 'aggregation_type_example' # String | Specifies the aggregation method. Defaults to `month_to_date`.<br/>Valid values: `month_to_date`, `incremental`, `rolling_30d`.
}

begin
  # Get observability logs usage
  result = api_instance.get_observability_logs_usage(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_observability_logs_usage: #{e}"
end
```

#### Using the get_observability_logs_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRep>, Integer, Hash)> get_observability_logs_usage_with_http_info(opts)

```ruby
begin
  # Get observability logs usage
  data, status_code, headers = api_instance.get_observability_logs_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_observability_logs_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key to filter results by. Can be specified multiple times, one query parameter per project key. | [optional] |
| **granularity** | **String** | Specifies the data granularity. Defaults to &#x60;daily&#x60;. Valid values depend on &#x60;aggregationType&#x60;: **month_to_date** supports &#x60;daily&#x60; and &#x60;monthly&#x60;; **incremental** and **rolling_30d** support &#x60;daily&#x60; only. | [optional] |
| **aggregation_type** | **String** | Specifies the aggregation method. Defaults to &#x60;month_to_date&#x60;.&lt;br/&gt;Valid values: &#x60;month_to_date&#x60;, &#x60;incremental&#x60;, &#x60;rolling_30d&#x60;. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_observability_metrics_usage

> <SeriesListRep> get_observability_metrics_usage(opts)

Get observability metrics usage

Get time-series arrays of the number of observability metrics. Supports `hourly`, `daily`, and `monthly` granularity.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month.
  to: 'to_example', # String | The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time.
  project_key: 'project_key_example', # String | A project key to filter results by. Can be specified multiple times, one query parameter per project key.
  granularity: 'granularity_example', # String | Specifies the data granularity. Defaults to `daily`. Valid values depend on `aggregationType`: **month_to_date** supports `hourly`, `daily`, and `monthly`; **average** supports `hourly`, `daily`, and `monthly`.
  aggregation_type: 'aggregation_type_example' # String | Specifies the aggregation method. Defaults to `month_to_date`.<br/>Valid values: `month_to_date`, `average`.
}

begin
  # Get observability metrics usage
  result = api_instance.get_observability_metrics_usage(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_observability_metrics_usage: #{e}"
end
```

#### Using the get_observability_metrics_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRep>, Integer, Hash)> get_observability_metrics_usage_with_http_info(opts)

```ruby
begin
  # Get observability metrics usage
  data, status_code, headers = api_instance.get_observability_metrics_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_observability_metrics_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key to filter results by. Can be specified multiple times, one query parameter per project key. | [optional] |
| **granularity** | **String** | Specifies the data granularity. Defaults to &#x60;daily&#x60;. Valid values depend on &#x60;aggregationType&#x60;: **month_to_date** supports &#x60;hourly&#x60;, &#x60;daily&#x60;, and &#x60;monthly&#x60;; **average** supports &#x60;hourly&#x60;, &#x60;daily&#x60;, and &#x60;monthly&#x60;. | [optional] |
| **aggregation_type** | **String** | Specifies the aggregation method. Defaults to &#x60;month_to_date&#x60;.&lt;br/&gt;Valid values: &#x60;month_to_date&#x60;, &#x60;average&#x60;. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_observability_sessions_usage

> <SeriesListRep> get_observability_sessions_usage(opts)

Get observability sessions usage

Get time-series arrays of the number of observability sessions. Supports `daily` and `monthly` granularity.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month.
  to: 'to_example', # String | The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time.
  project_key: 'project_key_example', # String | A project key to filter results by. Can be specified multiple times, one query parameter per project key.
  granularity: 'granularity_example', # String | Specifies the data granularity. Defaults to `daily`. Valid values depend on `aggregationType`: **month_to_date** supports `daily` and `monthly`; **incremental** and **rolling_30d** support `daily` only.
  aggregation_type: 'aggregation_type_example' # String | Specifies the aggregation method. Defaults to `month_to_date`.<br/>Valid values: `month_to_date`, `incremental`, `rolling_30d`.
}

begin
  # Get observability sessions usage
  result = api_instance.get_observability_sessions_usage(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_observability_sessions_usage: #{e}"
end
```

#### Using the get_observability_sessions_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRep>, Integer, Hash)> get_observability_sessions_usage_with_http_info(opts)

```ruby
begin
  # Get observability sessions usage
  data, status_code, headers = api_instance.get_observability_sessions_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_observability_sessions_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key to filter results by. Can be specified multiple times, one query parameter per project key. | [optional] |
| **granularity** | **String** | Specifies the data granularity. Defaults to &#x60;daily&#x60;. Valid values depend on &#x60;aggregationType&#x60;: **month_to_date** supports &#x60;daily&#x60; and &#x60;monthly&#x60;; **incremental** and **rolling_30d** support &#x60;daily&#x60; only. | [optional] |
| **aggregation_type** | **String** | Specifies the aggregation method. Defaults to &#x60;month_to_date&#x60;.&lt;br/&gt;Valid values: &#x60;month_to_date&#x60;, &#x60;incremental&#x60;, &#x60;rolling_30d&#x60;. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_observability_traces_usage

> <SeriesListRep> get_observability_traces_usage(opts)

Get observability traces usage

Get time-series arrays of the number of observability traces. Supports `daily` and `monthly` granularity.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month.
  to: 'to_example', # String | The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time.
  project_key: 'project_key_example', # String | A project key to filter results by. Can be specified multiple times, one query parameter per project key.
  granularity: 'granularity_example', # String | Specifies the data granularity. Defaults to `daily`. Valid values depend on `aggregationType`: **month_to_date** supports `daily` and `monthly`; **incremental** and **rolling_30d** support `daily` only.
  aggregation_type: 'aggregation_type_example' # String | Specifies the aggregation method. Defaults to `month_to_date`.<br/>Valid values: `month_to_date`, `incremental`, `rolling_30d`.
}

begin
  # Get observability traces usage
  result = api_instance.get_observability_traces_usage(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_observability_traces_usage: #{e}"
end
```

#### Using the get_observability_traces_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRep>, Integer, Hash)> get_observability_traces_usage_with_http_info(opts)

```ruby
begin
  # Get observability traces usage
  data, status_code, headers = api_instance.get_observability_traces_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_observability_traces_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key to filter results by. Can be specified multiple times, one query parameter per project key. | [optional] |
| **granularity** | **String** | Specifies the data granularity. Defaults to &#x60;daily&#x60;. Valid values depend on &#x60;aggregationType&#x60;: **month_to_date** supports &#x60;daily&#x60; and &#x60;monthly&#x60;; **incremental** and **rolling_30d** support &#x60;daily&#x60; only. | [optional] |
| **aggregation_type** | **String** | Specifies the aggregation method. Defaults to &#x60;month_to_date&#x60;.&lt;br/&gt;Valid values: &#x60;month_to_date&#x60;, &#x60;incremental&#x60;, &#x60;rolling_30d&#x60;. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sdk_all_versions

> <Array<SdkVersionDetailsRep>> get_sdk_all_versions(opts)

Get usage details for all SDK versions

Get detailed SDK version usage data for all versions observed in the last 24 hours in your account. Unlike the `/details` endpoint which returns only the max version per SDK, this endpoint returns all SDK versions for the specified filters. This data is refreshed hourly.<br/><br/>All query parameters are optional, allowing you to filter results as broadly or narrowly as needed.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  environment_id: 'environment_id_example', # String | Filter to a specific environment ID.
  project_id: 'project_id_example', # String | Filter to a specific project ID.
  sdk_name: 'sdk_name_example', # String | Filter to a specific SDK name.
  sdk_type: 'sdk_type_example', # String | Filter to a specific SDK type (for example, 'server', 'browser', 'mobile').
  sdk_app_id: 'sdk_app_id_example', # String | Filter to a specific SDK application ID.
  connection_type: 'connection_type_example' # String | Filter to a specific connection type (for example, 'direct', 'proxy').
}

begin
  # Get usage details for all SDK versions
  result = api_instance.get_sdk_all_versions(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_sdk_all_versions: #{e}"
end
```

#### Using the get_sdk_all_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SdkVersionDetailsRep>>, Integer, Hash)> get_sdk_all_versions_with_http_info(opts)

```ruby
begin
  # Get usage details for all SDK versions
  data, status_code, headers = api_instance.get_sdk_all_versions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SdkVersionDetailsRep>>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_sdk_all_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment_id** | **String** | Filter to a specific environment ID. | [optional] |
| **project_id** | **String** | Filter to a specific project ID. | [optional] |
| **sdk_name** | **String** | Filter to a specific SDK name. | [optional] |
| **sdk_type** | **String** | Filter to a specific SDK type (for example, &#39;server&#39;, &#39;browser&#39;, &#39;mobile&#39;). | [optional] |
| **sdk_app_id** | **String** | Filter to a specific SDK application ID. | [optional] |
| **connection_type** | **String** | Filter to a specific connection type (for example, &#39;direct&#39;, &#39;proxy&#39;). | [optional] |

### Return type

[**Array&lt;SdkVersionDetailsRep&gt;**](SdkVersionDetailsRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sdk_versions_details

> <Array<SdkVersionDetailsRep>> get_sdk_versions_details

Get SDK versions usage details

Get detailed SDK version usage data for your account, including version information, EOL status, and relay proxy metadata. Refreshed hourly, returns the max version for each SDK observed in the last 24 hours, including those without EOL metadata available.<br/><br/>This endpoint provides comprehensive information about SDK versions in use across your projects and environments.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new

begin
  # Get SDK versions usage details
  result = api_instance.get_sdk_versions_details
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_sdk_versions_details: #{e}"
end
```

#### Using the get_sdk_versions_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SdkVersionDetailsRep>>, Integer, Hash)> get_sdk_versions_details_with_http_info

```ruby
begin
  # Get SDK versions usage details
  data, status_code, headers = api_instance.get_sdk_versions_details_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SdkVersionDetailsRep>>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_sdk_versions_details_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SdkVersionDetailsRep&gt;**](SdkVersionDetailsRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_service_connections_usage

> <SeriesListRepFloat> get_service_connections_usage(opts)

Get service connections usage

Get a time series array showing the number of service connection minutes from your account. The supported granularity varies by aggregation type. The maximum time range is 365 days.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month.
  to: 'to_example', # String | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time.
  project_key: 'project_key_example', # String | A project key to filter results by. Can be specified multiple times, one query parameter per project key.
  environment_key: 'environment_key_example', # String | An environment key to filter results by. If specified, exactly one `projectKey` must be provided. Can be specified multiple times, one query parameter per environment key.
  connection_type: 'connection_type_example', # String | A connection type to filter results by. Can be specified multiple times, one query parameter per connection type.
  relay_version: 'relay_version_example', # String | A relay version to filter results by. Can be specified multiple times, one query parameter per relay version.
  sdk_name: 'sdk_name_example', # String | An SDK name to filter results by. Can be specified multiple times, one query parameter per SDK name.
  sdk_version: 'sdk_version_example', # String | An SDK version to filter results by. Can be specified multiple times, one query parameter per SDK version.
  sdk_type: 'sdk_type_example', # String | Deprecated. This endpoint reports server-side connections only, so `server` is the only value that returns data and omitting the parameter is equivalent. Any other value returns an empty series. To report client-side connections, use `GET /api/v2/usage/streams/{source}`.
  sdk_app_id: 'sdk_app_id_example', # String | An SDK app ID to filter results by. Can be specified multiple times, one query parameter per SDK app ID.
  group_by: 'group_by_example', # String | If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.<br/>Valid values: `projectId`, `environmentId`, `connectionType`, `relayVersion`, `sdkName`, `sdkVersion`, `sdkAppId`.<br/>`sdkType` is no longer offered: this endpoint reports server-side connections only, so grouping by it returns a single group. It is still accepted, for compatibility.
  aggregation_type: 'aggregation_type_example', # String | Specifies the aggregation method. Defaults to `month_to_date`.<br/>Valid values: `month_to_date`, `incremental`.
  granularity: 'granularity_example' # String | Specifies the data granularity. Defaults to `daily`. `monthly` granularity is only supported with the **month_to_date** aggregation type.<br/>Valid values: `daily`, `hourly`, `monthly`.
}

begin
  # Get service connections usage
  result = api_instance.get_service_connections_usage(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_service_connections_usage: #{e}"
end
```

#### Using the get_service_connections_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRepFloat>, Integer, Hash)> get_service_connections_usage_with_http_info(opts)

```ruby
begin
  # Get service connections usage
  data, status_code, headers = api_instance.get_service_connections_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRepFloat>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_service_connections_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key to filter results by. Can be specified multiple times, one query parameter per project key. | [optional] |
| **environment_key** | **String** | An environment key to filter results by. If specified, exactly one &#x60;projectKey&#x60; must be provided. Can be specified multiple times, one query parameter per environment key. | [optional] |
| **connection_type** | **String** | A connection type to filter results by. Can be specified multiple times, one query parameter per connection type. | [optional] |
| **relay_version** | **String** | A relay version to filter results by. Can be specified multiple times, one query parameter per relay version. | [optional] |
| **sdk_name** | **String** | An SDK name to filter results by. Can be specified multiple times, one query parameter per SDK name. | [optional] |
| **sdk_version** | **String** | An SDK version to filter results by. Can be specified multiple times, one query parameter per SDK version. | [optional] |
| **sdk_type** | **String** | Deprecated. This endpoint reports server-side connections only, so &#x60;server&#x60; is the only value that returns data and omitting the parameter is equivalent. Any other value returns an empty series. To report client-side connections, use &#x60;GET /api/v2/usage/streams/{source}&#x60;. | [optional] |
| **sdk_app_id** | **String** | An SDK app ID to filter results by. Can be specified multiple times, one query parameter per SDK app ID. | [optional] |
| **group_by** | **String** | If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.&lt;br/&gt;Valid values: &#x60;projectId&#x60;, &#x60;environmentId&#x60;, &#x60;connectionType&#x60;, &#x60;relayVersion&#x60;, &#x60;sdkName&#x60;, &#x60;sdkVersion&#x60;, &#x60;sdkAppId&#x60;.&lt;br/&gt;&#x60;sdkType&#x60; is no longer offered: this endpoint reports server-side connections only, so grouping by it returns a single group. It is still accepted, for compatibility. | [optional] |
| **aggregation_type** | **String** | Specifies the aggregation method. Defaults to &#x60;month_to_date&#x60;.&lt;br/&gt;Valid values: &#x60;month_to_date&#x60;, &#x60;incremental&#x60;. | [optional] |
| **granularity** | **String** | Specifies the data granularity. Defaults to &#x60;daily&#x60;. &#x60;monthly&#x60; granularity is only supported with the **month_to_date** aggregation type.&lt;br/&gt;Valid values: &#x60;daily&#x60;, &#x60;hourly&#x60;, &#x60;monthly&#x60;. | [optional] |

### Return type

[**SeriesListRepFloat**](SeriesListRepFloat.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stream_usage

> <SeriesListRep> get_stream_usage(source, opts)

Get stream usage

Get a time-series array of the number of streaming connections to LaunchDarkly in each time period. The granularity of the data depends on the age of the data requested. If the requested range is within the past two hours, minutely data is returned. If it is within the last two days, hourly data is returned. Otherwise, daily data is returned.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
source = 'source_example' # String | The source of streaming connections to describe. Must be either `client` or `server`.
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp. Defaults to 30 days ago.
  to: 'to_example', # String | The series of data returned ends at this timestamp. Defaults to the current time.
  tz: 'tz_example' # String | The timezone to use for breaks between days when returning daily data.
}

begin
  # Get stream usage
  result = api_instance.get_stream_usage(source, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_stream_usage: #{e}"
end
```

#### Using the get_stream_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRep>, Integer, Hash)> get_stream_usage_with_http_info(source, opts)

```ruby
begin
  # Get stream usage
  data, status_code, headers = api_instance.get_stream_usage_with_http_info(source, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_stream_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | **String** | The source of streaming connections to describe. Must be either &#x60;client&#x60; or &#x60;server&#x60;. |  |
| **from** | **String** | The series of data returned starts from this timestamp. Defaults to 30 days ago. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp. Defaults to the current time. | [optional] |
| **tz** | **String** | The timezone to use for breaks between days when returning daily data. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stream_usage_by_sdk_version

> <SeriesListRep> get_stream_usage_by_sdk_version(source, opts)

Get stream usage by SDK version

Get multiple series of the number of streaming connections to LaunchDarkly in each time period, separated by SDK type and version. Information about each series is in the metadata array. The granularity of the data depends on the age of the data requested. If the requested range is within the past 2 hours, minutely data is returned. If it is within the last two days, hourly data is returned. Otherwise, daily data is returned.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
source = 'source_example' # String | The source of streaming connections to describe. Must be either `client` or `server`.
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp. Defaults to 24 hours ago.
  to: 'to_example', # String | The series of data returned ends at this timestamp. Defaults to the current time.
  tz: 'tz_example', # String | The timezone to use for breaks between days when returning daily data.
  sdk: 'sdk_example', # String | If included, this filters the returned series to only those that match this SDK name.
  version: 'version_example' # String | If included, this filters the returned series to only those that match this SDK version.
}

begin
  # Get stream usage by SDK version
  result = api_instance.get_stream_usage_by_sdk_version(source, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_stream_usage_by_sdk_version: #{e}"
end
```

#### Using the get_stream_usage_by_sdk_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRep>, Integer, Hash)> get_stream_usage_by_sdk_version_with_http_info(source, opts)

```ruby
begin
  # Get stream usage by SDK version
  data, status_code, headers = api_instance.get_stream_usage_by_sdk_version_with_http_info(source, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_stream_usage_by_sdk_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | **String** | The source of streaming connections to describe. Must be either &#x60;client&#x60; or &#x60;server&#x60;. |  |
| **from** | **String** | The series of data returned starts from this timestamp. Defaults to 24 hours ago. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp. Defaults to the current time. | [optional] |
| **tz** | **String** | The timezone to use for breaks between days when returning daily data. | [optional] |
| **sdk** | **String** | If included, this filters the returned series to only those that match this SDK name. | [optional] |
| **version** | **String** | If included, this filters the returned series to only those that match this SDK version. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stream_usage_sdkversion

> <SdkVersionListRep> get_stream_usage_sdkversion(source)

Get stream usage SDK versions

Get a list of SDK version objects, which contain an SDK name and version. These are all of the SDKs that have connected to LaunchDarkly from your account in the past 60 days.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
source = 'source_example' # String | The source of streaming connections to describe. Must be either `client` or `server`.

begin
  # Get stream usage SDK versions
  result = api_instance.get_stream_usage_sdkversion(source)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_stream_usage_sdkversion: #{e}"
end
```

#### Using the get_stream_usage_sdkversion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdkVersionListRep>, Integer, Hash)> get_stream_usage_sdkversion_with_http_info(source)

```ruby
begin
  # Get stream usage SDK versions
  data, status_code, headers = api_instance.get_stream_usage_sdkversion_with_http_info(source)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdkVersionListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_stream_usage_sdkversion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | **String** | The source of streaming connections to describe. Must be either &#x60;client&#x60; or &#x60;server&#x60;. |  |

### Return type

[**SdkVersionListRep**](SdkVersionListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vega_ai_usage

> <SeriesListRep> get_vega_ai_usage(opts)

Get Vega AI usage

Get time-series arrays of the number of Vega AI usage. Supports `daily` and `monthly` granularity.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month.
  to: 'to_example', # String | The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time.
  project_key: 'project_key_example', # String | A project key to filter results by. Can be specified multiple times, one query parameter per project key.
  granularity: 'granularity_example', # String | Specifies the data granularity. Defaults to `daily`. Valid values depend on `aggregationType`: **month_to_date** supports `daily` and `monthly`; **incremental** and **rolling_30d** support `daily` only.
  aggregation_type: 'aggregation_type_example' # String | Specifies the aggregation method. Defaults to `month_to_date`.<br/>Valid values: `month_to_date`, `incremental`, `rolling_30d`.
}

begin
  # Get Vega AI usage
  result = api_instance.get_vega_ai_usage(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_vega_ai_usage: #{e}"
end
```

#### Using the get_vega_ai_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesListRep>, Integer, Hash)> get_vega_ai_usage_with_http_info(opts)

```ruby
begin
  # Get Vega AI usage
  data, status_code, headers = api_instance.get_vega_ai_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_vega_ai_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key to filter results by. Can be specified multiple times, one query parameter per project key. | [optional] |
| **granularity** | **String** | Specifies the data granularity. Defaults to &#x60;daily&#x60;. Valid values depend on &#x60;aggregationType&#x60;: **month_to_date** supports &#x60;daily&#x60; and &#x60;monthly&#x60;; **incremental** and **rolling_30d** support &#x60;daily&#x60; only. | [optional] |
| **aggregation_type** | **String** | Specifies the aggregation method. Defaults to &#x60;month_to_date&#x60;.&lt;br/&gt;Valid values: &#x60;month_to_date&#x60;, &#x60;incremental&#x60;, &#x60;rolling_30d&#x60;. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_warehouse_export_usage

> <DataExportSeriesListRep> get_warehouse_export_usage(opts)

Get warehouse Data Export usage

Get a time series array showing the number of rows exported to your warehouse Data Export destinations. The supported granularity varies by aggregation type. The maximum time range is 365 days.

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

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month.
  to: 'to_example', # String | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time.
  project_key: 'project_key_example', # String | A project key to filter results by. Can be specified multiple times, one query parameter per project key.
  environment_key: 'environment_key_example', # String | An environment key to filter results by. If specified, exactly one `projectKey` must be provided. Can be specified multiple times, one query parameter per environment key.
  destination_kind: 'destination_kind_example', # String | A Warehouse configuration kind to filter results by. Cannot be combined with `destination`. Can be specified multiple times.<br/>Valid values: `snowflake-v2`, `databricks`, `bigquery`, `redshift`, `clickhouse`, `s3`.
  destination: 'destination_example', # String | A Warehouse configuration kind to filter results by. Cannot be combined with `destinationKind`. Existing behavior is unchanged. Can be specified multiple times.<br/>Valid values: `snowflake-v2`, `databricks`, `bigquery`, `redshift`, `clickhouse`.
  group_by: 'group_by_example', # String | If specified, returns data for each distinct value of the given field. Can be specified multiple times.<br/>Valid values: `projectId`, `environmentId`, `destination`, `destinationKind`, `destinationId`. `destination` and `destinationKind` return the same raw Warehouse configuration kinds. `destinationId` returns one series per warehouse destination with `destinationName` metadata. When a current destination you can view matches, its `destinationId` is the LaunchDarkly destination ID, with `destinationViewable`. Otherwise, it is the warehouse provider's destination ID, named `Unknown destination`. The destination's own kind is added as `destinationKind` only when you can view the destination. A kind requested with `groupBy=destinationKind` is returned unchanged. Destinations you cannot view are reported together in one `Unknown destination` series with `destinationId` `hidden` and `destinationViewable` `false`, one per combination of the other requested dimensions, such as `destinationKind`. Usage without a destination ID is one series with an empty `destinationId` named `Unattributed`.
  aggregation_type: 'aggregation_type_example', # String | Specifies the aggregation method. Defaults to `month_to_date`.<br/>Valid values: `month_to_date`, `incremental`.
  granularity: 'granularity_example' # String | Specifies the data granularity. Defaults to `daily`. `monthly` granularity is only supported with the **month_to_date** aggregation type.<br/>Valid values: `daily`, `hourly`, `monthly`.
}

begin
  # Get warehouse Data Export usage
  result = api_instance.get_warehouse_export_usage(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_warehouse_export_usage: #{e}"
end
```

#### Using the get_warehouse_export_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataExportSeriesListRep>, Integer, Hash)> get_warehouse_export_usage_with_http_info(opts)

```ruby
begin
  # Get warehouse Data Export usage
  data, status_code, headers = api_instance.get_warehouse_export_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataExportSeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_warehouse_export_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key to filter results by. Can be specified multiple times, one query parameter per project key. | [optional] |
| **environment_key** | **String** | An environment key to filter results by. If specified, exactly one &#x60;projectKey&#x60; must be provided. Can be specified multiple times, one query parameter per environment key. | [optional] |
| **destination_kind** | **String** | A Warehouse configuration kind to filter results by. Cannot be combined with &#x60;destination&#x60;. Can be specified multiple times.&lt;br/&gt;Valid values: &#x60;snowflake-v2&#x60;, &#x60;databricks&#x60;, &#x60;bigquery&#x60;, &#x60;redshift&#x60;, &#x60;clickhouse&#x60;, &#x60;s3&#x60;. | [optional] |
| **destination** | **String** | A Warehouse configuration kind to filter results by. Cannot be combined with &#x60;destinationKind&#x60;. Existing behavior is unchanged. Can be specified multiple times.&lt;br/&gt;Valid values: &#x60;snowflake-v2&#x60;, &#x60;databricks&#x60;, &#x60;bigquery&#x60;, &#x60;redshift&#x60;, &#x60;clickhouse&#x60;. | [optional] |
| **group_by** | **String** | If specified, returns data for each distinct value of the given field. Can be specified multiple times.&lt;br/&gt;Valid values: &#x60;projectId&#x60;, &#x60;environmentId&#x60;, &#x60;destination&#x60;, &#x60;destinationKind&#x60;, &#x60;destinationId&#x60;. &#x60;destination&#x60; and &#x60;destinationKind&#x60; return the same raw Warehouse configuration kinds. &#x60;destinationId&#x60; returns one series per warehouse destination with &#x60;destinationName&#x60; metadata. When a current destination you can view matches, its &#x60;destinationId&#x60; is the LaunchDarkly destination ID, with &#x60;destinationViewable&#x60;. Otherwise, it is the warehouse provider&#39;s destination ID, named &#x60;Unknown destination&#x60;. The destination&#39;s own kind is added as &#x60;destinationKind&#x60; only when you can view the destination. A kind requested with &#x60;groupBy&#x3D;destinationKind&#x60; is returned unchanged. Destinations you cannot view are reported together in one &#x60;Unknown destination&#x60; series with &#x60;destinationId&#x60; &#x60;hidden&#x60; and &#x60;destinationViewable&#x60; &#x60;false&#x60;, one per combination of the other requested dimensions, such as &#x60;destinationKind&#x60;. Usage without a destination ID is one series with an empty &#x60;destinationId&#x60; named &#x60;Unattributed&#x60;. | [optional] |
| **aggregation_type** | **String** | Specifies the aggregation method. Defaults to &#x60;month_to_date&#x60;.&lt;br/&gt;Valid values: &#x60;month_to_date&#x60;, &#x60;incremental&#x60;. | [optional] |
| **granularity** | **String** | Specifies the data granularity. Defaults to &#x60;daily&#x60;. &#x60;monthly&#x60; granularity is only supported with the **month_to_date** aggregation type.&lt;br/&gt;Valid values: &#x60;daily&#x60;, &#x60;hourly&#x60;, &#x60;monthly&#x60;. | [optional] |

### Return type

[**DataExportSeriesListRep**](DataExportSeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

