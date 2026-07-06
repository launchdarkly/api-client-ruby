# LaunchDarklyApi::AIConfigsApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_agent_optimization_runs**](AIConfigsApi.md#list_agent_optimization_runs) | **GET** /api/v2/projects/{projectKey}/agent-optimizations/{optimizationKey}/runs | List agent optimization runs |
| [**list_ai_tool_references**](AIConfigsApi.md#list_ai_tool_references) | **GET** /api/v2/projects/{projectKey}/ai-tools/{toolKey}/references | List AI tool references |


## list_agent_optimization_runs

> <AgentOptimizationRuns> list_agent_optimization_runs(project_key, optimization_key, opts)

List agent optimization runs

Get one run summary per distinct run_id across all versions of an agent optimization config, ordered by created_at DESC.

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
optimization_key = 'optimization_key_example' # String | 
opts = {
  limit: 56, # Integer | The number of resources to return.
  offset: 56 # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
}

begin
  # List agent optimization runs
  result = api_instance.list_agent_optimization_runs(project_key, optimization_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->list_agent_optimization_runs: #{e}"
end
```

#### Using the list_agent_optimization_runs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentOptimizationRuns>, Integer, Hash)> list_agent_optimization_runs_with_http_info(project_key, optimization_key, opts)

```ruby
begin
  # List agent optimization runs
  data, status_code, headers = api_instance.list_agent_optimization_runs_with_http_info(project_key, optimization_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentOptimizationRuns>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->list_agent_optimization_runs_with_http_info: #{e}"
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

[**AgentOptimizationRuns**](AgentOptimizationRuns.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ai_tool_references

> <ToolReferences> list_ai_tool_references(project_key, tool_key, opts)

List AI tool references

Get all AgentControl config variations that currently reference this tool.

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
  limit: 56, # Integer | The number of resources to return.
  offset: 56 # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
}

begin
  # List AI tool references
  result = api_instance.list_ai_tool_references(project_key, tool_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->list_ai_tool_references: #{e}"
end
```

#### Using the list_ai_tool_references_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToolReferences>, Integer, Hash)> list_ai_tool_references_with_http_info(project_key, tool_key, opts)

```ruby
begin
  # List AI tool references
  data, status_code, headers = api_instance.list_ai_tool_references_with_http_info(project_key, tool_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToolReferences>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AIConfigsApi->list_ai_tool_references_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **tool_key** | **String** |  |  |
| **limit** | **Integer** | The number of resources to return. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |

### Return type

[**ToolReferences**](ToolReferences.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

