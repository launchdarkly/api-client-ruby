# LaunchDarklyApi::AgentControlApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_agent_graph**](AgentControlApi.md#delete_agent_graph) | **DELETE** /api/v2/projects/{projectKey}/agent-graphs/{graphKey} | Delete agent graph |
| [**delete_agent_optimization**](AgentControlApi.md#delete_agent_optimization) | **DELETE** /api/v2/projects/{projectKey}/agent-optimizations/{optimizationKey} | Delete an agent optimization |
| [**delete_agent_optimization_run**](AgentControlApi.md#delete_agent_optimization_run) | **DELETE** /api/v2/projects/{projectKey}/agent-optimizations/{optimizationKey}/runs/{runId} | Delete an agent optimization run |
| [**delete_ai_config**](AgentControlApi.md#delete_ai_config) | **DELETE** /api/v2/projects/{projectKey}/ai-configs/{configKey} | Delete AI Config |
| [**delete_ai_config_variation**](AgentControlApi.md#delete_ai_config_variation) | **DELETE** /api/v2/projects/{projectKey}/ai-configs/{configKey}/variations/{variationKey} | Delete AI Config variation |
| [**delete_ai_tool**](AgentControlApi.md#delete_ai_tool) | **DELETE** /api/v2/projects/{projectKey}/ai-tools/{toolKey} | Delete AI tool |
| [**delete_model_config**](AgentControlApi.md#delete_model_config) | **DELETE** /api/v2/projects/{projectKey}/ai-configs/model-configs/{modelConfigKey} | Delete an AI model config |
| [**delete_prompt_snippet**](AgentControlApi.md#delete_prompt_snippet) | **DELETE** /api/v2/projects/{projectKey}/ai-configs/prompt-snippets/{snippetKey} | Delete a prompt snippet |
| [**delete_restricted_models**](AgentControlApi.md#delete_restricted_models) | **DELETE** /api/v2/projects/{projectKey}/ai-configs/model-configs/restricted | Remove AI models from the restricted list |
| [**get_agent_graph**](AgentControlApi.md#get_agent_graph) | **GET** /api/v2/projects/{projectKey}/agent-graphs/{graphKey} | Get agent graph |
| [**get_agent_optimization**](AgentControlApi.md#get_agent_optimization) | **GET** /api/v2/projects/{projectKey}/agent-optimizations/{optimizationKey} | Get an agent optimization |
| [**get_ai_config**](AgentControlApi.md#get_ai_config) | **GET** /api/v2/projects/{projectKey}/ai-configs/{configKey} | Get AI Config |
| [**get_ai_config_metrics**](AgentControlApi.md#get_ai_config_metrics) | **GET** /api/v2/projects/{projectKey}/ai-configs/{configKey}/metrics | Get AI Config metrics |
| [**get_ai_config_metrics_by_variation**](AgentControlApi.md#get_ai_config_metrics_by_variation) | **GET** /api/v2/projects/{projectKey}/ai-configs/{configKey}/metrics-by-variation | Get AI Config metrics by variation |
| [**get_ai_config_quick_stats**](AgentControlApi.md#get_ai_config_quick_stats) | **GET** /api/v2/projects/{projectKey}/ai-configs/quick-stats | Get AI Config quick stats |
| [**get_ai_config_targeting**](AgentControlApi.md#get_ai_config_targeting) | **GET** /api/v2/projects/{projectKey}/ai-configs/{configKey}/targeting | Show an AI Config&#39;s targeting |
| [**get_ai_config_variation**](AgentControlApi.md#get_ai_config_variation) | **GET** /api/v2/projects/{projectKey}/ai-configs/{configKey}/variations/{variationKey} | Get AI Config variation |
| [**get_ai_configs**](AgentControlApi.md#get_ai_configs) | **GET** /api/v2/projects/{projectKey}/ai-configs | List AI Configs |
| [**get_ai_tool**](AgentControlApi.md#get_ai_tool) | **GET** /api/v2/projects/{projectKey}/ai-tools/{toolKey} | Get AI tool |
| [**get_model_config**](AgentControlApi.md#get_model_config) | **GET** /api/v2/projects/{projectKey}/ai-configs/model-configs/{modelConfigKey} | Get AI model config |
| [**get_prompt_snippet**](AgentControlApi.md#get_prompt_snippet) | **GET** /api/v2/projects/{projectKey}/ai-configs/prompt-snippets/{snippetKey} | Get a prompt snippet |
| [**list_agent_graphs**](AgentControlApi.md#list_agent_graphs) | **GET** /api/v2/projects/{projectKey}/agent-graphs | List agent graphs |
| [**list_agent_optimization_results**](AgentControlApi.md#list_agent_optimization_results) | **GET** /api/v2/projects/{projectKey}/agent-optimizations/{optimizationKey}/results | List agent optimization runs |
| [**list_agent_optimization_results_by_run_id**](AgentControlApi.md#list_agent_optimization_results_by_run_id) | **GET** /api/v2/projects/{projectKey}/agent-optimizations/{optimizationKey}/runs/{runId}/results | List agent optimization results for a run |
| [**list_agent_optimizations**](AgentControlApi.md#list_agent_optimizations) | **GET** /api/v2/projects/{projectKey}/agent-optimizations | List agent optimizations |
| [**list_ai_tool_versions**](AgentControlApi.md#list_ai_tool_versions) | **GET** /api/v2/projects/{projectKey}/ai-tools/{toolKey}/versions | List AI tool versions |
| [**list_ai_tools**](AgentControlApi.md#list_ai_tools) | **GET** /api/v2/projects/{projectKey}/ai-tools | List AI tools |
| [**list_all_agent_optimization_results**](AgentControlApi.md#list_all_agent_optimization_results) | **GET** /api/v2/projects/{projectKey}/agent-optimizations/{optimizationKey}/all-results | List all agent optimization results across versions |
| [**list_model_configs**](AgentControlApi.md#list_model_configs) | **GET** /api/v2/projects/{projectKey}/ai-configs/model-configs | List AI model configs |
| [**list_prompt_snippet_references**](AgentControlApi.md#list_prompt_snippet_references) | **GET** /api/v2/projects/{projectKey}/ai-configs/prompt-snippets/{snippetKey}/references | List prompt snippet references |
| [**list_prompt_snippet_versions**](AgentControlApi.md#list_prompt_snippet_versions) | **GET** /api/v2/projects/{projectKey}/ai-configs/prompt-snippets/{snippetKey}/versions | List prompt snippet versions |
| [**list_prompt_snippets**](AgentControlApi.md#list_prompt_snippets) | **GET** /api/v2/projects/{projectKey}/ai-configs/prompt-snippets | List prompt snippets |
| [**patch_agent_graph**](AgentControlApi.md#patch_agent_graph) | **PATCH** /api/v2/projects/{projectKey}/agent-graphs/{graphKey} | Update agent graph |
| [**patch_agent_optimization**](AgentControlApi.md#patch_agent_optimization) | **PATCH** /api/v2/projects/{projectKey}/agent-optimizations/{optimizationKey} | Update an agent optimization |
| [**patch_agent_optimization_result**](AgentControlApi.md#patch_agent_optimization_result) | **PATCH** /api/v2/projects/{projectKey}/agent-optimizations/{optimizationKey}/results/{resultId} | Update an agent optimization result |
| [**patch_ai_config**](AgentControlApi.md#patch_ai_config) | **PATCH** /api/v2/projects/{projectKey}/ai-configs/{configKey} | Update AI Config |
| [**patch_ai_config_targeting**](AgentControlApi.md#patch_ai_config_targeting) | **PATCH** /api/v2/projects/{projectKey}/ai-configs/{configKey}/targeting | Update AI Config targeting |
| [**patch_ai_config_variation**](AgentControlApi.md#patch_ai_config_variation) | **PATCH** /api/v2/projects/{projectKey}/ai-configs/{configKey}/variations/{variationKey} | Update AI Config variation |
| [**patch_ai_tool**](AgentControlApi.md#patch_ai_tool) | **PATCH** /api/v2/projects/{projectKey}/ai-tools/{toolKey} | Update AI tool |
| [**patch_prompt_snippet**](AgentControlApi.md#patch_prompt_snippet) | **PATCH** /api/v2/projects/{projectKey}/ai-configs/prompt-snippets/{snippetKey} | Update a prompt snippet |
| [**post_agent_graph**](AgentControlApi.md#post_agent_graph) | **POST** /api/v2/projects/{projectKey}/agent-graphs | Create new agent graph |
| [**post_agent_optimization**](AgentControlApi.md#post_agent_optimization) | **POST** /api/v2/projects/{projectKey}/agent-optimizations | Create agent optimization |
| [**post_agent_optimization_result**](AgentControlApi.md#post_agent_optimization_result) | **POST** /api/v2/projects/{projectKey}/agent-optimizations/{optimizationKey}/results | Create agent optimization result |
| [**post_ai_config**](AgentControlApi.md#post_ai_config) | **POST** /api/v2/projects/{projectKey}/ai-configs | Create new AI Config |
| [**post_ai_config_variation**](AgentControlApi.md#post_ai_config_variation) | **POST** /api/v2/projects/{projectKey}/ai-configs/{configKey}/variations | Create AI Config variation |
| [**post_ai_tool**](AgentControlApi.md#post_ai_tool) | **POST** /api/v2/projects/{projectKey}/ai-tools | Create an AI tool |
| [**post_model_config**](AgentControlApi.md#post_model_config) | **POST** /api/v2/projects/{projectKey}/ai-configs/model-configs | Create an AI model config |
| [**post_prompt_snippet**](AgentControlApi.md#post_prompt_snippet) | **POST** /api/v2/projects/{projectKey}/ai-configs/prompt-snippets | Create a prompt snippet |
| [**post_restricted_models**](AgentControlApi.md#post_restricted_models) | **POST** /api/v2/projects/{projectKey}/ai-configs/model-configs/restricted | Add AI models to the restricted list |


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

api_instance = LaunchDarklyApi::AgentControlApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
graph_key = 'graph_key_example' # String | 

begin
  # Delete agent graph
  api_instance.delete_agent_graph(ld_api_version, project_key, graph_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->delete_agent_graph: #{e}"
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
  puts "Error when calling AgentControlApi->delete_agent_graph_with_http_info: #{e}"
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


## delete_agent_optimization

> delete_agent_optimization(project_key, optimization_key)

Delete an agent optimization

Delete an existing agent optimization.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
optimization_key = 'optimization_key_example' # String | 

begin
  # Delete an agent optimization
  api_instance.delete_agent_optimization(project_key, optimization_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->delete_agent_optimization: #{e}"
end
```

#### Using the delete_agent_optimization_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_agent_optimization_with_http_info(project_key, optimization_key)

```ruby
begin
  # Delete an agent optimization
  data, status_code, headers = api_instance.delete_agent_optimization_with_http_info(project_key, optimization_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->delete_agent_optimization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **optimization_key** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_agent_optimization_run

> delete_agent_optimization_run(ld_api_version, project_key, optimization_key, run_id)

Delete an agent optimization run

Delete all results for a specific run of an agent optimization. Returns a 404 if the optimization does not exist or if the run has no results. A run whose results have already been deleted is indistinguishable from a run that never existed, so repeating this request also returns a 404.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
optimization_key = 'optimization_key_example' # String | 
run_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete an agent optimization run
  api_instance.delete_agent_optimization_run(ld_api_version, project_key, optimization_key, run_id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->delete_agent_optimization_run: #{e}"
end
```

#### Using the delete_agent_optimization_run_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_agent_optimization_run_with_http_info(ld_api_version, project_key, optimization_key, run_id)

```ruby
begin
  # Delete an agent optimization run
  data, status_code, headers = api_instance.delete_agent_optimization_run_with_http_info(ld_api_version, project_key, optimization_key, run_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->delete_agent_optimization_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **optimization_key** | **String** |  |  |
| **run_id** | **String** |  |  |

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'default' # String | 
config_key = 'config_key_example' # String | 

begin
  # Delete AI Config
  api_instance.delete_ai_config(project_key, config_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->delete_ai_config: #{e}"
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
  puts "Error when calling AgentControlApi->delete_ai_config_with_http_info: #{e}"
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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 
variation_key = 'variation_key_example' # String | 

begin
  # Delete AI Config variation
  api_instance.delete_ai_config_variation(project_key, config_key, variation_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->delete_ai_config_variation: #{e}"
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
  puts "Error when calling AgentControlApi->delete_ai_config_variation_with_http_info: #{e}"
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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
tool_key = 'tool_key_example' # String | 

begin
  # Delete AI tool
  api_instance.delete_ai_tool(project_key, tool_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->delete_ai_tool: #{e}"
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
  puts "Error when calling AgentControlApi->delete_ai_tool_with_http_info: #{e}"
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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'default' # String | 
model_config_key = 'model_config_key_example' # String | 

begin
  # Delete an AI model config
  api_instance.delete_model_config(project_key, model_config_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->delete_model_config: #{e}"
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
  puts "Error when calling AgentControlApi->delete_model_config_with_http_info: #{e}"
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


## delete_prompt_snippet

> delete_prompt_snippet(project_key, snippet_key)

Delete a prompt snippet

Delete an existing prompt snippet.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
snippet_key = 'snippet_key_example' # String | 

begin
  # Delete a prompt snippet
  api_instance.delete_prompt_snippet(project_key, snippet_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->delete_prompt_snippet: #{e}"
end
```

#### Using the delete_prompt_snippet_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prompt_snippet_with_http_info(project_key, snippet_key)

```ruby
begin
  # Delete a prompt snippet
  data, status_code, headers = api_instance.delete_prompt_snippet_with_http_info(project_key, snippet_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->delete_prompt_snippet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **snippet_key** | **String** |  |  |

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'default' # String | 
restricted_models_request = LaunchDarklyApi::RestrictedModelsRequest.new({keys: ['keys_example']}) # RestrictedModelsRequest | List of AI model keys to remove from the restricted list

begin
  # Remove AI models from the restricted list
  api_instance.delete_restricted_models(project_key, restricted_models_request)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->delete_restricted_models: #{e}"
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
  puts "Error when calling AgentControlApi->delete_restricted_models_with_http_info: #{e}"
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

api_instance = LaunchDarklyApi::AgentControlApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
graph_key = 'graph_key_example' # String | 

begin
  # Get agent graph
  result = api_instance.get_agent_graph(ld_api_version, project_key, graph_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->get_agent_graph: #{e}"
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
  puts "Error when calling AgentControlApi->get_agent_graph_with_http_info: #{e}"
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


## get_agent_optimization

> <AgentOptimization> get_agent_optimization(project_key, optimization_key)

Get an agent optimization

Retrieve a specific agent optimization by its key.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
optimization_key = 'optimization_key_example' # String | 

begin
  # Get an agent optimization
  result = api_instance.get_agent_optimization(project_key, optimization_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->get_agent_optimization: #{e}"
end
```

#### Using the get_agent_optimization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentOptimization>, Integer, Hash)> get_agent_optimization_with_http_info(project_key, optimization_key)

```ruby
begin
  # Get an agent optimization
  data, status_code, headers = api_instance.get_agent_optimization_with_http_info(project_key, optimization_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentOptimization>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->get_agent_optimization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **optimization_key** | **String** |  |  |

### Return type

[**AgentOptimization**](AgentOptimization.md)

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 

begin
  # Get AI Config
  result = api_instance.get_ai_config(project_key, config_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->get_ai_config: #{e}"
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
  puts "Error when calling AgentControlApi->get_ai_config_with_http_info: #{e}"
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

> <Metrics> get_ai_config_metrics(project_key, config_key, from, to, env, opts)

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 
from = 56 # Integer | The starting time, as milliseconds since epoch (inclusive).
to = 56 # Integer | The ending time, as milliseconds since epoch (exclusive). May not be more than 100 days after `from`.
env = 'env_example' # String | An environment key. Only metrics from this environment will be included.
opts = {
  context_kind: 'context_kind_example', # String | A context kind. Only metrics from events that include a context of this kind are included. Required if `contextKey` is provided.
  context_key: 'context_key_example' # String | A context key. Only metrics from events whose context of the `contextKind` kind has this key are included. Requires `contextKind`.
}

begin
  # Get AI Config metrics
  result = api_instance.get_ai_config_metrics(project_key, config_key, from, to, env, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->get_ai_config_metrics: #{e}"
end
```

#### Using the get_ai_config_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Metrics>, Integer, Hash)> get_ai_config_metrics_with_http_info(project_key, config_key, from, to, env, opts)

```ruby
begin
  # Get AI Config metrics
  data, status_code, headers = api_instance.get_ai_config_metrics_with_http_info(project_key, config_key, from, to, env, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Metrics>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->get_ai_config_metrics_with_http_info: #{e}"
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
| **context_kind** | **String** | A context kind. Only metrics from events that include a context of this kind are included. Required if &#x60;contextKey&#x60; is provided. | [optional] |
| **context_key** | **String** | A context key. Only metrics from events whose context of the &#x60;contextKind&#x60; kind has this key are included. Requires &#x60;contextKind&#x60;. | [optional] |

### Return type

[**Metrics**](Metrics.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ai_config_metrics_by_variation

> <Array<MetricByVariation>> get_ai_config_metrics_by_variation(project_key, config_key, from, to, env, opts)

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 
from = 56 # Integer | The starting time, as milliseconds since epoch (inclusive).
to = 56 # Integer | The ending time, as milliseconds since epoch (exclusive). May not be more than 100 days after `from`.
env = 'env_example' # String | An environment key. Only metrics from this environment will be included.
opts = {
  context_kind: 'context_kind_example', # String | A context kind. Only metrics from events that include a context of this kind are included. Required if `contextKey` is provided.
  context_key: 'context_key_example' # String | A context key. Only metrics from events whose context of the `contextKind` kind has this key are included. Requires `contextKind`.
}

begin
  # Get AI Config metrics by variation
  result = api_instance.get_ai_config_metrics_by_variation(project_key, config_key, from, to, env, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->get_ai_config_metrics_by_variation: #{e}"
end
```

#### Using the get_ai_config_metrics_by_variation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MetricByVariation>>, Integer, Hash)> get_ai_config_metrics_by_variation_with_http_info(project_key, config_key, from, to, env, opts)

```ruby
begin
  # Get AI Config metrics by variation
  data, status_code, headers = api_instance.get_ai_config_metrics_by_variation_with_http_info(project_key, config_key, from, to, env, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MetricByVariation>>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->get_ai_config_metrics_by_variation_with_http_info: #{e}"
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
| **context_kind** | **String** | A context kind. Only metrics from events that include a context of this kind are included. Required if &#x60;contextKey&#x60; is provided. | [optional] |
| **context_key** | **String** | A context key. Only metrics from events whose context of the &#x60;contextKind&#x60; kind has this key are included. Requires &#x60;contextKind&#x60;. | [optional] |

### Return type

[**Array&lt;MetricByVariation&gt;**](MetricByVariation.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ai_config_quick_stats

> <QuickStats> get_ai_config_quick_stats(project_key, env)

Get AI Config quick stats

Retrieve aggregate quick stats for AI Configs in a project.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
env = 'env_example' # String | An environment key. Only metrics from this environment will be included.

begin
  # Get AI Config quick stats
  result = api_instance.get_ai_config_quick_stats(project_key, env)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->get_ai_config_quick_stats: #{e}"
end
```

#### Using the get_ai_config_quick_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuickStats>, Integer, Hash)> get_ai_config_quick_stats_with_http_info(project_key, env)

```ruby
begin
  # Get AI Config quick stats
  data, status_code, headers = api_instance.get_ai_config_quick_stats_with_http_info(project_key, env)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuickStats>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->get_ai_config_quick_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **env** | **String** | An environment key. Only metrics from this environment will be included. |  |

### Return type

[**QuickStats**](QuickStats.md)

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 

begin
  # Show an AI Config's targeting
  result = api_instance.get_ai_config_targeting(project_key, config_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->get_ai_config_targeting: #{e}"
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
  puts "Error when calling AgentControlApi->get_ai_config_targeting_with_http_info: #{e}"
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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'default' # String | 
config_key = 'default' # String | 
variation_key = 'default' # String | 

begin
  # Get AI Config variation
  result = api_instance.get_ai_config_variation(project_key, config_key, variation_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->get_ai_config_variation: #{e}"
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
  puts "Error when calling AgentControlApi->get_ai_config_variation_with_http_info: #{e}"
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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'default' # String | 
opts = {
  sort: 'sort_example', # String | A sort to apply to the list of AgentControl configs.
  limit: 56, # Integer | The number of resources to return.
  offset: 56, # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
  filter: 'filter_example' # String | A filter to apply to the list.
}

begin
  # List AI Configs
  result = api_instance.get_ai_configs(project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->get_ai_configs: #{e}"
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
  puts "Error when calling AgentControlApi->get_ai_configs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **sort** | **String** | A sort to apply to the list of AgentControl configs. | [optional] |
| **limit** | **Integer** | The number of resources to return. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |
| **filter** | **String** | A filter to apply to the list. | [optional] |

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
tool_key = 'tool_key_example' # String | 

begin
  # Get AI tool
  result = api_instance.get_ai_tool(project_key, tool_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->get_ai_tool: #{e}"
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
  puts "Error when calling AgentControlApi->get_ai_tool_with_http_info: #{e}"
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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'default' # String | 
model_config_key = 'default' # String | 

begin
  # Get AI model config
  result = api_instance.get_model_config(project_key, model_config_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->get_model_config: #{e}"
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
  puts "Error when calling AgentControlApi->get_model_config_with_http_info: #{e}"
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


## get_prompt_snippet

> <PromptSnippet> get_prompt_snippet(project_key, snippet_key)

Get a prompt snippet

Retrieve a specific prompt snippet by its key.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
snippet_key = 'snippet_key_example' # String | 

begin
  # Get a prompt snippet
  result = api_instance.get_prompt_snippet(project_key, snippet_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->get_prompt_snippet: #{e}"
end
```

#### Using the get_prompt_snippet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PromptSnippet>, Integer, Hash)> get_prompt_snippet_with_http_info(project_key, snippet_key)

```ruby
begin
  # Get a prompt snippet
  data, status_code, headers = api_instance.get_prompt_snippet_with_http_info(project_key, snippet_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PromptSnippet>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->get_prompt_snippet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **snippet_key** | **String** |  |  |

### Return type

[**PromptSnippet**](PromptSnippet.md)

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

api_instance = LaunchDarklyApi::AgentControlApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
opts = {
  limit: 56, # Integer | The number of resources to return.
  offset: 56, # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
  filter: 'filter_example' # String | A filter to apply to the list.
}

begin
  # List agent graphs
  result = api_instance.list_agent_graphs(ld_api_version, project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->list_agent_graphs: #{e}"
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
  puts "Error when calling AgentControlApi->list_agent_graphs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **limit** | **Integer** | The number of resources to return. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |
| **filter** | **String** | A filter to apply to the list. | [optional] |

### Return type

[**AgentGraphs**](AgentGraphs.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_agent_optimization_results

> <AgentOptimizationResults> list_agent_optimization_results(project_key, optimization_key, opts)

List agent optimization runs

Get the most recent result for each unique run of an agent optimization.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
optimization_key = 'optimization_key_example' # String | 
opts = {
  limit: 56, # Integer | The number of resources to return.
  offset: 56 # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
}

begin
  # List agent optimization runs
  result = api_instance.list_agent_optimization_results(project_key, optimization_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->list_agent_optimization_results: #{e}"
end
```

#### Using the list_agent_optimization_results_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentOptimizationResults>, Integer, Hash)> list_agent_optimization_results_with_http_info(project_key, optimization_key, opts)

```ruby
begin
  # List agent optimization runs
  data, status_code, headers = api_instance.list_agent_optimization_results_with_http_info(project_key, optimization_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentOptimizationResults>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->list_agent_optimization_results_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **optimization_key** | **String** |  |  |
| **limit** | **Integer** | The number of resources to return. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |

### Return type

[**AgentOptimizationResults**](AgentOptimizationResults.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_agent_optimization_results_by_run_id

> <AgentOptimizationResults> list_agent_optimization_results_by_run_id(project_key, optimization_key, run_id)

List agent optimization results for a run

Get all results for a specific run of an agent optimization, sorted by iteration descending.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
optimization_key = 'optimization_key_example' # String | 
run_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # List agent optimization results for a run
  result = api_instance.list_agent_optimization_results_by_run_id(project_key, optimization_key, run_id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->list_agent_optimization_results_by_run_id: #{e}"
end
```

#### Using the list_agent_optimization_results_by_run_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentOptimizationResults>, Integer, Hash)> list_agent_optimization_results_by_run_id_with_http_info(project_key, optimization_key, run_id)

```ruby
begin
  # List agent optimization results for a run
  data, status_code, headers = api_instance.list_agent_optimization_results_by_run_id_with_http_info(project_key, optimization_key, run_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentOptimizationResults>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->list_agent_optimization_results_by_run_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **optimization_key** | **String** |  |  |
| **run_id** | **String** |  |  |

### Return type

[**AgentOptimizationResults**](AgentOptimizationResults.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_agent_optimizations

> <AgentOptimizations> list_agent_optimizations(project_key, opts)

List agent optimizations

Get a list of all agent optimizations in the given project.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
opts = {
  limit: 56, # Integer | The number of resources to return.
  offset: 56, # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
  filter: 'filter_example' # String | A filter to apply to the list.
}

begin
  # List agent optimizations
  result = api_instance.list_agent_optimizations(project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->list_agent_optimizations: #{e}"
end
```

#### Using the list_agent_optimizations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentOptimizations>, Integer, Hash)> list_agent_optimizations_with_http_info(project_key, opts)

```ruby
begin
  # List agent optimizations
  data, status_code, headers = api_instance.list_agent_optimizations_with_http_info(project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentOptimizations>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->list_agent_optimizations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **limit** | **Integer** | The number of resources to return. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |
| **filter** | **String** | A filter to apply to the list. | [optional] |

### Return type

[**AgentOptimizations**](AgentOptimizations.md)

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
tool_key = 'tool_key_example' # String | 
opts = {
  sort: 'sort_example', # String | A sort to apply to the list of AgentControl configs.
  limit: 56, # Integer | The number of resources to return.
  offset: 56 # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
}

begin
  # List AI tool versions
  result = api_instance.list_ai_tool_versions(project_key, tool_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->list_ai_tool_versions: #{e}"
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
  puts "Error when calling AgentControlApi->list_ai_tool_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **tool_key** | **String** |  |  |
| **sort** | **String** | A sort to apply to the list of AgentControl configs. | [optional] |
| **limit** | **Integer** | The number of resources to return. | [optional] |
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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
opts = {
  sort: 'sort_example', # String | A sort to apply to the list of AgentControl configs.
  limit: 56, # Integer | The number of resources to return.
  offset: 56, # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
  filter: 'filter_example' # String | A filter to apply to the list.
}

begin
  # List AI tools
  result = api_instance.list_ai_tools(project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->list_ai_tools: #{e}"
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
  puts "Error when calling AgentControlApi->list_ai_tools_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **sort** | **String** | A sort to apply to the list of AgentControl configs. | [optional] |
| **limit** | **Integer** | The number of resources to return. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |
| **filter** | **String** | A filter to apply to the list. | [optional] |

### Return type

[**AITools**](AITools.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_all_agent_optimization_results

> <AgentOptimizationResults> list_all_agent_optimization_results(project_key, optimization_key, opts)

List all agent optimization results across versions

Get all results across all versions of an agent optimization.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
optimization_key = 'optimization_key_example' # String | 
opts = {
  limit: 56, # Integer | The number of resources to return.
  offset: 56 # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
}

begin
  # List all agent optimization results across versions
  result = api_instance.list_all_agent_optimization_results(project_key, optimization_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->list_all_agent_optimization_results: #{e}"
end
```

#### Using the list_all_agent_optimization_results_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentOptimizationResults>, Integer, Hash)> list_all_agent_optimization_results_with_http_info(project_key, optimization_key, opts)

```ruby
begin
  # List all agent optimization results across versions
  data, status_code, headers = api_instance.list_all_agent_optimization_results_with_http_info(project_key, optimization_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentOptimizationResults>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->list_all_agent_optimization_results_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **optimization_key** | **String** |  |  |
| **limit** | **Integer** | The number of resources to return. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |

### Return type

[**AgentOptimizationResults**](AgentOptimizationResults.md)

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'default' # String | 
opts = {
  restricted: true # Boolean | Whether to return only restricted models
}

begin
  # List AI model configs
  result = api_instance.list_model_configs(project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->list_model_configs: #{e}"
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
  puts "Error when calling AgentControlApi->list_model_configs_with_http_info: #{e}"
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


## list_prompt_snippet_references

> <SnippetReferences> list_prompt_snippet_references(project_key, snippet_key, opts)

List prompt snippet references

Get all config variations that currently reference this prompt snippet.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
snippet_key = 'snippet_key_example' # String | 
opts = {
  limit: 56, # Integer | The number of resources to return.
  offset: 56 # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
}

begin
  # List prompt snippet references
  result = api_instance.list_prompt_snippet_references(project_key, snippet_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->list_prompt_snippet_references: #{e}"
end
```

#### Using the list_prompt_snippet_references_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SnippetReferences>, Integer, Hash)> list_prompt_snippet_references_with_http_info(project_key, snippet_key, opts)

```ruby
begin
  # List prompt snippet references
  data, status_code, headers = api_instance.list_prompt_snippet_references_with_http_info(project_key, snippet_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SnippetReferences>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->list_prompt_snippet_references_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **snippet_key** | **String** |  |  |
| **limit** | **Integer** | The number of resources to return. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |

### Return type

[**SnippetReferences**](SnippetReferences.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_prompt_snippet_versions

> <PromptSnippets> list_prompt_snippet_versions(project_key, snippet_key, opts)

List prompt snippet versions

Get all versions of a prompt snippet in the given project, ordered by version descending.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
snippet_key = 'snippet_key_example' # String | 
opts = {
  limit: 56, # Integer | The number of resources to return.
  offset: 56 # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
}

begin
  # List prompt snippet versions
  result = api_instance.list_prompt_snippet_versions(project_key, snippet_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->list_prompt_snippet_versions: #{e}"
end
```

#### Using the list_prompt_snippet_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PromptSnippets>, Integer, Hash)> list_prompt_snippet_versions_with_http_info(project_key, snippet_key, opts)

```ruby
begin
  # List prompt snippet versions
  data, status_code, headers = api_instance.list_prompt_snippet_versions_with_http_info(project_key, snippet_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PromptSnippets>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->list_prompt_snippet_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **snippet_key** | **String** |  |  |
| **limit** | **Integer** | The number of resources to return. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |

### Return type

[**PromptSnippets**](PromptSnippets.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_prompt_snippets

> <PromptSnippets> list_prompt_snippets(project_key, opts)

List prompt snippets

Get a list of all prompt snippets in the given project.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
opts = {
  limit: 56, # Integer | The number of resources to return.
  offset: 56, # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
  filter: 'filter_example' # String | A filter to apply to the list.
}

begin
  # List prompt snippets
  result = api_instance.list_prompt_snippets(project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->list_prompt_snippets: #{e}"
end
```

#### Using the list_prompt_snippets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PromptSnippets>, Integer, Hash)> list_prompt_snippets_with_http_info(project_key, opts)

```ruby
begin
  # List prompt snippets
  data, status_code, headers = api_instance.list_prompt_snippets_with_http_info(project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PromptSnippets>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->list_prompt_snippets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **limit** | **Integer** | The number of resources to return. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |
| **filter** | **String** | A filter to apply to the list. | [optional] |

### Return type

[**PromptSnippets**](PromptSnippets.md)

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

api_instance = LaunchDarklyApi::AgentControlApi.new
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
  puts "Error when calling AgentControlApi->patch_agent_graph: #{e}"
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
  puts "Error when calling AgentControlApi->patch_agent_graph_with_http_info: #{e}"
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


## patch_agent_optimization

> <AgentOptimization> patch_agent_optimization(project_key, optimization_key, agent_optimization_patch)

Update an agent optimization

Update an existing agent optimization. Creates a new version of the optimization.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
optimization_key = 'optimization_key_example' # String | 
agent_optimization_patch = LaunchDarklyApi::AgentOptimizationPatch.new # AgentOptimizationPatch | Agent optimization fields to update

begin
  # Update an agent optimization
  result = api_instance.patch_agent_optimization(project_key, optimization_key, agent_optimization_patch)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->patch_agent_optimization: #{e}"
end
```

#### Using the patch_agent_optimization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentOptimization>, Integer, Hash)> patch_agent_optimization_with_http_info(project_key, optimization_key, agent_optimization_patch)

```ruby
begin
  # Update an agent optimization
  data, status_code, headers = api_instance.patch_agent_optimization_with_http_info(project_key, optimization_key, agent_optimization_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentOptimization>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->patch_agent_optimization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **optimization_key** | **String** |  |  |
| **agent_optimization_patch** | [**AgentOptimizationPatch**](AgentOptimizationPatch.md) | Agent optimization fields to update |  |

### Return type

[**AgentOptimization**](AgentOptimization.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_agent_optimization_result

> <AgentOptimizationResult> patch_agent_optimization_result(project_key, optimization_key, result_id, agent_optimization_result_patch)

Update an agent optimization result

Update status, activity, and AI request metadata fields on an agent optimization result.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
optimization_key = 'optimization_key_example' # String | 
result_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
agent_optimization_result_patch = LaunchDarklyApi::AgentOptimizationResultPatch.new # AgentOptimizationResultPatch | Agent optimization result fields to update

begin
  # Update an agent optimization result
  result = api_instance.patch_agent_optimization_result(project_key, optimization_key, result_id, agent_optimization_result_patch)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->patch_agent_optimization_result: #{e}"
end
```

#### Using the patch_agent_optimization_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentOptimizationResult>, Integer, Hash)> patch_agent_optimization_result_with_http_info(project_key, optimization_key, result_id, agent_optimization_result_patch)

```ruby
begin
  # Update an agent optimization result
  data, status_code, headers = api_instance.patch_agent_optimization_result_with_http_info(project_key, optimization_key, result_id, agent_optimization_result_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentOptimizationResult>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->patch_agent_optimization_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **optimization_key** | **String** |  |  |
| **result_id** | **String** |  |  |
| **agent_optimization_result_patch** | [**AgentOptimizationResultPatch**](AgentOptimizationResultPatch.md) | Agent optimization result fields to update |  |

### Return type

[**AgentOptimizationResult**](AgentOptimizationResult.md)

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

api_instance = LaunchDarklyApi::AgentControlApi.new
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
  puts "Error when calling AgentControlApi->patch_ai_config: #{e}"
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
  puts "Error when calling AgentControlApi->patch_ai_config_with_http_info: #{e}"
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

api_instance = LaunchDarklyApi::AgentControlApi.new
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
  puts "Error when calling AgentControlApi->patch_ai_config_targeting: #{e}"
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
  puts "Error when calling AgentControlApi->patch_ai_config_targeting_with_http_info: #{e}"
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

api_instance = LaunchDarklyApi::AgentControlApi.new
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
  puts "Error when calling AgentControlApi->patch_ai_config_variation: #{e}"
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
  puts "Error when calling AgentControlApi->patch_ai_config_variation_with_http_info: #{e}"
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

api_instance = LaunchDarklyApi::AgentControlApi.new
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
  puts "Error when calling AgentControlApi->patch_ai_tool: #{e}"
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
  puts "Error when calling AgentControlApi->patch_ai_tool_with_http_info: #{e}"
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


## patch_prompt_snippet

> <PromptSnippet> patch_prompt_snippet(project_key, snippet_key, prompt_snippet_patch)

Update a prompt snippet

Update an existing prompt snippet. Creates a new version of the snippet.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
snippet_key = 'snippet_key_example' # String | 
prompt_snippet_patch = LaunchDarklyApi::PromptSnippetPatch.new # PromptSnippetPatch | Prompt snippet fields to update

begin
  # Update a prompt snippet
  result = api_instance.patch_prompt_snippet(project_key, snippet_key, prompt_snippet_patch)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->patch_prompt_snippet: #{e}"
end
```

#### Using the patch_prompt_snippet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PromptSnippet>, Integer, Hash)> patch_prompt_snippet_with_http_info(project_key, snippet_key, prompt_snippet_patch)

```ruby
begin
  # Update a prompt snippet
  data, status_code, headers = api_instance.patch_prompt_snippet_with_http_info(project_key, snippet_key, prompt_snippet_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PromptSnippet>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->patch_prompt_snippet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **snippet_key** | **String** |  |  |
| **prompt_snippet_patch** | [**PromptSnippetPatch**](PromptSnippetPatch.md) | Prompt snippet fields to update |  |

### Return type

[**PromptSnippet**](PromptSnippet.md)

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

api_instance = LaunchDarklyApi::AgentControlApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'project_key_example' # String | 
agent_graph_post = LaunchDarklyApi::AgentGraphPost.new({key: 'key_example', name: 'name_example'}) # AgentGraphPost | Agent graph object to create

begin
  # Create new agent graph
  result = api_instance.post_agent_graph(ld_api_version, project_key, agent_graph_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->post_agent_graph: #{e}"
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
  puts "Error when calling AgentControlApi->post_agent_graph_with_http_info: #{e}"
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


## post_agent_optimization

> <AgentOptimization> post_agent_optimization(project_key, agent_optimization_post)

Create agent optimization

Create a new agent optimization within the given project.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
agent_optimization_post = LaunchDarklyApi::AgentOptimizationPost.new({key: 'key_example', ai_config_key: 'ai_config_key_example', max_attempts: 37, judge_model: 'judge_model_example'}) # AgentOptimizationPost | Agent optimization object to create

begin
  # Create agent optimization
  result = api_instance.post_agent_optimization(project_key, agent_optimization_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->post_agent_optimization: #{e}"
end
```

#### Using the post_agent_optimization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentOptimization>, Integer, Hash)> post_agent_optimization_with_http_info(project_key, agent_optimization_post)

```ruby
begin
  # Create agent optimization
  data, status_code, headers = api_instance.post_agent_optimization_with_http_info(project_key, agent_optimization_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentOptimization>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->post_agent_optimization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **agent_optimization_post** | [**AgentOptimizationPost**](AgentOptimizationPost.md) | Agent optimization object to create |  |

### Return type

[**AgentOptimization**](AgentOptimization.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_agent_optimization_result

> <AgentOptimizationResult> post_agent_optimization_result(project_key, optimization_key, agent_optimization_result_post)

Create agent optimization result

Create a new result for an agent optimization run.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
optimization_key = 'optimization_key_example' # String | 
agent_optimization_result_post = LaunchDarklyApi::AgentOptimizationResultPost.new({run_id: 'run_id_example', agent_optimization_version: 37, iteration: 37, instructions: 'instructions_example', user_input: 'user_input_example'}) # AgentOptimizationResultPost | Agent optimization result to create

begin
  # Create agent optimization result
  result = api_instance.post_agent_optimization_result(project_key, optimization_key, agent_optimization_result_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->post_agent_optimization_result: #{e}"
end
```

#### Using the post_agent_optimization_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentOptimizationResult>, Integer, Hash)> post_agent_optimization_result_with_http_info(project_key, optimization_key, agent_optimization_result_post)

```ruby
begin
  # Create agent optimization result
  data, status_code, headers = api_instance.post_agent_optimization_result_with_http_info(project_key, optimization_key, agent_optimization_result_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentOptimizationResult>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->post_agent_optimization_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **optimization_key** | **String** |  |  |
| **agent_optimization_result_post** | [**AgentOptimizationResultPost**](AgentOptimizationResultPost.md) | Agent optimization result to create |  |

### Return type

[**AgentOptimizationResult**](AgentOptimizationResult.md)

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
ai_config_post = LaunchDarklyApi::AIConfigPost.new({key: 'key_example', name: 'name_example'}) # AIConfigPost | AI Config object to create

begin
  # Create new AI Config
  result = api_instance.post_ai_config(project_key, ai_config_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->post_ai_config: #{e}"
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
  puts "Error when calling AgentControlApi->post_ai_config_with_http_info: #{e}"
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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
config_key = 'config_key_example' # String | 
ai_config_variation_post = LaunchDarklyApi::AIConfigVariationPost.new({key: 'key_example', name: 'name_example'}) # AIConfigVariationPost | AI Config variation object to create

begin
  # Create AI Config variation
  result = api_instance.post_ai_config_variation(project_key, config_key, ai_config_variation_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->post_ai_config_variation: #{e}"
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
  puts "Error when calling AgentControlApi->post_ai_config_variation_with_http_info: #{e}"
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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
ai_tool_post = LaunchDarklyApi::AIToolPost.new({key: 'key_example', schema: 3.56}) # AIToolPost | AI tool object to create

begin
  # Create an AI tool
  result = api_instance.post_ai_tool(project_key, ai_tool_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->post_ai_tool: #{e}"
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
  puts "Error when calling AgentControlApi->post_ai_tool_with_http_info: #{e}"
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

Create an AI model config. You can use this in any variation for any config in your project.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'default' # String | 
model_config_post = LaunchDarklyApi::ModelConfigPost.new({name: 'name_example', key: 'key_example', id: 'id_example'}) # ModelConfigPost | AI model config object to create

begin
  # Create an AI model config
  result = api_instance.post_model_config(project_key, model_config_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->post_model_config: #{e}"
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
  puts "Error when calling AgentControlApi->post_model_config_with_http_info: #{e}"
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


## post_prompt_snippet

> <PromptSnippet> post_prompt_snippet(project_key, prompt_snippet_post)

Create a prompt snippet

Create a new prompt snippet within the given project.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'project_key_example' # String | 
prompt_snippet_post = LaunchDarklyApi::PromptSnippetPost.new({key: 'key_example', name: 'name_example', text: 'text_example'}) # PromptSnippetPost | Prompt snippet object to create

begin
  # Create a prompt snippet
  result = api_instance.post_prompt_snippet(project_key, prompt_snippet_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->post_prompt_snippet: #{e}"
end
```

#### Using the post_prompt_snippet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PromptSnippet>, Integer, Hash)> post_prompt_snippet_with_http_info(project_key, prompt_snippet_post)

```ruby
begin
  # Create a prompt snippet
  data, status_code, headers = api_instance.post_prompt_snippet_with_http_info(project_key, prompt_snippet_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PromptSnippet>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->post_prompt_snippet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **prompt_snippet_post** | [**PromptSnippetPost**](PromptSnippetPost.md) | Prompt snippet object to create |  |

### Return type

[**PromptSnippet**](PromptSnippet.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_restricted_models

> <RestrictedModelsResponse> post_restricted_models(project_key, restricted_models_request)

Add AI models to the restricted list

Add AI models, by key, to the restricted list. Keys are included in the response from the [List AI model configs](https://launchdarkly.com/docs/api/agent-control/list-model-configs) endpoint.

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

api_instance = LaunchDarklyApi::AgentControlApi.new
project_key = 'default' # String | 
restricted_models_request = LaunchDarklyApi::RestrictedModelsRequest.new({keys: ['keys_example']}) # RestrictedModelsRequest | List of AI model keys to add to the restricted list.

begin
  # Add AI models to the restricted list
  result = api_instance.post_restricted_models(project_key, restricted_models_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AgentControlApi->post_restricted_models: #{e}"
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
  puts "Error when calling AgentControlApi->post_restricted_models_with_http_info: #{e}"
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

