# LaunchDarklyApi::AIConfigsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_ai_config**](AIConfigsBetaApi.md#delete_ai_config) | **DELETE** /api/v2/projects/{projectKey}/ai-configs/{configKey} | Delete AI Config |
| [**delete_ai_config_variation**](AIConfigsBetaApi.md#delete_ai_config_variation) | **DELETE** /api/v2/projects/{projectKey}/ai-configs/{configKey}/variations/{variationKey} | Delete AI Config variation |
| [**delete_model_config**](AIConfigsBetaApi.md#delete_model_config) | **DELETE** /api/v2/projects/{projectKey}/ai-configs/model-configs/{modelConfigKey} | Delete an AI model config |
| [**get_ai_config**](AIConfigsBetaApi.md#get_ai_config) | **GET** /api/v2/projects/{projectKey}/ai-configs/{configKey} | Get AI Config |
| [**get_ai_config_metrics**](AIConfigsBetaApi.md#get_ai_config_metrics) | **GET** /api/v2/projects/{projectKey}/ai-configs/{configKey}/metrics | Get AI Config metrics |
| [**get_ai_config_metrics_by_variation**](AIConfigsBetaApi.md#get_ai_config_metrics_by_variation) | **GET** /api/v2/projects/{projectKey}/ai-configs/{configKey}/metrics-by-variation | Get AI Config metrics by variation |
| [**get_ai_config_variation**](AIConfigsBetaApi.md#get_ai_config_variation) | **GET** /api/v2/projects/{projectKey}/ai-configs/{configKey}/variations/{variationKey} | Get AI Config variation |
| [**get_ai_configs**](AIConfigsBetaApi.md#get_ai_configs) | **GET** /api/v2/projects/{projectKey}/ai-configs | List AI Configs |
| [**get_model_config**](AIConfigsBetaApi.md#get_model_config) | **GET** /api/v2/projects/{projectKey}/ai-configs/model-configs/{modelConfigKey} | Get AI model config |
| [**list_model_configs**](AIConfigsBetaApi.md#list_model_configs) | **GET** /api/v2/projects/{projectKey}/ai-configs/model-configs | List AI model configs |
| [**patch_ai_config**](AIConfigsBetaApi.md#patch_ai_config) | **PATCH** /api/v2/projects/{projectKey}/ai-configs/{configKey} | Update AI Config |
| [**patch_ai_config_variation**](AIConfigsBetaApi.md#patch_ai_config_variation) | **PATCH** /api/v2/projects/{projectKey}/ai-configs/{configKey}/variations/{variationKey} | Update AI Config variation |
| [**post_ai_config**](AIConfigsBetaApi.md#post_ai_config) | **POST** /api/v2/projects/{projectKey}/ai-configs | Create new AI Config |
| [**post_ai_config_variation**](AIConfigsBetaApi.md#post_ai_config_variation) | **POST** /api/v2/projects/{projectKey}/ai-configs/{configKey}/variations | Create AI Config variation |
| [**post_model_config**](AIConfigsBetaApi.md#post_model_config) | **POST** /api/v2/projects/{projectKey}/ai-configs/model-configs | Create an AI model config |


## delete_ai_config

> delete_ai_config(ld_api_version, project_key, config_key)

Delete AI Config

Delete an existing AI Config.

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

api_instance = LaunchDarklyApi::AIConfigsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
config_key = 'config_key_example' # String | 

begin
  # Delete AI Config
  api_instance.delete_ai_config(ld_api_version, project_key, config_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->delete_ai_config: #{e}"
end
```

#### Using the delete_ai_config_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_ai_config_with_http_info(ld_api_version, project_key, config_key)

```ruby
begin
  # Delete AI Config
  data, status_code, headers = api_instance.delete_ai_config_with_http_info(ld_api_version, project_key, config_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->delete_ai_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **config_key** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_ai_config_variation

> delete_ai_config_variation(ld_api_version, project_key, config_key, variation_key)

Delete AI Config variation

Delete a specific variation of an AI Config by config key and variation key.

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

api_instance = LaunchDarklyApi::AIConfigsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 
variation_key = 'variation_key_example' # String | 

begin
  # Delete AI Config variation
  api_instance.delete_ai_config_variation(ld_api_version, project_key, config_key, variation_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->delete_ai_config_variation: #{e}"
end
```

#### Using the delete_ai_config_variation_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_ai_config_variation_with_http_info(ld_api_version, project_key, config_key, variation_key)

```ruby
begin
  # Delete AI Config variation
  data, status_code, headers = api_instance.delete_ai_config_variation_with_http_info(ld_api_version, project_key, config_key, variation_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->delete_ai_config_variation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **config_key** | **String** |  |  |
| **variation_key** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_model_config

> delete_model_config(ld_api_version, project_key, model_config_key)

Delete an AI model config

Delete an AI model config.

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

api_instance = LaunchDarklyApi::AIConfigsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
model_config_key = 'model_config_key_example' # String | 

begin
  # Delete an AI model config
  api_instance.delete_model_config(ld_api_version, project_key, model_config_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->delete_model_config: #{e}"
end
```

#### Using the delete_model_config_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_model_config_with_http_info(ld_api_version, project_key, model_config_key)

```ruby
begin
  # Delete an AI model config
  data, status_code, headers = api_instance.delete_model_config_with_http_info(ld_api_version, project_key, model_config_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->delete_model_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **model_config_key** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ai_config

> <AIConfig> get_ai_config(ld_api_version, project_key, config_key)

Get AI Config

Retrieve a specific AI Config by its key.

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

api_instance = LaunchDarklyApi::AIConfigsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 

begin
  # Get AI Config
  result = api_instance.get_ai_config(ld_api_version, project_key, config_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->get_ai_config: #{e}"
end
```

#### Using the get_ai_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AIConfig>, Integer, Hash)> get_ai_config_with_http_info(ld_api_version, project_key, config_key)

```ruby
begin
  # Get AI Config
  data, status_code, headers = api_instance.get_ai_config_with_http_info(ld_api_version, project_key, config_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AIConfig>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->get_ai_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **config_key** | **String** |  |  |

### Return type

[**AIConfig**](AIConfig.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ai_config_metrics

> <Metrics> get_ai_config_metrics(ld_api_version, project_key, config_key, from, to, env)

Get AI Config metrics

Retrieve usage metrics for an AI Config by config key.

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

api_instance = LaunchDarklyApi::AIConfigsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 
from = 56 # Integer | The starting time, as milliseconds since epoch (inclusive).
to = 56 # Integer | The ending time, as milliseconds since epoch (exclusive). May not be more than 100 days after `from`.
env = 'env_example' # String | An environment key. Only metrics from this environment will be included.

begin
  # Get AI Config metrics
  result = api_instance.get_ai_config_metrics(ld_api_version, project_key, config_key, from, to, env)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->get_ai_config_metrics: #{e}"
end
```

#### Using the get_ai_config_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Metrics>, Integer, Hash)> get_ai_config_metrics_with_http_info(ld_api_version, project_key, config_key, from, to, env)

```ruby
begin
  # Get AI Config metrics
  data, status_code, headers = api_instance.get_ai_config_metrics_with_http_info(ld_api_version, project_key, config_key, from, to, env)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Metrics>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->get_ai_config_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **config_key** | **String** |  |  |
| **from** | **Integer** | The starting time, as milliseconds since epoch (inclusive). |  |
| **to** | **Integer** | The ending time, as milliseconds since epoch (exclusive). May not be more than 100 days after &#x60;from&#x60;. |  |
| **env** | **String** | An environment key. Only metrics from this environment will be included. |  |

### Return type

[**Metrics**](Metrics.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ai_config_metrics_by_variation

> <Array<MetricByVariation>> get_ai_config_metrics_by_variation(ld_api_version, project_key, config_key, from, to, env)

Get AI Config metrics by variation

Retrieve usage metrics for an AI Config by config key, with results split by variation.

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

api_instance = LaunchDarklyApi::AIConfigsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 
from = 56 # Integer | The starting time, as milliseconds since epoch (inclusive).
to = 56 # Integer | The ending time, as milliseconds since epoch (exclusive). May not be more than 100 days after `from`.
env = 'env_example' # String | An environment key. Only metrics from this environment will be included.

begin
  # Get AI Config metrics by variation
  result = api_instance.get_ai_config_metrics_by_variation(ld_api_version, project_key, config_key, from, to, env)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->get_ai_config_metrics_by_variation: #{e}"
end
```

#### Using the get_ai_config_metrics_by_variation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MetricByVariation>>, Integer, Hash)> get_ai_config_metrics_by_variation_with_http_info(ld_api_version, project_key, config_key, from, to, env)

```ruby
begin
  # Get AI Config metrics by variation
  data, status_code, headers = api_instance.get_ai_config_metrics_by_variation_with_http_info(ld_api_version, project_key, config_key, from, to, env)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MetricByVariation>>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->get_ai_config_metrics_by_variation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **config_key** | **String** |  |  |
| **from** | **Integer** | The starting time, as milliseconds since epoch (inclusive). |  |
| **to** | **Integer** | The ending time, as milliseconds since epoch (exclusive). May not be more than 100 days after &#x60;from&#x60;. |  |
| **env** | **String** | An environment key. Only metrics from this environment will be included. |  |

### Return type

[**Array&lt;MetricByVariation&gt;**](MetricByVariation.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ai_config_variation

> <AIConfigVariationsResponse> get_ai_config_variation(ld_api_version, project_key, config_key, variation_key)

Get AI Config variation

Get an AI Config variation by key. The response includes all variation versions for the given variation key.

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

api_instance = LaunchDarklyApi::AIConfigsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
config_key = 'default' # String | 
variation_key = 'default' # String | 

begin
  # Get AI Config variation
  result = api_instance.get_ai_config_variation(ld_api_version, project_key, config_key, variation_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->get_ai_config_variation: #{e}"
end
```

#### Using the get_ai_config_variation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AIConfigVariationsResponse>, Integer, Hash)> get_ai_config_variation_with_http_info(ld_api_version, project_key, config_key, variation_key)

```ruby
begin
  # Get AI Config variation
  data, status_code, headers = api_instance.get_ai_config_variation_with_http_info(ld_api_version, project_key, config_key, variation_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AIConfigVariationsResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->get_ai_config_variation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **config_key** | **String** |  |  |
| **variation_key** | **String** |  |  |

### Return type

[**AIConfigVariationsResponse**](AIConfigVariationsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ai_configs

> <AIConfigs> get_ai_configs(ld_api_version, project_key, opts)

List AI Configs

Get a list of all AI Configs in the given project.

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

api_instance = LaunchDarklyApi::AIConfigsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
opts = {
  sort: 'sort_example', # String | A sort to apply to the list of AI Configs.
  limit: 56, # Integer | The number of AI Configs to return.
  offset: 56, # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
  filter: 'filter_example' # String | A filter to apply to the list of AI Configs.
}

begin
  # List AI Configs
  result = api_instance.get_ai_configs(ld_api_version, project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->get_ai_configs: #{e}"
end
```

#### Using the get_ai_configs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AIConfigs>, Integer, Hash)> get_ai_configs_with_http_info(ld_api_version, project_key, opts)

```ruby
begin
  # List AI Configs
  data, status_code, headers = api_instance.get_ai_configs_with_http_info(ld_api_version, project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AIConfigs>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->get_ai_configs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **sort** | **String** | A sort to apply to the list of AI Configs. | [optional] |
| **limit** | **Integer** | The number of AI Configs to return. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |
| **filter** | **String** | A filter to apply to the list of AI Configs. | [optional] |

### Return type

[**AIConfigs**](AIConfigs.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_model_config

> <ModelConfig> get_model_config(ld_api_version, project_key, model_config_key)

Get AI model config

Get an AI model config by key.

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

api_instance = LaunchDarklyApi::AIConfigsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
model_config_key = 'default' # String | 

begin
  # Get AI model config
  result = api_instance.get_model_config(ld_api_version, project_key, model_config_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->get_model_config: #{e}"
end
```

#### Using the get_model_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelConfig>, Integer, Hash)> get_model_config_with_http_info(ld_api_version, project_key, model_config_key)

```ruby
begin
  # Get AI model config
  data, status_code, headers = api_instance.get_model_config_with_http_info(ld_api_version, project_key, model_config_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelConfig>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->get_model_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **model_config_key** | **String** |  |  |

### Return type

[**ModelConfig**](ModelConfig.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_model_configs

> <Array<ModelConfig>> list_model_configs(ld_api_version, project_key)

List AI model configs

Get all AI model configs for a project.

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

api_instance = LaunchDarklyApi::AIConfigsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 

begin
  # List AI model configs
  result = api_instance.list_model_configs(ld_api_version, project_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->list_model_configs: #{e}"
end
```

#### Using the list_model_configs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ModelConfig>>, Integer, Hash)> list_model_configs_with_http_info(ld_api_version, project_key)

```ruby
begin
  # List AI model configs
  data, status_code, headers = api_instance.list_model_configs_with_http_info(ld_api_version, project_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ModelConfig>>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->list_model_configs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |

### Return type

[**Array&lt;ModelConfig&gt;**](ModelConfig.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_ai_config

> <AIConfig> patch_ai_config(ld_api_version, project_key, config_key, opts)

Update AI Config

Edit an existing AI Config.  The request body must be a JSON object of the fields to update. The values you include replace the existing values for the fields.  Here's an example:   ```     {       \"description\": \"Example updated description\",       \"tags\": [\"new-tag\"]     }   ``` 

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

api_instance = LaunchDarklyApi::AIConfigsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 
opts = {
  ai_config_patch: LaunchDarklyApi::AIConfigPatch.new # AIConfigPatch | AI Config object to update
}

begin
  # Update AI Config
  result = api_instance.patch_ai_config(ld_api_version, project_key, config_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->patch_ai_config: #{e}"
end
```

#### Using the patch_ai_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AIConfig>, Integer, Hash)> patch_ai_config_with_http_info(ld_api_version, project_key, config_key, opts)

```ruby
begin
  # Update AI Config
  data, status_code, headers = api_instance.patch_ai_config_with_http_info(ld_api_version, project_key, config_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AIConfig>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->patch_ai_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **config_key** | **String** |  |  |
| **ai_config_patch** | [**AIConfigPatch**](AIConfigPatch.md) | AI Config object to update | [optional] |

### Return type

[**AIConfig**](AIConfig.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_ai_config_variation

> <AIConfigVariation> patch_ai_config_variation(ld_api_version, project_key, config_key, variation_key, opts)

Update AI Config variation

Edit an existing variation of an AI Config. This creates a new version of the variation.  The request body must be a JSON object of the fields to update. The values you include replace the existing values for the fields.  Here's an example: ```   {     \"messages\": [       {         \"role\": \"system\",         \"content\": \"The new message\"       }     ]   } ``` 

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

api_instance = LaunchDarklyApi::AIConfigsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 
variation_key = 'variation_key_example' # String | 
opts = {
  ai_config_variation_patch: LaunchDarklyApi::AIConfigVariationPatch.new # AIConfigVariationPatch | AI Config variation object to update
}

begin
  # Update AI Config variation
  result = api_instance.patch_ai_config_variation(ld_api_version, project_key, config_key, variation_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->patch_ai_config_variation: #{e}"
end
```

#### Using the patch_ai_config_variation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AIConfigVariation>, Integer, Hash)> patch_ai_config_variation_with_http_info(ld_api_version, project_key, config_key, variation_key, opts)

```ruby
begin
  # Update AI Config variation
  data, status_code, headers = api_instance.patch_ai_config_variation_with_http_info(ld_api_version, project_key, config_key, variation_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AIConfigVariation>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->patch_ai_config_variation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **config_key** | **String** |  |  |
| **variation_key** | **String** |  |  |
| **ai_config_variation_patch** | [**AIConfigVariationPatch**](AIConfigVariationPatch.md) | AI Config variation object to update | [optional] |

### Return type

[**AIConfigVariation**](AIConfigVariation.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ai_config

> <AIConfig> post_ai_config(ld_api_version, project_key, ai_config_post)

Create new AI Config

Create a new AI Config within the given project.

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

api_instance = LaunchDarklyApi::AIConfigsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
ai_config_post = LaunchDarklyApi::AIConfigPost.new({key: 'key_example', name: 'name_example'}) # AIConfigPost | AI Config object to create

begin
  # Create new AI Config
  result = api_instance.post_ai_config(ld_api_version, project_key, ai_config_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->post_ai_config: #{e}"
end
```

#### Using the post_ai_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AIConfig>, Integer, Hash)> post_ai_config_with_http_info(ld_api_version, project_key, ai_config_post)

```ruby
begin
  # Create new AI Config
  data, status_code, headers = api_instance.post_ai_config_with_http_info(ld_api_version, project_key, ai_config_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AIConfig>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->post_ai_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **ai_config_post** | [**AIConfigPost**](AIConfigPost.md) | AI Config object to create |  |

### Return type

[**AIConfig**](AIConfig.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ai_config_variation

> <AIConfigVariation> post_ai_config_variation(ld_api_version, project_key, config_key, ai_config_variation_post)

Create AI Config variation

Create a new variation for a given AI Config.  The <code>model</code> in the request body requires a <code>modelName</code> and <code>parameters</code>, for example:  ```   \"model\": {     \"modelName\": \"claude-3-opus-20240229\",     \"parameters\": {       \"max_tokens\": 1024     }   } ``` 

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

api_instance = LaunchDarklyApi::AIConfigsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 
ai_config_variation_post = LaunchDarklyApi::AIConfigVariationPost.new({key: 'key_example', messages: [LaunchDarklyApi::Message.new({content: 'content_example', role: 'role_example'})], model: 3.56, name: 'name_example'}) # AIConfigVariationPost | AI Config variation object to create

begin
  # Create AI Config variation
  result = api_instance.post_ai_config_variation(ld_api_version, project_key, config_key, ai_config_variation_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->post_ai_config_variation: #{e}"
end
```

#### Using the post_ai_config_variation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AIConfigVariation>, Integer, Hash)> post_ai_config_variation_with_http_info(ld_api_version, project_key, config_key, ai_config_variation_post)

```ruby
begin
  # Create AI Config variation
  data, status_code, headers = api_instance.post_ai_config_variation_with_http_info(ld_api_version, project_key, config_key, ai_config_variation_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AIConfigVariation>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->post_ai_config_variation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **config_key** | **String** |  |  |
| **ai_config_variation_post** | [**AIConfigVariationPost**](AIConfigVariationPost.md) | AI Config variation object to create |  |

### Return type

[**AIConfigVariation**](AIConfigVariation.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_model_config

> <ModelConfig> post_model_config(ld_api_version, project_key, model_config_post)

Create an AI model config

Create an AI model config. You can use this in any variation for any AI Config in your project.

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

api_instance = LaunchDarklyApi::AIConfigsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
model_config_post = LaunchDarklyApi::ModelConfigPost.new({name: 'name_example', key: 'key_example', id: 'id_example'}) # ModelConfigPost | AI model config object to create

begin
  # Create an AI model config
  result = api_instance.post_model_config(ld_api_version, project_key, model_config_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->post_model_config: #{e}"
end
```

#### Using the post_model_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelConfig>, Integer, Hash)> post_model_config_with_http_info(ld_api_version, project_key, model_config_post)

```ruby
begin
  # Create an AI model config
  data, status_code, headers = api_instance.post_model_config_with_http_info(ld_api_version, project_key, model_config_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelConfig>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsBetaApi->post_model_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **model_config_post** | [**ModelConfigPost**](ModelConfigPost.md) | AI model config object to create |  |

### Return type

[**ModelConfig**](ModelConfig.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

