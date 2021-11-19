# LaunchDarklyApi::WorkflowsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_workflow**](WorkflowsBetaApi.md#delete_workflow) | **DELETE** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/workflows/{workflowId} | Delete workflow |
| [**get_workflows**](WorkflowsBetaApi.md#get_workflows) | **GET** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/workflows | Get workflows |
| [**post_workflow**](WorkflowsBetaApi.md#post_workflow) | **POST** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/workflows | Create workflow |


## delete_workflow

> delete_workflow(project_key, feature_flag_key, environment_key, workflow_id)

Delete workflow

Delete a workflow from a feature flag

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

api_instance = LaunchDarklyApi::WorkflowsBetaApi.new
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key
environment_key = 'environment_key_example' # String | The environment key
workflow_id = 'workflow_id_example' # String | The workflow id

begin
  # Delete workflow
  api_instance.delete_workflow(project_key, feature_flag_key, environment_key, workflow_id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WorkflowsBetaApi->delete_workflow: #{e}"
end
```

#### Using the delete_workflow_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_workflow_with_http_info(project_key, feature_flag_key, environment_key, workflow_id)

```ruby
begin
  # Delete workflow
  data, status_code, headers = api_instance.delete_workflow_with_http_info(project_key, feature_flag_key, environment_key, workflow_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WorkflowsBetaApi->delete_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag&#39;s key |  |
| **environment_key** | **String** | The environment key |  |
| **workflow_id** | **String** | The workflow id |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workflows

> <CustomWorkflowsListingOutputRep> get_workflows(project_key, feature_flag_key, environment_key)

Get workflows

Get workflows from a feature flag

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

api_instance = LaunchDarklyApi::WorkflowsBetaApi.new
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key
environment_key = 'environment_key_example' # String | The environment key

begin
  # Get workflows
  result = api_instance.get_workflows(project_key, feature_flag_key, environment_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WorkflowsBetaApi->get_workflows: #{e}"
end
```

#### Using the get_workflows_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomWorkflowsListingOutputRep>, Integer, Hash)> get_workflows_with_http_info(project_key, feature_flag_key, environment_key)

```ruby
begin
  # Get workflows
  data, status_code, headers = api_instance.get_workflows_with_http_info(project_key, feature_flag_key, environment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomWorkflowsListingOutputRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WorkflowsBetaApi->get_workflows_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag&#39;s key |  |
| **environment_key** | **String** | The environment key |  |

### Return type

[**CustomWorkflowsListingOutputRep**](CustomWorkflowsListingOutputRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_workflow

> <CustomWorkflowOutputRep> post_workflow(project_key, feature_flag_key, environment_key, custom_workflow_input_rep)

Create workflow

Create a workflow for a feature flag

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

api_instance = LaunchDarklyApi::WorkflowsBetaApi.new
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key
environment_key = 'environment_key_example' # String | The environment key
custom_workflow_input_rep = LaunchDarklyApi::CustomWorkflowInputRep.new # CustomWorkflowInputRep | 

begin
  # Create workflow
  result = api_instance.post_workflow(project_key, feature_flag_key, environment_key, custom_workflow_input_rep)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WorkflowsBetaApi->post_workflow: #{e}"
end
```

#### Using the post_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomWorkflowOutputRep>, Integer, Hash)> post_workflow_with_http_info(project_key, feature_flag_key, environment_key, custom_workflow_input_rep)

```ruby
begin
  # Create workflow
  data, status_code, headers = api_instance.post_workflow_with_http_info(project_key, feature_flag_key, environment_key, custom_workflow_input_rep)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomWorkflowOutputRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WorkflowsBetaApi->post_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag&#39;s key |  |
| **environment_key** | **String** | The environment key |  |
| **custom_workflow_input_rep** | [**CustomWorkflowInputRep**](CustomWorkflowInputRep.md) |  |  |

### Return type

[**CustomWorkflowOutputRep**](CustomWorkflowOutputRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

