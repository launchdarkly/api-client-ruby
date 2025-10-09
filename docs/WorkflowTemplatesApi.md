# LaunchDarklyApi::WorkflowTemplatesApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_workflow_template**](WorkflowTemplatesApi.md#create_workflow_template) | **POST** /api/v2/templates | Create workflow template |
| [**delete_workflow_template**](WorkflowTemplatesApi.md#delete_workflow_template) | **DELETE** /api/v2/templates/{templateKey} | Delete workflow template |
| [**get_workflow_templates**](WorkflowTemplatesApi.md#get_workflow_templates) | **GET** /api/v2/templates | Get workflow templates |


## create_workflow_template

> <WorkflowTemplateOutput> create_workflow_template(create_workflow_template_input)

Create workflow template

> ### Workflows are in maintenance mode > > The workflows feature is in maintenance mode, and is planned for future deprecation at a date not yet specified. We will work with existing customers using workflows to migrate to a replacement solution when deprecation occurs.  Create a template for a feature flag workflow. 

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

api_instance = LaunchDarklyApi::WorkflowTemplatesApi.new
create_workflow_template_input = LaunchDarklyApi::CreateWorkflowTemplateInput.new({key: 'key_example'}) # CreateWorkflowTemplateInput | 

begin
  # Create workflow template
  result = api_instance.create_workflow_template(create_workflow_template_input)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WorkflowTemplatesApi->create_workflow_template: #{e}"
end
```

#### Using the create_workflow_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTemplateOutput>, Integer, Hash)> create_workflow_template_with_http_info(create_workflow_template_input)

```ruby
begin
  # Create workflow template
  data, status_code, headers = api_instance.create_workflow_template_with_http_info(create_workflow_template_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTemplateOutput>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WorkflowTemplatesApi->create_workflow_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_workflow_template_input** | [**CreateWorkflowTemplateInput**](CreateWorkflowTemplateInput.md) |  |  |

### Return type

[**WorkflowTemplateOutput**](WorkflowTemplateOutput.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_workflow_template

> delete_workflow_template(template_key)

Delete workflow template

Delete a workflow template

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

api_instance = LaunchDarklyApi::WorkflowTemplatesApi.new
template_key = 'template_key_example' # String | The template key

begin
  # Delete workflow template
  api_instance.delete_workflow_template(template_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WorkflowTemplatesApi->delete_workflow_template: #{e}"
end
```

#### Using the delete_workflow_template_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_workflow_template_with_http_info(template_key)

```ruby
begin
  # Delete workflow template
  data, status_code, headers = api_instance.delete_workflow_template_with_http_info(template_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WorkflowTemplatesApi->delete_workflow_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_key** | **String** | The template key |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workflow_templates

> <WorkflowTemplatesListingOutputRep> get_workflow_templates(opts)

Get workflow templates

Get workflow templates belonging to an account, or can optionally return templates_endpoints.workflowTemplateSummariesListingOutputRep when summary query param is true

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

api_instance = LaunchDarklyApi::WorkflowTemplatesApi.new
opts = {
  summary: true, # Boolean | Whether the entire template object or just a summary should be returned
  search: 'search_example' # String | The substring in either the name or description of a template
}

begin
  # Get workflow templates
  result = api_instance.get_workflow_templates(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WorkflowTemplatesApi->get_workflow_templates: #{e}"
end
```

#### Using the get_workflow_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTemplatesListingOutputRep>, Integer, Hash)> get_workflow_templates_with_http_info(opts)

```ruby
begin
  # Get workflow templates
  data, status_code, headers = api_instance.get_workflow_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTemplatesListingOutputRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WorkflowTemplatesApi->get_workflow_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **summary** | **Boolean** | Whether the entire template object or just a summary should be returned | [optional] |
| **search** | **String** | The substring in either the name or description of a template | [optional] |

### Return type

[**WorkflowTemplatesListingOutputRep**](WorkflowTemplatesListingOutputRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

