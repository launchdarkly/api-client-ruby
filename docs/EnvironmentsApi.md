# SwaggerClient::EnvironmentsApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_environment**](EnvironmentsApi.md#delete_environment) | **DELETE** /environments/{projectKey}/{environmentKey} | Delete an environment by ID
[**get_environment**](EnvironmentsApi.md#get_environment) | **GET** /environments/{projectKey}/{environmentKey} | Get an environment given a project and key.
[**patch_environment**](EnvironmentsApi.md#patch_environment) | **PATCH** /environments/{projectKey}/{environmentKey} | Modify an environment by ID
[**post_environment**](EnvironmentsApi.md#post_environment) | **POST** /environments/{projectKey} | Create a new environment in a specified project with a given name, key, and swatch color.


# **delete_environment**
> delete_environment(project_key, environment_key, )

Delete an environment by ID

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

api_instance = SwaggerClient::EnvironmentsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = "environment_key_example" # String | The environment key


begin
  #Delete an environment by ID
  api_instance.delete_environment(project_key, environment_key, )
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EnvironmentsApi->delete_environment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_environment**
> Environment get_environment(project_key, environment_key, )

Get an environment given a project and key.

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

api_instance = SwaggerClient::EnvironmentsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = "environment_key_example" # String | The environment key


begin
  #Get an environment given a project and key.
  result = api_instance.get_environment(project_key, environment_key, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EnvironmentsApi->get_environment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key | 

### Return type

[**Environment**](Environment.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_environment**
> patch_environment(project_key, environment_key, patch_delta)

Modify an environment by ID

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

api_instance = SwaggerClient::EnvironmentsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = "environment_key_example" # String | The environment key

patch_delta = [SwaggerClient::PatchDelta.new] # Array<PatchDelta> | http://jsonpatch.com/


begin
  #Modify an environment by ID
  api_instance.patch_environment(project_key, environment_key, patch_delta)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EnvironmentsApi->patch_environment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key | 
 **patch_delta** | [**Array&lt;PatchDelta&gt;**](PatchDelta.md)| http://jsonpatch.com/ | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_environment**
> post_environment(project_key, environment_body)

Create a new environment in a specified project with a given name, key, and swatch color.

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

api_instance = SwaggerClient::EnvironmentsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_body = SwaggerClient::EnvironmentBody.new # EnvironmentBody | New environment


begin
  #Create a new environment in a specified project with a given name, key, and swatch color.
  api_instance.post_environment(project_key, environment_body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EnvironmentsApi->post_environment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_body** | [**EnvironmentBody**](EnvironmentBody.md)| New environment | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



