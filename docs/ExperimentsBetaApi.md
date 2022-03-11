# LaunchDarklyApi::ExperimentsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_experiment**](ExperimentsBetaApi.md#get_experiment) | **GET** /api/v2/flags/{projectKey}/{featureFlagKey}/experiments/{environmentKey}/{metricKey} | Get experiment results |
| [**reset_experiment**](ExperimentsBetaApi.md#reset_experiment) | **DELETE** /api/v2/flags/{projectKey}/{featureFlagKey}/experiments/{environmentKey}/{metricKey}/results | Reset experiment results |


## get_experiment

> <ExperimentResultsRep> get_experiment(project_key, feature_flag_key, environment_key, metric_key, opts)

Get experiment results

Get detailed experiment result data

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

api_instance = LaunchDarklyApi::ExperimentsBetaApi.new
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key
environment_key = 'environment_key_example' # String | The environment key
metric_key = 'metric_key_example' # String | The metric key
opts = {
  from: 789, # Integer | A timestamp denoting the start of the data collection period, expressed as a Unix epoch time in milliseconds.
  to: 789 # Integer | A timestamp denoting the end of the data collection period, expressed as a Unix epoch time in milliseconds.
}

begin
  # Get experiment results
  result = api_instance.get_experiment(project_key, feature_flag_key, environment_key, metric_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ExperimentsBetaApi->get_experiment: #{e}"
end
```

#### Using the get_experiment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExperimentResultsRep>, Integer, Hash)> get_experiment_with_http_info(project_key, feature_flag_key, environment_key, metric_key, opts)

```ruby
begin
  # Get experiment results
  data, status_code, headers = api_instance.get_experiment_with_http_info(project_key, feature_flag_key, environment_key, metric_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExperimentResultsRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ExperimentsBetaApi->get_experiment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag key |  |
| **environment_key** | **String** | The environment key |  |
| **metric_key** | **String** | The metric key |  |
| **from** | **Integer** | A timestamp denoting the start of the data collection period, expressed as a Unix epoch time in milliseconds. | [optional] |
| **to** | **Integer** | A timestamp denoting the end of the data collection period, expressed as a Unix epoch time in milliseconds. | [optional] |

### Return type

[**ExperimentResultsRep**](ExperimentResultsRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reset_experiment

> reset_experiment(project_key, feature_flag_key, environment_key, metric_key)

Reset experiment results

Reset all experiment results by deleting all existing data for an experiment

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

api_instance = LaunchDarklyApi::ExperimentsBetaApi.new
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key
environment_key = 'environment_key_example' # String | The environment key
metric_key = 'metric_key_example' # String | The metric's key

begin
  # Reset experiment results
  api_instance.reset_experiment(project_key, feature_flag_key, environment_key, metric_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ExperimentsBetaApi->reset_experiment: #{e}"
end
```

#### Using the reset_experiment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> reset_experiment_with_http_info(project_key, feature_flag_key, environment_key, metric_key)

```ruby
begin
  # Reset experiment results
  data, status_code, headers = api_instance.reset_experiment_with_http_info(project_key, feature_flag_key, environment_key, metric_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ExperimentsBetaApi->reset_experiment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag key |  |
| **environment_key** | **String** | The environment key |  |
| **metric_key** | **String** | The metric&#39;s key |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

