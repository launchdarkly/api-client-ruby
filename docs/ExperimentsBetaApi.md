# LaunchDarklyApi::ExperimentsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_experiment**](ExperimentsBetaApi.md#create_experiment) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments | Create experiment |
| [**create_iteration**](ExperimentsBetaApi.md#create_iteration) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments/{experimentKey}/iterations | Create iteration |
| [**get_experiment**](ExperimentsBetaApi.md#get_experiment) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments/{experimentKey} | Get experiment |
| [**get_experiment_results**](ExperimentsBetaApi.md#get_experiment_results) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments/{experimentKey}/metrics/{metricKey}/results | Get experiment results |
| [**get_experiments**](ExperimentsBetaApi.md#get_experiments) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments | Get experiments |
| [**get_legacy_experiment_results**](ExperimentsBetaApi.md#get_legacy_experiment_results) | **GET** /api/v2/flags/{projectKey}/{featureFlagKey}/experiments/{environmentKey}/{metricKey} | Get legacy experiment results (deprecated) |
| [**patch_experiment**](ExperimentsBetaApi.md#patch_experiment) | **PATCH** /api/v2/projects/{projectKey}/environments/{environmentKey}/experiments/{experimentKey} | Patch experiment |
| [**reset_experiment**](ExperimentsBetaApi.md#reset_experiment) | **DELETE** /api/v2/flags/{projectKey}/{featureFlagKey}/experiments/{environmentKey}/{metricKey}/results | Reset experiment results |


## create_experiment

> <Experiment> create_experiment(project_key, environment_key, experiment_post)

Create experiment

Create an experiment

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
environment_key = 'environment_key_example' # String | The environment key
experiment_post = LaunchDarklyApi::ExperimentPost.new({name: 'name_example', description: 'description_example', maintainer_id: 'maintainer_id_example', key: 'key_example', iteration: LaunchDarklyApi::IterationInput.new({hypothesis: 'hypothesis_example', metrics: [LaunchDarklyApi::MetricInput.new({key: 'key_example', primary: false})], treatments: [LaunchDarklyApi::TreatmentInput.new({name: 'name_example', baseline: false, allocation_percent: 'allocation_percent_example', parameters: [LaunchDarklyApi::TreatmentParameterInput.new({flag_key: 'flag_key_example', variation_id: 'variation_id_example'})]})], flags: { key: LaunchDarklyApi::FlagInput.new({rule_id: 'rule_id_example', flag_config_version: 37})}})}) # ExperimentPost | 

begin
  # Create experiment
  result = api_instance.create_experiment(project_key, environment_key, experiment_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ExperimentsBetaApi->create_experiment: #{e}"
end
```

#### Using the create_experiment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Experiment>, Integer, Hash)> create_experiment_with_http_info(project_key, environment_key, experiment_post)

```ruby
begin
  # Create experiment
  data, status_code, headers = api_instance.create_experiment_with_http_info(project_key, environment_key, experiment_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Experiment>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ExperimentsBetaApi->create_experiment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **experiment_post** | [**ExperimentPost**](ExperimentPost.md) |  |  |

### Return type

[**Experiment**](Experiment.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_iteration

> <IterationRep> create_iteration(project_key, environment_key, experiment_key, iteration_input)

Create iteration

Create an experiment iteration

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
environment_key = 'environment_key_example' # String | The environment key
experiment_key = 'experiment_key_example' # String | The experiment key
iteration_input = LaunchDarklyApi::IterationInput.new({hypothesis: 'hypothesis_example', metrics: [LaunchDarklyApi::MetricInput.new({key: 'key_example', primary: false})], treatments: [LaunchDarklyApi::TreatmentInput.new({name: 'name_example', baseline: false, allocation_percent: 'allocation_percent_example', parameters: [LaunchDarklyApi::TreatmentParameterInput.new({flag_key: 'flag_key_example', variation_id: 'variation_id_example'})]})], flags: { key: LaunchDarklyApi::FlagInput.new({rule_id: 'rule_id_example', flag_config_version: 37})}}) # IterationInput | 

begin
  # Create iteration
  result = api_instance.create_iteration(project_key, environment_key, experiment_key, iteration_input)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ExperimentsBetaApi->create_iteration: #{e}"
end
```

#### Using the create_iteration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IterationRep>, Integer, Hash)> create_iteration_with_http_info(project_key, environment_key, experiment_key, iteration_input)

```ruby
begin
  # Create iteration
  data, status_code, headers = api_instance.create_iteration_with_http_info(project_key, environment_key, experiment_key, iteration_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IterationRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ExperimentsBetaApi->create_iteration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **experiment_key** | **String** | The experiment key |  |
| **iteration_input** | [**IterationInput**](IterationInput.md) |  |  |

### Return type

[**IterationRep**](IterationRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_experiment

> <Experiment> get_experiment(project_key, environment_key, experiment_key)

Get experiment

Get details about an experiment

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
environment_key = 'environment_key_example' # String | The environment key
experiment_key = 'experiment_key_example' # String | The experiment key

begin
  # Get experiment
  result = api_instance.get_experiment(project_key, environment_key, experiment_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ExperimentsBetaApi->get_experiment: #{e}"
end
```

#### Using the get_experiment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Experiment>, Integer, Hash)> get_experiment_with_http_info(project_key, environment_key, experiment_key)

```ruby
begin
  # Get experiment
  data, status_code, headers = api_instance.get_experiment_with_http_info(project_key, environment_key, experiment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Experiment>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ExperimentsBetaApi->get_experiment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **experiment_key** | **String** | The experiment key |  |

### Return type

[**Experiment**](Experiment.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_experiment_results

> <ExperimentResults> get_experiment_results(project_key, environment_key, experiment_key, metric_key)

Get experiment results

Get results from an experiment for a particular metric

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
environment_key = 'environment_key_example' # String | The environment key
experiment_key = 'experiment_key_example' # String | The experiment key
metric_key = 'metric_key_example' # String | The metric key

begin
  # Get experiment results
  result = api_instance.get_experiment_results(project_key, environment_key, experiment_key, metric_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ExperimentsBetaApi->get_experiment_results: #{e}"
end
```

#### Using the get_experiment_results_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExperimentResults>, Integer, Hash)> get_experiment_results_with_http_info(project_key, environment_key, experiment_key, metric_key)

```ruby
begin
  # Get experiment results
  data, status_code, headers = api_instance.get_experiment_results_with_http_info(project_key, environment_key, experiment_key, metric_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExperimentResults>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ExperimentsBetaApi->get_experiment_results_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **experiment_key** | **String** | The experiment key |  |
| **metric_key** | **String** | The metric key |  |

### Return type

[**ExperimentResults**](ExperimentResults.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_experiments

> <ExperimentCollectionRep> get_experiments(project_key, environment_key)

Get experiments

Get details about all experiments in an environment

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
environment_key = 'environment_key_example' # String | The environment key

begin
  # Get experiments
  result = api_instance.get_experiments(project_key, environment_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ExperimentsBetaApi->get_experiments: #{e}"
end
```

#### Using the get_experiments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExperimentCollectionRep>, Integer, Hash)> get_experiments_with_http_info(project_key, environment_key)

```ruby
begin
  # Get experiments
  data, status_code, headers = api_instance.get_experiments_with_http_info(project_key, environment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExperimentCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ExperimentsBetaApi->get_experiments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |

### Return type

[**ExperimentCollectionRep**](ExperimentCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_legacy_experiment_results

> <ExperimentResults> get_legacy_experiment_results(project_key, feature_flag_key, environment_key, metric_key, opts)

Get legacy experiment results (deprecated)

Get detailed experiment result data for legacy experiments

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
  # Get legacy experiment results (deprecated)
  result = api_instance.get_legacy_experiment_results(project_key, feature_flag_key, environment_key, metric_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ExperimentsBetaApi->get_legacy_experiment_results: #{e}"
end
```

#### Using the get_legacy_experiment_results_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExperimentResults>, Integer, Hash)> get_legacy_experiment_results_with_http_info(project_key, feature_flag_key, environment_key, metric_key, opts)

```ruby
begin
  # Get legacy experiment results (deprecated)
  data, status_code, headers = api_instance.get_legacy_experiment_results_with_http_info(project_key, feature_flag_key, environment_key, metric_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExperimentResults>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ExperimentsBetaApi->get_legacy_experiment_results_with_http_info: #{e}"
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

[**ExperimentResults**](ExperimentResults.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_experiment

> <Experiment> patch_experiment(project_key, environment_key, experiment_key, experiment_patch_input)

Patch experiment

Patch an Experiment

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
environment_key = 'environment_key_example' # String | The environment key
experiment_key = 'experiment_key_example' # String | The experiment key
experiment_patch_input = LaunchDarklyApi::ExperimentPatchInput.new # ExperimentPatchInput | 

begin
  # Patch experiment
  result = api_instance.patch_experiment(project_key, environment_key, experiment_key, experiment_patch_input)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ExperimentsBetaApi->patch_experiment: #{e}"
end
```

#### Using the patch_experiment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Experiment>, Integer, Hash)> patch_experiment_with_http_info(project_key, environment_key, experiment_key, experiment_patch_input)

```ruby
begin
  # Patch experiment
  data, status_code, headers = api_instance.patch_experiment_with_http_info(project_key, environment_key, experiment_key, experiment_patch_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Experiment>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ExperimentsBetaApi->patch_experiment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **experiment_key** | **String** | The experiment key |  |
| **experiment_patch_input** | [**ExperimentPatchInput**](ExperimentPatchInput.md) |  |  |

### Return type

[**Experiment**](Experiment.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
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

