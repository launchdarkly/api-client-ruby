# LaunchDarklyApi::AIConfigsApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_agent_graph**](AIConfigsApi.md#delete_agent_graph) | **DELETE** /api/v2/projects/{projectKey}/agent-graphs/{graphKey} | Delete agent graph |
| [**delete_ai_config**](AIConfigsApi.md#delete_ai_config) | **DELETE** /api/v2/projects/{projectKey}/ai-configs/{configKey} | Delete AI Config |
| [**delete_ai_config_variation**](AIConfigsApi.md#delete_ai_config_variation) | **DELETE** /api/v2/projects/{projectKey}/ai-configs/{configKey}/variations/{variationKey} | Delete AI Config variation |
| [**delete_ai_tool**](AIConfigsApi.md#delete_ai_tool) | **DELETE** /api/v2/projects/{projectKey}/ai-tools/{toolKey} | Delete AI tool |
| [**delete_model_config**](AIConfigsApi.md#delete_model_config) | **DELETE** /api/v2/projects/{projectKey}/ai-configs/model-configs/{modelConfigKey} | Delete an AI model config |
| [**delete_restricted_models**](AIConfigsApi.md#delete_restricted_models) | **DELETE** /api/v2/projects/{projectKey}/ai-configs/model-configs/restricted | Remove AI models from the restricted list |
| [**get_agent_graph**](AIConfigsApi.md#get_agent_graph) | **GET** /api/v2/projects/{projectKey}/agent-graphs/{graphKey} | Get agent graph |
| [**get_ai_config**](AIConfigsApi.md#get_ai_config) | **GET** /api/v2/projects/{projectKey}/ai-configs/{configKey} | Get AI Config |
| [**get_ai_config_metrics**](AIConfigsApi.md#get_ai_config_metrics) | **GET** /api/v2/projects/{projectKey}/ai-configs/{configKey}/metrics | Get AI Config metrics |
| [**get_ai_config_metrics_by_variation**](AIConfigsApi.md#get_ai_config_metrics_by_variation) | **GET** /api/v2/projects/{projectKey}/ai-configs/{configKey}/metrics-by-variation | Get AI Config metrics by variation |
| [**get_ai_config_targeting**](AIConfigsApi.md#get_ai_config_targeting) | **GET** /api/v2/projects/{projectKey}/ai-configs/{configKey}/targeting | Show an AI Config&#39;s targeting |
| [**get_ai_config_variation**](AIConfigsApi.md#get_ai_config_variation) | **GET** /api/v2/projects/{projectKey}/ai-configs/{configKey}/variations/{variationKey} | Get AI Config variation |
| [**get_ai_configs**](AIConfigsApi.md#get_ai_configs) | **GET** /api/v2/projects/{projectKey}/ai-configs | List AI Configs |
| [**get_ai_tool**](AIConfigsApi.md#get_ai_tool) | **GET** /api/v2/projects/{projectKey}/ai-tools/{toolKey} | Get AI tool |
| [**get_model_config**](AIConfigsApi.md#get_model_config) | **GET** /api/v2/projects/{projectKey}/ai-configs/model-configs/{modelConfigKey} | Get AI model config |
| [**list_agent_graphs**](AIConfigsApi.md#list_agent_graphs) | **GET** /api/v2/projects/{projectKey}/agent-graphs | List agent graphs |
| [**list_ai_tool_versions**](AIConfigsApi.md#list_ai_tool_versions) | **GET** /api/v2/projects/{projectKey}/ai-tools/{toolKey}/versions | List AI tool versions |
| [**list_ai_tools**](AIConfigsApi.md#list_ai_tools) | **GET** /api/v2/projects/{projectKey}/ai-tools | List AI tools |
| [**list_model_configs**](AIConfigsApi.md#list_model_configs) | **GET** /api/v2/projects/{projectKey}/ai-configs/model-configs | List AI model configs |
| [**patch_agent_graph**](AIConfigsApi.md#patch_agent_graph) | **PATCH** /api/v2/projects/{projectKey}/agent-graphs/{graphKey} | Update agent graph |
| [**patch_ai_config**](AIConfigsApi.md#patch_ai_config) | **PATCH** /api/v2/projects/{projectKey}/ai-configs/{configKey} | Update AI Config |
| [**patch_ai_config_targeting**](AIConfigsApi.md#patch_ai_config_targeting) | **PATCH** /api/v2/projects/{projectKey}/ai-configs/{configKey}/targeting | Update AI Config targeting |
| [**patch_ai_config_variation**](AIConfigsApi.md#patch_ai_config_variation) | **PATCH** /api/v2/projects/{projectKey}/ai-configs/{configKey}/variations/{variationKey} | Update AI Config variation |
| [**patch_ai_tool**](AIConfigsApi.md#patch_ai_tool) | **PATCH** /api/v2/projects/{projectKey}/ai-tools/{toolKey} | Update AI tool |
| [**post_agent_graph**](AIConfigsApi.md#post_agent_graph) | **POST** /api/v2/projects/{projectKey}/agent-graphs | Create new agent graph |
| [**post_ai_config**](AIConfigsApi.md#post_ai_config) | **POST** /api/v2/projects/{projectKey}/ai-configs | Create new AI Config |
| [**post_ai_config_variation**](AIConfigsApi.md#post_ai_config_variation) | **POST** /api/v2/projects/{projectKey}/ai-configs/{configKey}/variations | Create AI Config variation |
| [**post_ai_tool**](AIConfigsApi.md#post_ai_tool) | **POST** /api/v2/projects/{projectKey}/ai-tools | Create an AI tool |
| [**post_model_config**](AIConfigsApi.md#post_model_config) | **POST** /api/v2/projects/{projectKey}/ai-configs/model-configs | Create an AI model config |
| [**post_restricted_models**](AIConfigsApi.md#post_restricted_models) | **POST** /api/v2/projects/{projectKey}/ai-configs/model-configs/restricted | Add AI models to the restricted list |


## delete_agent_graph

> delete_agent_graph(ld_api_version, project_key, graph_key)

Delete agent graph

Delete an existing agent graph and all of its edges.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
graph_key = 'graph_key_example' # String | 

begin
  # Delete agent graph
  api_instance.delete_agent_graph(ld_api_version, project_key, graph_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->delete_agent_graph: #{e}"
end
```

#### Using the delete_agent_graph_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_agent_graph_with_http_info(ld_api_version, project_key, graph_key)

```ruby
begin
  # Delete agent graph
  data, status_code, headers = api_instance.delete_agent_graph_with_http_info(ld_api_version, project_key, graph_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->delete_agent_graph_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **graph_key** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_ai_config

> delete_ai_config(project_key, config_key)

Delete AI Config

Delete an existing AI Config.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'default' # String | 
config_key = 'config_key_example' # String | 

begin
  # Delete AI Config
  api_instance.delete_ai_config(project_key, config_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->delete_ai_config: #{e}"
end
```

#### Using the delete_ai_config_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_ai_config_with_http_info(project_key, config_key)

```ruby
begin
  # Delete AI Config
  data, status_code, headers = api_instance.delete_ai_config_with_http_info(project_key, config_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->delete_ai_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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

> delete_ai_config_variation(project_key, config_key, variation_key)

Delete AI Config variation

Delete a specific variation of an AI Config by config key and variation key.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 
variation_key = 'variation_key_example' # String | 

begin
  # Delete AI Config variation
  api_instance.delete_ai_config_variation(project_key, config_key, variation_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->delete_ai_config_variation: #{e}"
end
```

#### Using the delete_ai_config_variation_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_ai_config_variation_with_http_info(project_key, config_key, variation_key)

```ruby
begin
  # Delete AI Config variation
  data, status_code, headers = api_instance.delete_ai_config_variation_with_http_info(project_key, config_key, variation_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->delete_ai_config_variation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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


## delete_ai_tool

> delete_ai_tool(project_key, tool_key)

Delete AI tool

Delete an existing AI tool.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'project_key_example' # String | 
tool_key = 'tool_key_example' # String | 

begin
  # Delete AI tool
  api_instance.delete_ai_tool(project_key, tool_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->delete_ai_tool: #{e}"
end
```

#### Using the delete_ai_tool_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_ai_tool_with_http_info(project_key, tool_key)

```ruby
begin
  # Delete AI tool
  data, status_code, headers = api_instance.delete_ai_tool_with_http_info(project_key, tool_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->delete_ai_tool_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **tool_key** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_model_config

> delete_model_config(project_key, model_config_key)

Delete an AI model config

Delete an AI model config.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'default' # String | 
model_config_key = 'model_config_key_example' # String | 

begin
  # Delete an AI model config
  api_instance.delete_model_config(project_key, model_config_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->delete_model_config: #{e}"
end
```

#### Using the delete_model_config_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_model_config_with_http_info(project_key, model_config_key)

```ruby
begin
  # Delete an AI model config
  data, status_code, headers = api_instance.delete_model_config_with_http_info(project_key, model_config_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->delete_model_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **model_config_key** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_restricted_models

> delete_restricted_models(project_key, restricted_models_request)

Remove AI models from the restricted list

Remove AI models, by key, from the restricted list.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'default' # String | 
restricted_models_request = LaunchDarklyApi::RestrictedModelsRequest.new({keys: ['keys_example']}) # RestrictedModelsRequest | List of AI model keys to remove from the restricted list

begin
  # Remove AI models from the restricted list
  api_instance.delete_restricted_models(project_key, restricted_models_request)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->delete_restricted_models: #{e}"
end
```

#### Using the delete_restricted_models_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_restricted_models_with_http_info(project_key, restricted_models_request)

```ruby
begin
  # Remove AI models from the restricted list
  data, status_code, headers = api_instance.delete_restricted_models_with_http_info(project_key, restricted_models_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->delete_restricted_models_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **restricted_models_request** | [**RestrictedModelsRequest**](RestrictedModelsRequest.md) | List of AI model keys to remove from the restricted list |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_agent_graph

> <AgentGraph> get_agent_graph(ld_api_version, project_key, graph_key)

Get agent graph

Retrieve a specific agent graph by its key, including its edges.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
graph_key = 'graph_key_example' # String | 

begin
  # Get agent graph
  result = api_instance.get_agent_graph(ld_api_version, project_key, graph_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->get_agent_graph: #{e}"
end
```

#### Using the get_agent_graph_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentGraph>, Integer, Hash)> get_agent_graph_with_http_info(ld_api_version, project_key, graph_key)

```ruby
begin
  # Get agent graph
  data, status_code, headers = api_instance.get_agent_graph_with_http_info(ld_api_version, project_key, graph_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentGraph>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->get_agent_graph_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **graph_key** | **String** |  |  |

### Return type

[**AgentGraph**](AgentGraph.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ai_config

> <AIConfig> get_ai_config(project_key, config_key)

Get AI Config

Retrieve a specific AI Config by its key.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 

begin
  # Get AI Config
  result = api_instance.get_ai_config(project_key, config_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->get_ai_config: #{e}"
end
```

#### Using the get_ai_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AIConfig>, Integer, Hash)> get_ai_config_with_http_info(project_key, config_key)

```ruby
begin
  # Get AI Config
  data, status_code, headers = api_instance.get_ai_config_with_http_info(project_key, config_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AIConfig>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->get_ai_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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

> <Metrics> get_ai_config_metrics(project_key, config_key, from, to, env)

Get AI Config metrics

Retrieve usage metrics for an AI Config by config key.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 
from = 56 # Integer | The starting time, as milliseconds since epoch (inclusive).
to = 56 # Integer | The ending time, as milliseconds since epoch (exclusive). May not be more than 100 days after `from`.
env = 'env_example' # String | An environment key. Only metrics from this environment will be included.

begin
  # Get AI Config metrics
  result = api_instance.get_ai_config_metrics(project_key, config_key, from, to, env)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->get_ai_config_metrics: #{e}"
end
```

#### Using the get_ai_config_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Metrics>, Integer, Hash)> get_ai_config_metrics_with_http_info(project_key, config_key, from, to, env)

```ruby
begin
  # Get AI Config metrics
  data, status_code, headers = api_instance.get_ai_config_metrics_with_http_info(project_key, config_key, from, to, env)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Metrics>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->get_ai_config_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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

> <Array<MetricByVariation>> get_ai_config_metrics_by_variation(project_key, config_key, from, to, env)

Get AI Config metrics by variation

Retrieve usage metrics for an AI Config by config key, with results split by variation.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 
from = 56 # Integer | The starting time, as milliseconds since epoch (inclusive).
to = 56 # Integer | The ending time, as milliseconds since epoch (exclusive). May not be more than 100 days after `from`.
env = 'env_example' # String | An environment key. Only metrics from this environment will be included.

begin
  # Get AI Config metrics by variation
  result = api_instance.get_ai_config_metrics_by_variation(project_key, config_key, from, to, env)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->get_ai_config_metrics_by_variation: #{e}"
end
```

#### Using the get_ai_config_metrics_by_variation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MetricByVariation>>, Integer, Hash)> get_ai_config_metrics_by_variation_with_http_info(project_key, config_key, from, to, env)

```ruby
begin
  # Get AI Config metrics by variation
  data, status_code, headers = api_instance.get_ai_config_metrics_by_variation_with_http_info(project_key, config_key, from, to, env)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MetricByVariation>>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->get_ai_config_metrics_by_variation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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


## get_ai_config_targeting

> <AIConfigTargeting> get_ai_config_targeting(project_key, config_key)

Show an AI Config's targeting

Retrieves a specific AI Config's targeting by its key

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 

begin
  # Show an AI Config's targeting
  result = api_instance.get_ai_config_targeting(project_key, config_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->get_ai_config_targeting: #{e}"
end
```

#### Using the get_ai_config_targeting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AIConfigTargeting>, Integer, Hash)> get_ai_config_targeting_with_http_info(project_key, config_key)

```ruby
begin
  # Show an AI Config's targeting
  data, status_code, headers = api_instance.get_ai_config_targeting_with_http_info(project_key, config_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AIConfigTargeting>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->get_ai_config_targeting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **config_key** | **String** |  |  |

### Return type

[**AIConfigTargeting**](AIConfigTargeting.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ai_config_variation

> <AIConfigVariationsResponse> get_ai_config_variation(project_key, config_key, variation_key)

Get AI Config variation

Get an AI Config variation by key. The response includes all variation versions for the given variation key.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'default' # String | 
config_key = 'default' # String | 
variation_key = 'default' # String | 

begin
  # Get AI Config variation
  result = api_instance.get_ai_config_variation(project_key, config_key, variation_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->get_ai_config_variation: #{e}"
end
```

#### Using the get_ai_config_variation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AIConfigVariationsResponse>, Integer, Hash)> get_ai_config_variation_with_http_info(project_key, config_key, variation_key)

```ruby
begin
  # Get AI Config variation
  data, status_code, headers = api_instance.get_ai_config_variation_with_http_info(project_key, config_key, variation_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AIConfigVariationsResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->get_ai_config_variation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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

> <AIConfigs> get_ai_configs(project_key, opts)

List AI Configs

Get a list of all AI Configs in the given project.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'default' # String | 
opts = {
  sort: 'sort_example', # String | A sort to apply to the list of AI Configs.
  limit: 56, # Integer | The number of AI Configs to return.
  offset: 56, # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
  filter: 'filter_example' # String | A filter to apply to the list of AI Configs.
}

begin
  # List AI Configs
  result = api_instance.get_ai_configs(project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->get_ai_configs: #{e}"
end
```

#### Using the get_ai_configs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AIConfigs>, Integer, Hash)> get_ai_configs_with_http_info(project_key, opts)

```ruby
begin
  # List AI Configs
  data, status_code, headers = api_instance.get_ai_configs_with_http_info(project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AIConfigs>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->get_ai_configs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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


## get_ai_tool

> <AITool> get_ai_tool(project_key, tool_key)

Get AI tool

Retrieve a specific AI tool by its key.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'project_key_example' # String | 
tool_key = 'tool_key_example' # String | 

begin
  # Get AI tool
  result = api_instance.get_ai_tool(project_key, tool_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->get_ai_tool: #{e}"
end
```

#### Using the get_ai_tool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AITool>, Integer, Hash)> get_ai_tool_with_http_info(project_key, tool_key)

```ruby
begin
  # Get AI tool
  data, status_code, headers = api_instance.get_ai_tool_with_http_info(project_key, tool_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AITool>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->get_ai_tool_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **tool_key** | **String** |  |  |

### Return type

[**AITool**](AITool.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_model_config

> <ModelConfig> get_model_config(project_key, model_config_key)

Get AI model config

Get an AI model config by key.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'default' # String | 
model_config_key = 'default' # String | 

begin
  # Get AI model config
  result = api_instance.get_model_config(project_key, model_config_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->get_model_config: #{e}"
end
```

#### Using the get_model_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelConfig>, Integer, Hash)> get_model_config_with_http_info(project_key, model_config_key)

```ruby
begin
  # Get AI model config
  data, status_code, headers = api_instance.get_model_config_with_http_info(project_key, model_config_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelConfig>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->get_model_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **model_config_key** | **String** |  |  |

### Return type

[**ModelConfig**](ModelConfig.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_agent_graphs

> <AgentGraphs> list_agent_graphs(ld_api_version, project_key, opts)

List agent graphs

Get a list of all agent graphs in the given project. Returns metadata only, without edge data.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
opts = {
  limit: 56, # Integer | The number of AI Configs to return.
  offset: 56 # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
}

begin
  # List agent graphs
  result = api_instance.list_agent_graphs(ld_api_version, project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->list_agent_graphs: #{e}"
end
```

#### Using the list_agent_graphs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentGraphs>, Integer, Hash)> list_agent_graphs_with_http_info(ld_api_version, project_key, opts)

```ruby
begin
  # List agent graphs
  data, status_code, headers = api_instance.list_agent_graphs_with_http_info(ld_api_version, project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentGraphs>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->list_agent_graphs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **limit** | **Integer** | The number of AI Configs to return. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |

### Return type

[**AgentGraphs**](AgentGraphs.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ai_tool_versions

> <AITools> list_ai_tool_versions(project_key, tool_key, opts)

List AI tool versions

Get a list of all versions of an AI tool in the given project.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'project_key_example' # String | 
tool_key = 'tool_key_example' # String | 
opts = {
  sort: 'sort_example', # String | A sort to apply to the list of AI Configs.
  limit: 56, # Integer | The number of AI Configs to return.
  offset: 56 # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
}

begin
  # List AI tool versions
  result = api_instance.list_ai_tool_versions(project_key, tool_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->list_ai_tool_versions: #{e}"
end
```

#### Using the list_ai_tool_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AITools>, Integer, Hash)> list_ai_tool_versions_with_http_info(project_key, tool_key, opts)

```ruby
begin
  # List AI tool versions
  data, status_code, headers = api_instance.list_ai_tool_versions_with_http_info(project_key, tool_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AITools>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->list_ai_tool_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **tool_key** | **String** |  |  |
| **sort** | **String** | A sort to apply to the list of AI Configs. | [optional] |
| **limit** | **Integer** | The number of AI Configs to return. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |

### Return type

[**AITools**](AITools.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ai_tools

> <AITools> list_ai_tools(project_key, opts)

List AI tools

Get a list of all AI tools in the given project.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'project_key_example' # String | 
opts = {
  sort: 'sort_example', # String | A sort to apply to the list of AI Configs.
  limit: 56, # Integer | The number of AI Configs to return.
  offset: 56, # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
  filter: 'filter_example' # String | A filter to apply to the list of AI Configs.
}

begin
  # List AI tools
  result = api_instance.list_ai_tools(project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->list_ai_tools: #{e}"
end
```

#### Using the list_ai_tools_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AITools>, Integer, Hash)> list_ai_tools_with_http_info(project_key, opts)

```ruby
begin
  # List AI tools
  data, status_code, headers = api_instance.list_ai_tools_with_http_info(project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AITools>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->list_ai_tools_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **sort** | **String** | A sort to apply to the list of AI Configs. | [optional] |
| **limit** | **Integer** | The number of AI Configs to return. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |
| **filter** | **String** | A filter to apply to the list of AI Configs. | [optional] |

### Return type

[**AITools**](AITools.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_model_configs

> <Array<ModelConfig>> list_model_configs(project_key, opts)

List AI model configs

Get all AI model configs for a project.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'default' # String | 
opts = {
  restricted: true # Boolean | Whether to return only restricted models
}

begin
  # List AI model configs
  result = api_instance.list_model_configs(project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->list_model_configs: #{e}"
end
```

#### Using the list_model_configs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ModelConfig>>, Integer, Hash)> list_model_configs_with_http_info(project_key, opts)

```ruby
begin
  # List AI model configs
  data, status_code, headers = api_instance.list_model_configs_with_http_info(project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ModelConfig>>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->list_model_configs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **restricted** | **Boolean** | Whether to return only restricted models | [optional] |

### Return type

[**Array&lt;ModelConfig&gt;**](ModelConfig.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_agent_graph

> <AgentGraph> patch_agent_graph(ld_api_version, project_key, graph_key, opts)

Update agent graph

Edit an existing agent graph.  The request body must be a JSON object of the fields to update. The values you include replace the existing values for the fields.  If the update includes `rootConfigKey` or `edges`, both must be present and will be treated as full replacements. 

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
graph_key = 'graph_key_example' # String | 
opts = {
  agent_graph_patch: LaunchDarklyApi::AgentGraphPatch.new # AgentGraphPatch | Agent graph object to update
}

begin
  # Update agent graph
  result = api_instance.patch_agent_graph(ld_api_version, project_key, graph_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->patch_agent_graph: #{e}"
end
```

#### Using the patch_agent_graph_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentGraph>, Integer, Hash)> patch_agent_graph_with_http_info(ld_api_version, project_key, graph_key, opts)

```ruby
begin
  # Update agent graph
  data, status_code, headers = api_instance.patch_agent_graph_with_http_info(ld_api_version, project_key, graph_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentGraph>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->patch_agent_graph_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **graph_key** | **String** |  |  |
| **agent_graph_patch** | [**AgentGraphPatch**](AgentGraphPatch.md) | Agent graph object to update | [optional] |

### Return type

[**AgentGraph**](AgentGraph.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_ai_config

> <AIConfig> patch_ai_config(project_key, config_key, opts)

Update AI Config

Edit an existing AI Config.  The request body must be a JSON object of the fields to update. The values you include replace the existing values for the fields.  Here's an example:   ```     {       \"description\": \"Example updated description\",       \"tags\": [\"new-tag\"]     }   ``` 

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 
opts = {
  ai_config_patch: LaunchDarklyApi::AIConfigPatch.new # AIConfigPatch | AI Config object to update
}

begin
  # Update AI Config
  result = api_instance.patch_ai_config(project_key, config_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->patch_ai_config: #{e}"
end
```

#### Using the patch_ai_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AIConfig>, Integer, Hash)> patch_ai_config_with_http_info(project_key, config_key, opts)

```ruby
begin
  # Update AI Config
  data, status_code, headers = api_instance.patch_ai_config_with_http_info(project_key, config_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AIConfig>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->patch_ai_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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


## patch_ai_config_targeting

> <AIConfigTargeting> patch_ai_config_targeting(project_key, config_key, opts)

Update AI Config targeting

Perform a partial update to an AI Config's targeting. The request body must be a valid semantic patch.  ### Using semantic patches on an AI Config  To make a semantic patch request, you must append `domain-model=launchdarkly.semanticpatch` to your `Content-Type` header. To learn more, read [Updates using semantic patch](https://launchdarkly.com/docs/api#updates-using-semantic-patch).  The body of a semantic patch request for updating an AI Config's targeting takes the following properties:  * `comment` (string): (Optional) A description of the update. * `environmentKey` (string): The key of the LaunchDarkly environment. * `instructions` (array): (Required) A list of actions the update should perform. Each action in the list must be an object with a `kind` property that indicates the instruction. If the action requires parameters, you must include those parameters as additional fields in the object. The body of a single semantic patch can contain many different instructions.  ### Instructions  Semantic patch requests support the following `kind` instructions for updating AI Configs.  <details> <summary>Click to expand instructions for <strong>working with targeting and variations</strong> for AI Configs</summary>  #### addClauses  Adds the given clauses to the rule indicated by `ruleId`.  ##### Parameters  - `ruleId`: ID of a rule in the AI Config. - `clauses`: Array of clause objects, with `contextKind` (string), `attribute` (string), `op` (string), `negate` (boolean), and `values` (array of strings, numbers, or dates) properties. The `contextKind`, `attribute`, and `values` are case sensitive. The `op` must be lower-case.  Here's an example:  ```json {   \"environmentKey\": \"environment-key-123abc\",   \"instructions\": [{     \"kind\": \"addClauses\",     \"ruleId\": \"a902ef4a-2faf-4eaf-88e1-ecc356708a29\",     \"clauses\": [{       \"contextKind\": \"user\",       \"attribute\": \"country\",       \"op\": \"in\",       \"negate\": false,       \"values\": [\"USA\", \"Canada\"]     }]   }] } ```  #### addRule  Adds a new targeting rule to the AI Config. The rule may contain `clauses` and serve the variation that `variationId` indicates, or serve a percentage rollout that `rolloutWeights`, `rolloutBucketBy`, and `rolloutContextKind` indicate.  If you set `beforeRuleId`, this adds the new rule before the indicated rule. Otherwise, adds the new rule to the end of the list.  ##### Parameters  - `clauses`: Array of clause objects, with `contextKind` (string), `attribute` (string), `op` (string), `negate` (boolean), and `values` (array of strings, numbers, or dates) properties. The `contextKind`, `attribute`, and `values` are case sensitive. The `op` must be lower-case. - `beforeRuleId`: (Optional) ID of a rule. - Either - `variationId`: ID of a variation.  or  - `rolloutWeights`: (Optional) Map of `variationId` to weight, in thousandths of a percent (0-100000). - `rolloutBucketBy`: (Optional) Context attribute available in the specified `rolloutContextKind`. - `rolloutContextKind`: (Optional) Context kind, defaults to `user`  Here's an example that uses a `variationId`:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [{   \"kind\": \"addRule\",   \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\",   \"clauses\": [{     \"contextKind\": \"organization\",     \"attribute\": \"located_in\",     \"op\": \"in\",     \"negate\": false,     \"values\": [\"Sweden\", \"Norway\"]   }] }] } ```  Here's an example that uses a percentage rollout:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [{   \"kind\": \"addRule\",   \"clauses\": [{     \"contextKind\": \"organization\",     \"attribute\": \"located_in\",     \"op\": \"in\",     \"negate\": false,     \"values\": [\"Sweden\", \"Norway\"]   }],   \"rolloutContextKind\": \"organization\",   \"rolloutWeights\": {     \"2f43f67c-3e4e-4945-a18a-26559378ca00\": 15000, // serve 15% this variation     \"e5830889-1ec5-4b0c-9cc9-c48790090c43\": 85000  // serve 85% this variation   } }] } ```  #### addTargets  Adds context keys to the individual context targets for the context kind that `contextKind` specifies and the variation that `variationId` specifies. Returns an error if this causes the AI Config to target the same context key in multiple variations.  ##### Parameters  - `values`: List of context keys. - `contextKind`: (Optional) Context kind to target, defaults to `user` - `variationId`: ID of a variation.  Here's an example:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [{   \"kind\": \"addTargets\",   \"values\": [\"context-key-123abc\", \"context-key-456def\"],   \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\" }] } ```  #### addValuesToClause  Adds `values` to the values of the clause that `ruleId` and `clauseId` indicate. Does not update the context kind, attribute, or operator.  ##### Parameters  - `ruleId`: ID of a rule in the AI Config. - `clauseId`: ID of a clause in that rule. - `values`: Array of strings, case sensitive.  Here's an example:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [{   \"kind\": \"addValuesToClause\",   \"ruleId\": \"a902ef4a-2faf-4eaf-88e1-ecc356708a29\",   \"clauseId\": \"10a58772-3121-400f-846b-b8a04e8944ed\",   \"values\": [\"beta_testers\"] }] } ```  #### clearTargets  Removes all individual targets from the variation that `variationId` specifies. This includes both user and non-user targets.  ##### Parameters  - `variationId`: ID of a variation.  Here's an example:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [ { \"kind\": \"clearTargets\", \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\" } ] } ```  #### removeClauses  Removes the clauses specified by `clauseIds` from the rule indicated by `ruleId`.  ##### Parameters  - `ruleId`: ID of a rule. - `clauseIds`: Array of IDs of clauses in the rule.  Here's an example:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [{   \"kind\": \"removeClauses\",   \"ruleId\": \"a902ef4a-2faf-4eaf-88e1-ecc356708a29\",   \"clauseIds\": [\"10a58772-3121-400f-846b-b8a04e8944ed\", \"36a461dc-235e-4b08-97b9-73ce9365873e\"] }] } ```  #### removeRule  Removes the targeting rule specified by `ruleId`. Does nothing if the rule does not exist.  ##### Parameters  - `ruleId`: ID of a rule.  Here's an example:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [ { \"kind\": \"removeRule\", \"ruleId\": \"a902ef4a-2faf-4eaf-88e1-ecc356708a29\" } ] } ```  #### removeTargets  Removes context keys from the individual context targets for the context kind that `contextKind` specifies and the variation that `variationId` specifies. Does nothing if the flag does not target the context keys.  ##### Parameters  - `values`: List of context keys. - `contextKind`: (Optional) Context kind to target, defaults to `user` - `variationId`: ID of a variation.  Here's an example:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [{   \"kind\": \"removeTargets\",   \"values\": [\"context-key-123abc\", \"context-key-456def\"],   \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\" }] } ```  #### removeValuesFromClause  Removes `values` from the values of the clause indicated by `ruleId` and `clauseId`. Does not update the context kind, attribute, or operator.  ##### Parameters  - `ruleId`: ID of a rule. - `clauseId`: ID of a clause in that rule. - `values`: Array of strings, case sensitive.  Here's an example:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [{   \"kind\": \"removeValuesFromClause\",   \"ruleId\": \"a902ef4a-2faf-4eaf-88e1-ecc356708a29\",   \"clauseId\": \"10a58772-3121-400f-846b-b8a04e8944ed\",   \"values\": [\"beta_testers\"] }] } ```  #### reorderRules  Rearranges the rules to match the order given in `ruleIds`. Returns an error if `ruleIds` does not match the current set of rules on the AI Config.  ##### Parameters  - `ruleIds`: Array of IDs of all rules.  Here's an example:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [{   \"kind\": \"reorderRules\",   \"ruleIds\": [\"a902ef4a-2faf-4eaf-88e1-ecc356708a29\", \"63c238d1-835d-435e-8f21-c8d5e40b2a3d\"] }] } ```  #### replaceRules  Removes all targeting rules for the AI Config and replaces them with the list you provide.  ##### Parameters  - `rules`: A list of rules.  Here's an example:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [   {     \"kind\": \"replaceRules\",     \"rules\": [       {         \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\",         \"description\": \"My new rule\",         \"clauses\": [           {             \"contextKind\": \"user\",             \"attribute\": \"segmentMatch\",             \"op\": \"segmentMatch\",             \"values\": [\"test\"]           }         ]       }     ]   } ] } ```  #### replaceTargets  Removes all existing targeting and replaces it with the list of targets you provide.  ##### Parameters  - `targets`: A list of context targeting. Each item in the list includes an optional `contextKind` that defaults to `user`, a required `variationId`, and a required list of `values`.  Here's an example:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [   {     \"kind\": \"replaceTargets\",     \"targets\": [       {         \"contextKind\": \"user\",         \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\",         \"values\": [\"user-key-123abc\"]       },       {         \"contextKind\": \"device\",         \"variationId\": \"e5830889-1ec5-4b0c-9cc9-c48790090c43\",         \"values\": [\"device-key-456def\"]       }     ]   } ] } ```  #### updateClause  Replaces the clause indicated by `ruleId` and `clauseId` with `clause`.  ##### Parameters  - `ruleId`: ID of a rule. - `clauseId`: ID of a clause in that rule. - `clause`: New `clause` object, with `contextKind` (string), `attribute` (string), `op` (string), `negate` (boolean), and `values` (array of strings, numbers, or dates) properties. The `contextKind`, `attribute`, and `values` are case sensitive. The `op` must be lower-case.  Here's an example:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [{   \"kind\": \"updateClause\",   \"ruleId\": \"a902ef4a-2faf-4eaf-88e1-ecc356708a29\",   \"clauseId\": \"10c7462a-2062-45ba-a8bb-dfb3de0f8af5\",   \"clause\": {     \"contextKind\": \"user\",     \"attribute\": \"country\",     \"op\": \"in\",     \"negate\": false,     \"values\": [\"Mexico\", \"Canada\"]   } }] } ```  #### updateDefaultVariation  Updates the default on or off variation of the AI Config.  ##### Parameters  - `onVariationValue`: (Optional) The value of the variation of the new on variation. - `offVariationValue`: (Optional) The value of the variation of the new off variation  Here's an example:  ```json { \"instructions\": [ { \"kind\": \"updateDefaultVariation\", \"OnVariationValue\": true, \"OffVariationValue\": false } ] } ```  #### updateFallthroughVariationOrRollout  Updates the default or \"fallthrough\" rule for the AI Config, which the AI Config serves when a context matches none of the targeting rules. The rule can serve either the variation that `variationId` indicates, or a percentage rollout that `rolloutWeights` and `rolloutBucketBy` indicate.  ##### Parameters  - `variationId`: ID of a variation.  or  - `rolloutWeights`: Map of `variationId` to weight, in thousandths of a percent (0-100000). - `rolloutBucketBy`: (Optional) Context attribute available in the specified `rolloutContextKind`. - `rolloutContextKind`: (Optional) Context kind, defaults to `user`  Here's an example that uses a `variationId`:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [{   \"kind\": \"updateFallthroughVariationOrRollout\",   \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\" }] } ```  Here's an example that uses a percentage rollout:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [{   \"kind\": \"updateFallthroughVariationOrRollout\",   \"rolloutContextKind\": \"user\",   \"rolloutWeights\": {     \"2f43f67c-3e4e-4945-a18a-26559378ca00\": 15000, // serve 15% this variation     \"e5830889-1ec5-4b0c-9cc9-c48790090c43\": 85000  // serve 85% this variation   } }] } ```  #### updateOffVariation  Updates the default off variation to `variationId`. The AI Config serves the default off variation when the AI Config's targeting is **Off**.  ##### Parameters  - `variationId`: ID of a variation.  Here's an example:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [ { \"kind\": \"updateOffVariation\", \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\" } ] } ```  #### updateRuleDescription  Updates the description of the targeting rule.  ##### Parameters  - `description`: The new human-readable description for this rule. - `ruleId`: The ID of the rule. You can retrieve this by making a GET request for the AI Config.  Here's an example:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [{   \"kind\": \"updateRuleDescription\",   \"description\": \"New rule description\",   \"ruleId\": \"a902ef4a-2faf-4eaf-88e1-ecc356708a29\" }] } ```  #### updateRuleTrackEvents  Updates whether or not LaunchDarkly tracks events for the AI Config associated with this rule.  ##### Parameters  - `ruleId`: The ID of the rule. You can retrieve this by making a GET request for the AI Config. - `trackEvents`: Whether or not events are tracked.  Here's an example:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [{   \"kind\": \"updateRuleTrackEvents\",   \"ruleId\": \"a902ef4a-2faf-4eaf-88e1-ecc356708a29\",   \"trackEvents\": true }] } ```  #### updateRuleVariationOrRollout  Updates what `ruleId` serves when its clauses evaluate to true. The rule can serve either the variation that `variationId` indicates, or a percent rollout that `rolloutWeights` and `rolloutBucketBy` indicate.  ##### Parameters  - `ruleId`: ID of a rule. - `variationId`: ID of a variation.  or  - `rolloutWeights`: Map of `variationId` to weight, in thousandths of a percent (0-100000). - `rolloutBucketBy`: (Optional) Context attribute available in the specified `rolloutContextKind`. - `rolloutContextKind`: (Optional) Context kind, defaults to `user`  Here's an example:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [{   \"kind\": \"updateRuleVariationOrRollout\",   \"ruleId\": \"a902ef4a-2faf-4eaf-88e1-ecc356708a29\",   \"variationId\": \"2f43f67c-3e4e-4945-a18a-26559378ca00\" }] } ```  #### updateTrackEvents  Updates whether or not LaunchDarkly tracks events for the AI Config, for all rules.  ##### Parameters  - `trackEvents`: Whether or not events are tracked.  Here's an example:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [ { \"kind\": \"updateTrackEvents\", \"trackEvents\": true } ] } ```  #### updateTrackEventsFallthrough  Updates whether or not LaunchDarkly tracks events for the AI Config, for the default rule.  ##### Parameters  - `trackEvents`: Whether or not events are tracked.  Here's an example:  ```json { \"environmentKey\": \"environment-key-123abc\", \"instructions\": [ { \"kind\": \"updateTrackEventsFallthrough\", \"trackEvents\": true } ] } ``` </details> 

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 
opts = {
  ai_config_targeting_patch: LaunchDarklyApi::AIConfigTargetingPatch.new({environment_key: 'environment_key_example', instructions: [{ key: 3.56}]}) # AIConfigTargetingPatch | AI Config targeting semantic patch instructions
}

begin
  # Update AI Config targeting
  result = api_instance.patch_ai_config_targeting(project_key, config_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->patch_ai_config_targeting: #{e}"
end
```

#### Using the patch_ai_config_targeting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AIConfigTargeting>, Integer, Hash)> patch_ai_config_targeting_with_http_info(project_key, config_key, opts)

```ruby
begin
  # Update AI Config targeting
  data, status_code, headers = api_instance.patch_ai_config_targeting_with_http_info(project_key, config_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AIConfigTargeting>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->patch_ai_config_targeting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **config_key** | **String** |  |  |
| **ai_config_targeting_patch** | [**AIConfigTargetingPatch**](AIConfigTargetingPatch.md) | AI Config targeting semantic patch instructions | [optional] |

### Return type

[**AIConfigTargeting**](AIConfigTargeting.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_ai_config_variation

> <AIConfigVariation> patch_ai_config_variation(project_key, config_key, variation_key, opts)

Update AI Config variation

Edit an existing variation of an AI Config. This creates a new version of the variation.  The request body must be a JSON object of the fields to update. The values you include replace the existing values for the fields.  Here's an example: ```   {     \"messages\": [       {         \"role\": \"system\",         \"content\": \"The new message\"       }     ]   } ``` 

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 
variation_key = 'variation_key_example' # String | 
opts = {
  ai_config_variation_patch: LaunchDarklyApi::AIConfigVariationPatch.new # AIConfigVariationPatch | AI Config variation object to update
}

begin
  # Update AI Config variation
  result = api_instance.patch_ai_config_variation(project_key, config_key, variation_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->patch_ai_config_variation: #{e}"
end
```

#### Using the patch_ai_config_variation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AIConfigVariation>, Integer, Hash)> patch_ai_config_variation_with_http_info(project_key, config_key, variation_key, opts)

```ruby
begin
  # Update AI Config variation
  data, status_code, headers = api_instance.patch_ai_config_variation_with_http_info(project_key, config_key, variation_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AIConfigVariation>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->patch_ai_config_variation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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


## patch_ai_tool

> <AITool> patch_ai_tool(project_key, tool_key, opts)

Update AI tool

Edit an existing AI tool.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'project_key_example' # String | 
tool_key = 'tool_key_example' # String | 
opts = {
  ai_tool_patch: LaunchDarklyApi::AIToolPatch.new # AIToolPatch | AI tool object to update
}

begin
  # Update AI tool
  result = api_instance.patch_ai_tool(project_key, tool_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->patch_ai_tool: #{e}"
end
```

#### Using the patch_ai_tool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AITool>, Integer, Hash)> patch_ai_tool_with_http_info(project_key, tool_key, opts)

```ruby
begin
  # Update AI tool
  data, status_code, headers = api_instance.patch_ai_tool_with_http_info(project_key, tool_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AITool>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->patch_ai_tool_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **tool_key** | **String** |  |  |
| **ai_tool_patch** | [**AIToolPatch**](AIToolPatch.md) | AI tool object to update | [optional] |

### Return type

[**AITool**](AITool.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_agent_graph

> <AgentGraph> post_agent_graph(ld_api_version, project_key, agent_graph_post)

Create new agent graph

Create a new agent graph within the given project.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
agent_graph_post = LaunchDarklyApi::AgentGraphPost.new({key: 'key_example', name: 'name_example'}) # AgentGraphPost | Agent graph object to create

begin
  # Create new agent graph
  result = api_instance.post_agent_graph(ld_api_version, project_key, agent_graph_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->post_agent_graph: #{e}"
end
```

#### Using the post_agent_graph_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentGraph>, Integer, Hash)> post_agent_graph_with_http_info(ld_api_version, project_key, agent_graph_post)

```ruby
begin
  # Create new agent graph
  data, status_code, headers = api_instance.post_agent_graph_with_http_info(ld_api_version, project_key, agent_graph_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentGraph>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->post_agent_graph_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **agent_graph_post** | [**AgentGraphPost**](AgentGraphPost.md) | Agent graph object to create |  |

### Return type

[**AgentGraph**](AgentGraph.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ai_config

> <AIConfig> post_ai_config(project_key, ai_config_post)

Create new AI Config

Create a new AI Config within the given project.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'project_key_example' # String | 
ai_config_post = LaunchDarklyApi::AIConfigPost.new({key: 'key_example', name: 'name_example'}) # AIConfigPost | AI Config object to create

begin
  # Create new AI Config
  result = api_instance.post_ai_config(project_key, ai_config_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->post_ai_config: #{e}"
end
```

#### Using the post_ai_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AIConfig>, Integer, Hash)> post_ai_config_with_http_info(project_key, ai_config_post)

```ruby
begin
  # Create new AI Config
  data, status_code, headers = api_instance.post_ai_config_with_http_info(project_key, ai_config_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AIConfig>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->post_ai_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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

> <AIConfigVariation> post_ai_config_variation(project_key, config_key, ai_config_variation_post)

Create AI Config variation

Create a new variation for a given AI Config.  The <code>model</code> in the request body requires a <code>modelName</code> and <code>parameters</code>, for example:  ```   \"model\": {     \"modelName\": \"claude-3-opus-20240229\",     \"parameters\": {       \"max_tokens\": 1024     }   } ``` 

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 
ai_config_variation_post = LaunchDarklyApi::AIConfigVariationPost.new({key: 'key_example', name: 'name_example'}) # AIConfigVariationPost | AI Config variation object to create

begin
  # Create AI Config variation
  result = api_instance.post_ai_config_variation(project_key, config_key, ai_config_variation_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->post_ai_config_variation: #{e}"
end
```

#### Using the post_ai_config_variation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AIConfigVariation>, Integer, Hash)> post_ai_config_variation_with_http_info(project_key, config_key, ai_config_variation_post)

```ruby
begin
  # Create AI Config variation
  data, status_code, headers = api_instance.post_ai_config_variation_with_http_info(project_key, config_key, ai_config_variation_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AIConfigVariation>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->post_ai_config_variation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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


## post_ai_tool

> <AITool> post_ai_tool(project_key, ai_tool_post)

Create an AI tool

Create an AI tool

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'project_key_example' # String | 
ai_tool_post = LaunchDarklyApi::AIToolPost.new({key: 'key_example', schema: 3.56}) # AIToolPost | AI tool object to create

begin
  # Create an AI tool
  result = api_instance.post_ai_tool(project_key, ai_tool_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->post_ai_tool: #{e}"
end
```

#### Using the post_ai_tool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AITool>, Integer, Hash)> post_ai_tool_with_http_info(project_key, ai_tool_post)

```ruby
begin
  # Create an AI tool
  data, status_code, headers = api_instance.post_ai_tool_with_http_info(project_key, ai_tool_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AITool>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->post_ai_tool_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **ai_tool_post** | [**AIToolPost**](AIToolPost.md) | AI tool object to create |  |

### Return type

[**AITool**](AITool.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_model_config

> <ModelConfig> post_model_config(project_key, model_config_post)

Create an AI model config

Create an AI model config. You can use this in any variation for any AI Config in your project.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'default' # String | 
model_config_post = LaunchDarklyApi::ModelConfigPost.new({name: 'name_example', key: 'key_example', id: 'id_example'}) # ModelConfigPost | AI model config object to create

begin
  # Create an AI model config
  result = api_instance.post_model_config(project_key, model_config_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->post_model_config: #{e}"
end
```

#### Using the post_model_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelConfig>, Integer, Hash)> post_model_config_with_http_info(project_key, model_config_post)

```ruby
begin
  # Create an AI model config
  data, status_code, headers = api_instance.post_model_config_with_http_info(project_key, model_config_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelConfig>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->post_model_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **model_config_post** | [**ModelConfigPost**](ModelConfigPost.md) | AI model config object to create |  |

### Return type

[**ModelConfig**](ModelConfig.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_restricted_models

> <RestrictedModelsResponse> post_restricted_models(project_key, restricted_models_request)

Add AI models to the restricted list

Add AI models, by key, to the restricted list. Keys are included in the response from the [List AI model configs](https://launchdarkly.com/docs/api/ai-configs/list-model-configs) endpoint.

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

api_instance = LaunchDarklyApi::AIConfigsApi.new
project_key = 'default' # String | 
restricted_models_request = LaunchDarklyApi::RestrictedModelsRequest.new({keys: ['keys_example']}) # RestrictedModelsRequest | List of AI model keys to add to the restricted list.

begin
  # Add AI models to the restricted list
  result = api_instance.post_restricted_models(project_key, restricted_models_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->post_restricted_models: #{e}"
end
```

#### Using the post_restricted_models_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestrictedModelsResponse>, Integer, Hash)> post_restricted_models_with_http_info(project_key, restricted_models_request)

```ruby
begin
  # Add AI models to the restricted list
  data, status_code, headers = api_instance.post_restricted_models_with_http_info(project_key, restricted_models_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestrictedModelsResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->post_restricted_models_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **restricted_models_request** | [**RestrictedModelsRequest**](RestrictedModelsRequest.md) | List of AI model keys to add to the restricted list. |  |

### Return type

[**RestrictedModelsResponse**](RestrictedModelsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

