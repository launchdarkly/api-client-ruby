# LaunchDarklyApi::EnvironmentsApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_environment**](EnvironmentsApi.md#delete_environment) | **DELETE** /projects/{projectKey}/environments/{environmentKey} | Delete an environment in a specific project.
[**get_environment**](EnvironmentsApi.md#get_environment) | **GET** /projects/{projectKey}/environments/{environmentKey} | Get an environment given a project and key.
[**patch_environment**](EnvironmentsApi.md#patch_environment) | **PATCH** /projects/{projectKey}/environments/{environmentKey} | Modify an environment by ID. If you try to patch the environment by setting both required and requiredApprovalTags, it will result in an error. Users can specify either required approvals for all flags in an environment or those with specific tags, but not both. Only customers on an Enterprise plan can require approval for flag updates with either mechanism.
[**post_environment**](EnvironmentsApi.md#post_environment) | **POST** /projects/{projectKey}/environments | Create a new environment in a specified project with a given name, key, and swatch color.
[**reset_environment_mobile_key**](EnvironmentsApi.md#reset_environment_mobile_key) | **POST** /projects/{projectKey}/environments/{environmentKey}/mobileKey | Reset an environment&#39;s mobile key. The optional expiry for the old key is deprecated for this endpoint, so the old key will always expire immediately.
[**reset_environment_sdk_key**](EnvironmentsApi.md#reset_environment_sdk_key) | **POST** /projects/{projectKey}/environments/{environmentKey}/apiKey | Reset an environment&#39;s SDK key with an optional expiry time for the old key.


# **delete_environment**
> delete_environment(project_key, environment_key, )

Delete an environment in a specific project.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::EnvironmentsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.


begin
  #Delete an environment in a specific project.
  api_instance.delete_environment(project_key, environment_key, )
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling EnvironmentsApi->delete_environment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 

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
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::EnvironmentsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.


begin
  #Get an environment given a project and key.
  result = api_instance.get_environment(project_key, environment_key, )
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling EnvironmentsApi->get_environment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 

### Return type

[**Environment**](Environment.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_environment**
> Environment patch_environment(project_key, environment_key, patch_delta)

Modify an environment by ID. If you try to patch the environment by setting both required and requiredApprovalTags, it will result in an error. Users can specify either required approvals for all flags in an environment or those with specific tags, but not both. Only customers on an Enterprise plan can require approval for flag updates with either mechanism.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::EnvironmentsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

patch_delta = [LaunchDarklyApi::PatchOperation.new] # Array<PatchOperation> | Requires a JSON Patch representation of the desired changes to the project. 'http://jsonpatch.com/'


begin
  #Modify an environment by ID. If you try to patch the environment by setting both required and requiredApprovalTags, it will result in an error. Users can specify either required approvals for all flags in an environment or those with specific tags, but not both. Only customers on an Enterprise plan can require approval for flag updates with either mechanism.
  result = api_instance.patch_environment(project_key, environment_key, patch_delta)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling EnvironmentsApi->patch_environment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **patch_delta** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)| Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39; | 

### Return type

[**Environment**](Environment.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_environment**
> Environment post_environment(project_key, environment_body)

Create a new environment in a specified project with a given name, key, and swatch color.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::EnvironmentsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_body = LaunchDarklyApi::EnvironmentPost.new # EnvironmentPost | New environment.


begin
  #Create a new environment in a specified project with a given name, key, and swatch color.
  result = api_instance.post_environment(project_key, environment_body)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling EnvironmentsApi->post_environment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_body** | [**EnvironmentPost**](EnvironmentPost.md)| New environment. | 

### Return type

[**Environment**](Environment.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **reset_environment_mobile_key**
> Environment reset_environment_mobile_key(project_key, environment_key, , opts)

Reset an environment's mobile key. The optional expiry for the old key is deprecated for this endpoint, so the old key will always expire immediately.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::EnvironmentsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

opts = { 
  expiry: 789 # Integer | The expiry parameter is deprecated for this endpoint, so the old mobile key will always expire immediately. This parameter will be removed in an upcoming major API client version.
}

begin
  #Reset an environment's mobile key. The optional expiry for the old key is deprecated for this endpoint, so the old key will always expire immediately.
  result = api_instance.reset_environment_mobile_key(project_key, environment_key, , opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling EnvironmentsApi->reset_environment_mobile_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **expiry** | **Integer**| The expiry parameter is deprecated for this endpoint, so the old mobile key will always expire immediately. This parameter will be removed in an upcoming major API client version. | [optional] 

### Return type

[**Environment**](Environment.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **reset_environment_sdk_key**
> Environment reset_environment_sdk_key(project_key, environment_key, , opts)

Reset an environment's SDK key with an optional expiry time for the old key.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::EnvironmentsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

opts = { 
  expiry: 789 # Integer | An expiration time for the old environment SDK key, expressed as a Unix epoch time in milliseconds. By default, the key will expire immediately.
}

begin
  #Reset an environment's SDK key with an optional expiry time for the old key.
  result = api_instance.reset_environment_sdk_key(project_key, environment_key, , opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling EnvironmentsApi->reset_environment_sdk_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **expiry** | **Integer**| An expiration time for the old environment SDK key, expressed as a Unix epoch time in milliseconds. By default, the key will expire immediately. | [optional] 

### Return type

[**Environment**](Environment.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



