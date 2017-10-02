# SwaggerClient::ProjectsApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_project**](ProjectsApi.md#delete_project) | **DELETE** /projects/{projectKey} | Delete a project by ID
[**get_project**](ProjectsApi.md#get_project) | **GET** /projects/{projectKey} | Get a project by key.
[**get_projects**](ProjectsApi.md#get_projects) | **GET** /projects | Returns a list of all projects in the account.
[**patch_project**](ProjectsApi.md#patch_project) | **PATCH** /projects/{projectKey} | Modify a project by ID
[**post_project**](ProjectsApi.md#post_project) | **POST** /projects | Create a project


# **delete_project**
> delete_project(project_key, )

Delete a project by ID

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::ProjectsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.


begin
  #Delete a project by ID
  api_instance.delete_project(project_key, )
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->delete_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_project**
> Project get_project(project_key, )

Get a project by key.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::ProjectsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.


begin
  #Get a project by key.
  result = api_instance.get_project(project_key, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->get_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 

### Return type

[**Project**](Project.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_projects**
> Projects get_projects

Returns a list of all projects in the account.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::ProjectsApi.new

begin
  #Returns a list of all projects in the account.
  result = api_instance.get_projects
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->get_projects: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Projects**](Projects.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_project**
> patch_project(project_key, patch_delta)

Modify a project by ID

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::ProjectsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

patch_delta = [SwaggerClient::PatchDelta.new] # Array<PatchDelta> | http://jsonpatch.com/


begin
  #Modify a project by ID
  api_instance.patch_project(project_key, patch_delta)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->patch_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **patch_delta** | [**Array&lt;PatchDelta&gt;**](PatchDelta.md)| http://jsonpatch.com/ | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_project**
> post_project(project_body)

Create a project

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::ProjectsApi.new

project_body = SwaggerClient::ProjectBody.new # ProjectBody | New project


begin
  #Create a project
  api_instance.post_project(project_body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->post_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_body** | [**ProjectBody**](ProjectBody.md)| New project | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



