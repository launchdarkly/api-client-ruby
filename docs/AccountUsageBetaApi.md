# LaunchDarklyApi::AccountUsageBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_contexts_clientside_usage**](AccountUsageBetaApi.md#get_contexts_clientside_usage) | **GET** /api/v2/usage/clientside-contexts | Get contexts clientside usage |
| [**get_contexts_serverside_usage**](AccountUsageBetaApi.md#get_contexts_serverside_usage) | **GET** /api/v2/usage/serverside-contexts | Get contexts serverside usage |
| [**get_contexts_total_usage**](AccountUsageBetaApi.md#get_contexts_total_usage) | **GET** /api/v2/usage/total-contexts | Get contexts total usage |
| [**get_data_export_events_usage**](AccountUsageBetaApi.md#get_data_export_events_usage) | **GET** /api/v2/usage/data-export-events | Get data export events usage |
| [**get_evaluations_usage**](AccountUsageBetaApi.md#get_evaluations_usage) | **GET** /api/v2/usage/evaluations/{projectKey}/{environmentKey}/{featureFlagKey} | Get evaluations usage |
| [**get_events_usage**](AccountUsageBetaApi.md#get_events_usage) | **GET** /api/v2/usage/events/{type} | Get events usage |
| [**get_experimentation_events_usage**](AccountUsageBetaApi.md#get_experimentation_events_usage) | **GET** /api/v2/usage/experimentation-events | Get experimentation events usage |
| [**get_experimentation_keys_usage**](AccountUsageBetaApi.md#get_experimentation_keys_usage) | **GET** /api/v2/usage/experimentation-keys | Get experimentation keys usage |
| [**get_mau_sdks_by_type**](AccountUsageBetaApi.md#get_mau_sdks_by_type) | **GET** /api/v2/usage/mau/sdks | Get MAU SDKs by type |
| [**get_mau_usage**](AccountUsageBetaApi.md#get_mau_usage) | **GET** /api/v2/usage/mau | Get MAU usage |
| [**get_mau_usage_by_category**](AccountUsageBetaApi.md#get_mau_usage_by_category) | **GET** /api/v2/usage/mau/bycategory | Get MAU usage by category |
| [**get_observability_errors_usage**](AccountUsageBetaApi.md#get_observability_errors_usage) | **GET** /api/v2/usage/observability/errors | Get observability errors usage |
| [**get_observability_logs_usage**](AccountUsageBetaApi.md#get_observability_logs_usage) | **GET** /api/v2/usage/observability/logs | Get observability logs usage |
| [**get_observability_sessions_usage**](AccountUsageBetaApi.md#get_observability_sessions_usage) | **GET** /api/v2/usage/observability/sessions | Get observability sessions usage |
| [**get_observability_traces_usage**](AccountUsageBetaApi.md#get_observability_traces_usage) | **GET** /api/v2/usage/observability/traces | Get observability traces usage |
| [**get_service_connections_usage**](AccountUsageBetaApi.md#get_service_connections_usage) | **GET** /api/v2/usage/service-connections | Get service connections usage |
| [**get_stream_usage**](AccountUsageBetaApi.md#get_stream_usage) | **GET** /api/v2/usage/streams/{source} | Get stream usage |
| [**get_stream_usage_by_sdk_version**](AccountUsageBetaApi.md#get_stream_usage_by_sdk_version) | **GET** /api/v2/usage/streams/{source}/bysdkversion | Get stream usage by SDK version |
| [**get_stream_usage_sdkversion**](AccountUsageBetaApi.md#get_stream_usage_sdkversion) | **GET** /api/v2/usage/streams/{source}/sdkversions | Get stream usage SDK versions |


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
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
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
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
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
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
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

> <SeriesListRep> get_data_export_events_usage(opts)

Get data export events usage

Get a time series array showing the number of data export events from your account. The supported granularity varies by aggregation type. The maximum time range is 365 days.

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month.
  to: 'to_example', # String | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time.
  project_key: 'project_key_example', # String | A project key to filter results by. Can be specified multiple times, one query parameter per project key.
  environment_key: 'environment_key_example', # String | An environment key to filter results by. If specified, exactly one `projectKey` must be provided. Can be specified multiple times, one query parameter per environment key.
  event_kind: 'event_kind_example', # String | An event kind to filter results by. Can be specified multiple times, one query parameter per event kind.
  group_by: 'group_by_example', # String | If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.<br/>Valid values: `environmentId`, `eventKind`.
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

> <Array(<SeriesListRep>, Integer, Hash)> get_data_export_events_usage_with_http_info(opts)

```ruby
begin
  # Get data export events usage
  data, status_code, headers = api_instance.get_data_export_events_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesListRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_data_export_events_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key to filter results by. Can be specified multiple times, one query parameter per project key. | [optional] |
| **environment_key** | **String** | An environment key to filter results by. If specified, exactly one &#x60;projectKey&#x60; must be provided. Can be specified multiple times, one query parameter per environment key. | [optional] |
| **event_kind** | **String** | An event kind to filter results by. Can be specified multiple times, one query parameter per event kind. | [optional] |
| **group_by** | **String** | If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.&lt;br/&gt;Valid values: &#x60;environmentId&#x60;, &#x60;eventKind&#x60;. | [optional] |
| **aggregation_type** | **String** | Specifies the aggregation method. Defaults to &#x60;month_to_date&#x60;.&lt;br/&gt;Valid values: &#x60;month_to_date&#x60;, &#x60;incremental&#x60;. | [optional] |
| **granularity** | **String** | Specifies the data granularity. Defaults to &#x60;daily&#x60;. &#x60;monthly&#x60; granularity is only supported with the **month_to_date** aggregation type.&lt;br/&gt;Valid values: &#x60;daily&#x60;, &#x60;hourly&#x60;, &#x60;monthly&#x60;. | [optional] |

### Return type

[**SeriesListRep**](SeriesListRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_evaluations_usage

> <SeriesListRep> get_evaluations_usage(project_key, environment_key, feature_flag_key, opts)

Get evaluations usage

Get time-series arrays of the number of times a flag is evaluated, broken down by the variation that resulted from that evaluation. The granularity of the data depends on the age of the data requested. If the requested range is within the past two hours, minutely data is returned. If it is within the last two days, hourly data is returned. Otherwise, daily data is returned.

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
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
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
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
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month.
  to: 'to_example', # String | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time.
  project_key: 'project_key_example', # String | A project key to filter results by. Can be specified multiple times, one query parameter per project key.
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
| **project_key** | **String** | A project key to filter results by. Can be specified multiple times, one query parameter per project key. | [optional] |
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
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = LaunchDarklyApi::AccountUsageBetaApi.new
opts = {
  from: 'from_example', # String | The series of data returned starts from this timestamp (Unix milliseconds). Defaults to the beginning of the current month.
  to: 'to_example', # String | The series of data returned ends at this timestamp (Unix milliseconds). Defaults to the current time.
  project_key: 'project_key_example', # String | A project key to filter results by. Can be specified multiple times, one query parameter per project key.
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
| **project_key** | **String** | A project key to filter results by. Can be specified multiple times, one query parameter per project key. | [optional] |
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
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
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
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
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
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
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
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
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
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
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
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
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
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
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
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
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
  sdk_type: 'sdk_type_example', # String | An SDK type to filter results by. Can be specified multiple times, one query parameter per SDK type.
  group_by: 'group_by_example', # String | If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.<br/>Valid values: `projectId`, `environmentId`, `connectionType`, `relayVersion`, `sdkName`, `sdkVersion`, `sdkType`.
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
| **sdk_type** | **String** | An SDK type to filter results by. Can be specified multiple times, one query parameter per SDK type. | [optional] |
| **group_by** | **String** | If specified, returns data for each distinct value of the given field. Can be specified multiple times to group data by multiple dimensions, one query parameter per dimension.&lt;br/&gt;Valid values: &#x60;projectId&#x60;, &#x60;environmentId&#x60;, &#x60;connectionType&#x60;, &#x60;relayVersion&#x60;, &#x60;sdkName&#x60;, &#x60;sdkVersion&#x60;, &#x60;sdkType&#x60;. | [optional] |
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
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
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
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
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
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
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

