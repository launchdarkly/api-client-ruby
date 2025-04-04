# LaunchDarklyApi::AccountUsageBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_data_export_events_usage**](AccountUsageBetaApi.md#get_data_export_events_usage) | **GET** /api/v2/usage/data-export-events | Get data export events usage |
| [**get_evaluations_usage**](AccountUsageBetaApi.md#get_evaluations_usage) | **GET** /api/v2/usage/evaluations/{projectKey}/{environmentKey}/{featureFlagKey} | Get evaluations usage |
| [**get_events_usage**](AccountUsageBetaApi.md#get_events_usage) | **GET** /api/v2/usage/events/{type} | Get events usage |
| [**get_experimentation_keys_usage**](AccountUsageBetaApi.md#get_experimentation_keys_usage) | **GET** /api/v2/usage/experimentation-keys | Get experimentation keys usage |
| [**get_experimentation_units_usage**](AccountUsageBetaApi.md#get_experimentation_units_usage) | **GET** /api/v2/usage/experimentation-units | Get experimentation units usage |
| [**get_mau_sdks_by_type**](AccountUsageBetaApi.md#get_mau_sdks_by_type) | **GET** /api/v2/usage/mau/sdks | Get MAU SDKs by type |
| [**get_mau_usage**](AccountUsageBetaApi.md#get_mau_usage) | **GET** /api/v2/usage/mau | Get MAU usage |
| [**get_mau_usage_by_category**](AccountUsageBetaApi.md#get_mau_usage_by_category) | **GET** /api/v2/usage/mau/bycategory | Get MAU usage by category |
| [**get_service_connection_usage**](AccountUsageBetaApi.md#get_service_connection_usage) | **GET** /api/v2/usage/service-connections | Get service connection usage |
| [**get_stream_usage**](AccountUsageBetaApi.md#get_stream_usage) | **GET** /api/v2/usage/streams/{source} | Get stream usage |
| [**get_stream_usage_by_sdk_version**](AccountUsageBetaApi.md#get_stream_usage_by_sdk_version) | **GET** /api/v2/usage/streams/{source}/bysdkversion | Get stream usage by SDK version |
| [**get_stream_usage_sdkversion**](AccountUsageBetaApi.md#get_stream_usage_sdkversion) | **GET** /api/v2/usage/streams/{source}/sdkversions | Get stream usage SDK versions |


## get_data_export_events_usage

> <SeriesIntervalsRep> get_data_export_events_usage(opts)

Get data export events usage

Get a time-series array of the number of monthly data export events from your account. The granularity is always daily, with a maximum of 31 days.

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
  project_key: 'project_key_example', # String | A project key. If specified, `environmentKey` is required and results apply to the corresponding environment in this project.
  environment_key: 'environment_key_example' # String | An environment key. If specified, `projectKey` is required and results apply to the corresponding environment in this project.
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

> <Array(<SeriesIntervalsRep>, Integer, Hash)> get_data_export_events_usage_with_http_info(opts)

```ruby
begin
  # Get data export events usage
  data, status_code, headers = api_instance.get_data_export_events_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesIntervalsRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_data_export_events_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key. If specified, &#x60;environmentKey&#x60; is required and results apply to the corresponding environment in this project. | [optional] |
| **environment_key** | **String** | An environment key. If specified, &#x60;projectKey&#x60; is required and results apply to the corresponding environment in this project. | [optional] |

### Return type

[**SeriesIntervalsRep**](SeriesIntervalsRep.md)

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


## get_experimentation_keys_usage

> <SeriesIntervalsRep> get_experimentation_keys_usage(opts)

Get experimentation keys usage

Get a time-series array of the number of monthly experimentation keys from your account. The granularity is always daily, with a maximum of 31 days.

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
  project_key: 'project_key_example', # String | A project key. If specified, `environmentKey` is required and results apply to the corresponding environment in this project.
  environment_key: 'environment_key_example' # String | An environment key. If specified, `projectKey` is required and results apply to the corresponding environment in this project.
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

> <Array(<SeriesIntervalsRep>, Integer, Hash)> get_experimentation_keys_usage_with_http_info(opts)

```ruby
begin
  # Get experimentation keys usage
  data, status_code, headers = api_instance.get_experimentation_keys_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesIntervalsRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_experimentation_keys_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key. If specified, &#x60;environmentKey&#x60; is required and results apply to the corresponding environment in this project. | [optional] |
| **environment_key** | **String** | An environment key. If specified, &#x60;projectKey&#x60; is required and results apply to the corresponding environment in this project. | [optional] |

### Return type

[**SeriesIntervalsRep**](SeriesIntervalsRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_experimentation_units_usage

> <SeriesIntervalsRep> get_experimentation_units_usage(opts)

Get experimentation units usage

Get a time-series array of the number of monthly experimentation units from your account. The granularity is always daily, with a maximum of 31 days.

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
  project_key: 'project_key_example', # String | A project key. If specified, `environmentKey` is required and results apply to the corresponding environment in this project.
  environment_key: 'environment_key_example' # String | An environment key. If specified, `projectKey` is required and results apply to the corresponding environment in this project.
}

begin
  # Get experimentation units usage
  result = api_instance.get_experimentation_units_usage(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_experimentation_units_usage: #{e}"
end
```

#### Using the get_experimentation_units_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesIntervalsRep>, Integer, Hash)> get_experimentation_units_usage_with_http_info(opts)

```ruby
begin
  # Get experimentation units usage
  data, status_code, headers = api_instance.get_experimentation_units_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesIntervalsRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_experimentation_units_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key. If specified, &#x60;environmentKey&#x60; is required and results apply to the corresponding environment in this project. | [optional] |
| **environment_key** | **String** | An environment key. If specified, &#x60;projectKey&#x60; is required and results apply to the corresponding environment in this project. | [optional] |

### Return type

[**SeriesIntervalsRep**](SeriesIntervalsRep.md)

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


## get_service_connection_usage

> <SeriesIntervalsRep> get_service_connection_usage(opts)

Get service connection usage

Get a time-series array of the number of monthly service connections from your account. The granularity is always daily, with a maximum of 31 days.

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
  project_key: 'project_key_example', # String | A project key. If specified, `environmentKey` is required and results apply to the corresponding environment in this project.
  environment_key: 'environment_key_example' # String | An environment key. If specified, `projectKey` is required and results apply to the corresponding environment in this project.
}

begin
  # Get service connection usage
  result = api_instance.get_service_connection_usage(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_service_connection_usage: #{e}"
end
```

#### Using the get_service_connection_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeriesIntervalsRep>, Integer, Hash)> get_service_connection_usage_with_http_info(opts)

```ruby
begin
  # Get service connection usage
  data, status_code, headers = api_instance.get_service_connection_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeriesIntervalsRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccountUsageBetaApi->get_service_connection_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The series of data returned starts from this timestamp (Unix seconds). Defaults to the beginning of the current month. | [optional] |
| **to** | **String** | The series of data returned ends at this timestamp (Unix seconds). Defaults to the current time. | [optional] |
| **project_key** | **String** | A project key. If specified, &#x60;environmentKey&#x60; is required and results apply to the corresponding environment in this project. | [optional] |
| **environment_key** | **String** | An environment key. If specified, &#x60;projectKey&#x60; is required and results apply to the corresponding environment in this project. | [optional] |

### Return type

[**SeriesIntervalsRep**](SeriesIntervalsRep.md)

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

