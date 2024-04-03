# LaunchDarklyApi::InsightsChartsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_deployment_frequency_chart**](InsightsChartsBetaApi.md#get_deployment_frequency_chart) | **GET** /api/v2/engineering-insights/charts/deployments/frequency | Get deployment frequency chart data |
| [**get_flag_status_chart**](InsightsChartsBetaApi.md#get_flag_status_chart) | **GET** /api/v2/engineering-insights/charts/flags/status | Get flag status chart data |
| [**get_lead_time_chart**](InsightsChartsBetaApi.md#get_lead_time_chart) | **GET** /api/v2/engineering-insights/charts/lead-time | Get lead time chart data |
| [**get_release_frequency_chart**](InsightsChartsBetaApi.md#get_release_frequency_chart) | **GET** /api/v2/engineering-insights/charts/releases/frequency | Get release frequency chart data |
| [**get_stale_flags_chart**](InsightsChartsBetaApi.md#get_stale_flags_chart) | **GET** /api/v2/engineering-insights/charts/flags/stale | Get stale flags chart data |


## get_deployment_frequency_chart

> <InsightsChart> get_deployment_frequency_chart(opts)

Get deployment frequency chart data

Get deployment frequency chart data. Engineering insights displays deployment frequency data in the [deployment frequency metric view](https://docs.launchdarkly.com/home/engineering-insights/metrics/deployment).  ### Expanding the chart response  LaunchDarkly supports expanding the chart response to include additional fields.  To expand the response, append the `expand` query parameter and include the following:  * `metrics` includes details on the metrics related to deployment frequency  For example, use `?expand=metrics` to include the `metrics` field in the response. By default, this field is **not** included in the response. 

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

api_instance = LaunchDarklyApi::InsightsChartsBetaApi.new
opts = {
  project_key: 'project_key_example', # String | The project key
  environment_key: 'environment_key_example', # String | The environment key
  application_key: 'application_key_example', # String | Comma separated list of application keys
  from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Unix timestamp in milliseconds. Default value is 7 days ago.
  to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Unix timestamp in milliseconds. Default value is now.
  bucket_type: 'bucket_type_example', # String | Specify type of bucket. Options: `rolling`, `hour`, `day`. Default: `rolling`.
  bucket_ms: 789, # Integer | Duration of intervals for x-axis in milliseconds. Default value is one day (`86400000` milliseconds).
  group_by: 'group_by_example', # String | Options: `application`, `kind`
  expand: 'expand_example' # String | Options: `metrics`
}

begin
  # Get deployment frequency chart data
  result = api_instance.get_deployment_frequency_chart(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsChartsBetaApi->get_deployment_frequency_chart: #{e}"
end
```

#### Using the get_deployment_frequency_chart_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsightsChart>, Integer, Hash)> get_deployment_frequency_chart_with_http_info(opts)

```ruby
begin
  # Get deployment frequency chart data
  data, status_code, headers = api_instance.get_deployment_frequency_chart_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsightsChart>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsChartsBetaApi->get_deployment_frequency_chart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key | [optional] |
| **environment_key** | **String** | The environment key | [optional] |
| **application_key** | **String** | Comma separated list of application keys | [optional] |
| **from** | **Time** | Unix timestamp in milliseconds. Default value is 7 days ago. | [optional] |
| **to** | **Time** | Unix timestamp in milliseconds. Default value is now. | [optional] |
| **bucket_type** | **String** | Specify type of bucket. Options: &#x60;rolling&#x60;, &#x60;hour&#x60;, &#x60;day&#x60;. Default: &#x60;rolling&#x60;. | [optional] |
| **bucket_ms** | **Integer** | Duration of intervals for x-axis in milliseconds. Default value is one day (&#x60;86400000&#x60; milliseconds). | [optional] |
| **group_by** | **String** | Options: &#x60;application&#x60;, &#x60;kind&#x60; | [optional] |
| **expand** | **String** | Options: &#x60;metrics&#x60; | [optional] |

### Return type

[**InsightsChart**](InsightsChart.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_flag_status_chart

> <InsightsChart> get_flag_status_chart(project_key, environment_key, opts)

Get flag status chart data

Get flag status chart data. To learn more, read [Using the flag status chart](https://docs.launchdarkly.com/home/engineering-insights/metrics/flag-health#using-the-flag-status-chart).

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

api_instance = LaunchDarklyApi::InsightsChartsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
opts = {
  application_key: 'application_key_example' # String | Comma separated list of application keys
}

begin
  # Get flag status chart data
  result = api_instance.get_flag_status_chart(project_key, environment_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsChartsBetaApi->get_flag_status_chart: #{e}"
end
```

#### Using the get_flag_status_chart_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsightsChart>, Integer, Hash)> get_flag_status_chart_with_http_info(project_key, environment_key, opts)

```ruby
begin
  # Get flag status chart data
  data, status_code, headers = api_instance.get_flag_status_chart_with_http_info(project_key, environment_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsightsChart>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsChartsBetaApi->get_flag_status_chart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **application_key** | **String** | Comma separated list of application keys | [optional] |

### Return type

[**InsightsChart**](InsightsChart.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lead_time_chart

> <InsightsChart> get_lead_time_chart(project_key, opts)

Get lead time chart data

Get lead time chart data. The engineering insights UI displays lead time data in the [lead time metric view](https://docs.launchdarkly.com/home/engineering-insights/metrics/lead-time).

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

api_instance = LaunchDarklyApi::InsightsChartsBetaApi.new
project_key = 'project_key_example' # String | The project key
opts = {
  environment_key: 'environment_key_example', # String | The environment key
  application_key: 'application_key_example', # String | Comma separated list of application keys
  from: 789, # Integer | Unix timestamp in milliseconds. Default value is 7 days ago.
  to: 789, # Integer | Unix timestamp in milliseconds. Default value is now.
  bucket_type: 'bucket_type_example', # String | Specify type of bucket. Options: `rolling`, `hour`, `day`. Default: `rolling`.
  bucket_ms: 789, # Integer | Duration of intervals for x-axis in milliseconds. Default value is one day (`86400000` milliseconds).
  group_by: 'group_by_example', # String | Options: `application`, `stage`. Default: `stage`.
  expand: 'expand_example' # String | Options: `metrics`, `percentiles`.
}

begin
  # Get lead time chart data
  result = api_instance.get_lead_time_chart(project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsChartsBetaApi->get_lead_time_chart: #{e}"
end
```

#### Using the get_lead_time_chart_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsightsChart>, Integer, Hash)> get_lead_time_chart_with_http_info(project_key, opts)

```ruby
begin
  # Get lead time chart data
  data, status_code, headers = api_instance.get_lead_time_chart_with_http_info(project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsightsChart>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsChartsBetaApi->get_lead_time_chart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key | [optional] |
| **application_key** | **String** | Comma separated list of application keys | [optional] |
| **from** | **Integer** | Unix timestamp in milliseconds. Default value is 7 days ago. | [optional] |
| **to** | **Integer** | Unix timestamp in milliseconds. Default value is now. | [optional] |
| **bucket_type** | **String** | Specify type of bucket. Options: &#x60;rolling&#x60;, &#x60;hour&#x60;, &#x60;day&#x60;. Default: &#x60;rolling&#x60;. | [optional] |
| **bucket_ms** | **Integer** | Duration of intervals for x-axis in milliseconds. Default value is one day (&#x60;86400000&#x60; milliseconds). | [optional] |
| **group_by** | **String** | Options: &#x60;application&#x60;, &#x60;stage&#x60;. Default: &#x60;stage&#x60;. | [optional] |
| **expand** | **String** | Options: &#x60;metrics&#x60;, &#x60;percentiles&#x60;. | [optional] |

### Return type

[**InsightsChart**](InsightsChart.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_release_frequency_chart

> <InsightsChart> get_release_frequency_chart(project_key, environment_key, opts)

Get release frequency chart data

Get release frequency chart data. Engineering insights displays release frequency data in the [release frequency metric view](https://docs.launchdarkly.com/home/engineering-insights/metrics/release).

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

api_instance = LaunchDarklyApi::InsightsChartsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
opts = {
  application_key: 'application_key_example', # String | Comma separated list of application keys
  has_experiments: true, # Boolean | Filter events to those associated with an experiment (`true`) or without an experiment (`false`)
  global: 'global_example', # String | Filter to include or exclude global events. Default value is `include`. Options: `include`, `exclude`
  group_by: 'group_by_example', # String | Property to group results by. Options: `impact`
  from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Unix timestamp in milliseconds. Default value is 7 days ago.
  to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Unix timestamp in milliseconds. Default value is now.
  bucket_type: 'bucket_type_example', # String | Specify type of bucket. Options: `rolling`, `hour`, `day`. Default: `rolling`.
  bucket_ms: 789, # Integer | Duration of intervals for x-axis in milliseconds. Default value is one day (`86400000` milliseconds).
  expand: 'expand_example' # String | Options: `metrics`
}

begin
  # Get release frequency chart data
  result = api_instance.get_release_frequency_chart(project_key, environment_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsChartsBetaApi->get_release_frequency_chart: #{e}"
end
```

#### Using the get_release_frequency_chart_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsightsChart>, Integer, Hash)> get_release_frequency_chart_with_http_info(project_key, environment_key, opts)

```ruby
begin
  # Get release frequency chart data
  data, status_code, headers = api_instance.get_release_frequency_chart_with_http_info(project_key, environment_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsightsChart>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsChartsBetaApi->get_release_frequency_chart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **application_key** | **String** | Comma separated list of application keys | [optional] |
| **has_experiments** | **Boolean** | Filter events to those associated with an experiment (&#x60;true&#x60;) or without an experiment (&#x60;false&#x60;) | [optional] |
| **global** | **String** | Filter to include or exclude global events. Default value is &#x60;include&#x60;. Options: &#x60;include&#x60;, &#x60;exclude&#x60; | [optional] |
| **group_by** | **String** | Property to group results by. Options: &#x60;impact&#x60; | [optional] |
| **from** | **Time** | Unix timestamp in milliseconds. Default value is 7 days ago. | [optional] |
| **to** | **Time** | Unix timestamp in milliseconds. Default value is now. | [optional] |
| **bucket_type** | **String** | Specify type of bucket. Options: &#x60;rolling&#x60;, &#x60;hour&#x60;, &#x60;day&#x60;. Default: &#x60;rolling&#x60;. | [optional] |
| **bucket_ms** | **Integer** | Duration of intervals for x-axis in milliseconds. Default value is one day (&#x60;86400000&#x60; milliseconds). | [optional] |
| **expand** | **String** | Options: &#x60;metrics&#x60; | [optional] |

### Return type

[**InsightsChart**](InsightsChart.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stale_flags_chart

> <InsightsChart> get_stale_flags_chart(project_key, environment_key, opts)

Get stale flags chart data

Get stale flags chart data. Engineering insights displays stale flags data in the [flag health metric view](https://docs.launchdarkly.com/home/engineering-insights/metrics/flag-health).  ### Expanding the chart response  LaunchDarkly supports expanding the chart response to include additional fields.  To expand the response, append the `expand` query parameter and include the following:  * `metrics` includes details on the metrics related to stale flags  For example, use `?expand=metrics` to include the `metrics` field in the response. By default, this field is **not** included in the response. 

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

api_instance = LaunchDarklyApi::InsightsChartsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
opts = {
  application_key: 'application_key_example', # String | Comma separated list of application keys
  group_by: 'group_by_example', # String | Property to group results by. Options: `maintainer`
  maintainer_id: 'maintainer_id_example', # String | Comma-separated list of individual maintainers to filter results.
  maintainer_team_key: 'maintainer_team_key_example', # String | Comma-separated list of team maintainer keys to filter results.
  expand: 'expand_example' # String | Options: `metrics`
}

begin
  # Get stale flags chart data
  result = api_instance.get_stale_flags_chart(project_key, environment_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsChartsBetaApi->get_stale_flags_chart: #{e}"
end
```

#### Using the get_stale_flags_chart_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsightsChart>, Integer, Hash)> get_stale_flags_chart_with_http_info(project_key, environment_key, opts)

```ruby
begin
  # Get stale flags chart data
  data, status_code, headers = api_instance.get_stale_flags_chart_with_http_info(project_key, environment_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsightsChart>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsChartsBetaApi->get_stale_flags_chart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **application_key** | **String** | Comma separated list of application keys | [optional] |
| **group_by** | **String** | Property to group results by. Options: &#x60;maintainer&#x60; | [optional] |
| **maintainer_id** | **String** | Comma-separated list of individual maintainers to filter results. | [optional] |
| **maintainer_team_key** | **String** | Comma-separated list of team maintainer keys to filter results. | [optional] |
| **expand** | **String** | Options: &#x60;metrics&#x60; | [optional] |

### Return type

[**InsightsChart**](InsightsChart.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

