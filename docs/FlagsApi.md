# SwaggerClient::FlagsApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_feature_flag**](FlagsApi.md#delete_feature_flag) | **DELETE** /flags/{projectKey}/{featureFlagKey} | Delete a feature flag by ID
[**get_feature_flag**](FlagsApi.md#get_feature_flag) | **GET** /flags/{projectKey}/{featureFlagKey} | Get a single feature flag by key.
[**get_feature_flag_status**](FlagsApi.md#get_feature_flag_status) | **GET** /flag-statuses/{projectKey}/{environmentKey} | Get a list of statuses for all feature flags
[**get_feature_flag_statuses**](FlagsApi.md#get_feature_flag_statuses) | **GET** /flag-statuses/{projectKey}/{environmentKey}/{featureFlagKey} | Get a list of statuses for all feature flags
[**get_feature_flags**](FlagsApi.md#get_feature_flags) | **GET** /flags/{projectKey} | Get a list of all features in the given project.
[**patch_feature_flag**](FlagsApi.md#patch_feature_flag) | **PATCH** /flags/{projectKey}/{featureFlagKey} | Modify a feature flag by ID
[**post_feature_flag**](FlagsApi.md#post_feature_flag) | **POST** /flags/{projectKey} | Create a feature flag


# **delete_feature_flag**
> delete_feature_flag(project_key, feature_flag_key, )

Delete a feature flag by ID

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

api_instance = SwaggerClient::FlagsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = "feature_flag_key_example" # String | The feature flag's key. The key identifies the flag in your code.


begin
  #Delete a feature flag by ID
  api_instance.delete_feature_flag(project_key, feature_flag_key, )
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FlagsApi->delete_feature_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_feature_flag**
> FeatureFlag get_feature_flag(project_key, feature_flag_key, , opts)

Get a single feature flag by key.

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

api_instance = SwaggerClient::FlagsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = "feature_flag_key_example" # String | The feature flag's key. The key identifies the flag in your code.

opts = { 
  environment_key_query: "environment_key_query_example" # String | The environment key
}

begin
  #Get a single feature flag by key.
  result = api_instance.get_feature_flag(project_key, feature_flag_key, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FlagsApi->get_feature_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **environment_key_query** | **String**| The environment key | [optional] 

### Return type

[**FeatureFlag**](FeatureFlag.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_feature_flag_status**
> FeatureFlagStatuses get_feature_flag_status(project_key, environment_key, )

Get a list of statuses for all feature flags

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

api_instance = SwaggerClient::FlagsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = "environment_key_example" # String | The environment key


begin
  #Get a list of statuses for all feature flags
  result = api_instance.get_feature_flag_status(project_key, environment_key, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FlagsApi->get_feature_flag_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key | 

### Return type

[**FeatureFlagStatuses**](FeatureFlagStatuses.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_feature_flag_statuses**
> FeatureFlagStatus get_feature_flag_statuses(project_key, environment_key, feature_flag_key, )

Get a list of statuses for all feature flags

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

api_instance = SwaggerClient::FlagsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = "environment_key_example" # String | The environment key

feature_flag_key = "feature_flag_key_example" # String | The feature flag's key. The key identifies the flag in your code.


begin
  #Get a list of statuses for all feature flags
  result = api_instance.get_feature_flag_statuses(project_key, environment_key, feature_flag_key, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FlagsApi->get_feature_flag_statuses: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 

### Return type

[**FeatureFlagStatus**](FeatureFlagStatus.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_feature_flags**
> FeatureFlags get_feature_flags(project_key, , opts)

Get a list of all features in the given project.

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

api_instance = SwaggerClient::FlagsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

opts = { 
  environment_key_query: "environment_key_query_example" # String | The environment key
  tag: "tag_example" # String | Filter by tag. A tag can be used to group flags across projects.
}

begin
  #Get a list of all features in the given project.
  result = api_instance.get_feature_flags(project_key, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FlagsApi->get_feature_flags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key_query** | **String**| The environment key | [optional] 
 **tag** | **String**| Filter by tag. A tag can be used to group flags across projects. | [optional] 

### Return type

[**FeatureFlags**](FeatureFlags.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_feature_flag**
> FeatureFlag patch_feature_flag(project_key, feature_flag_key, patch_delta)

Modify a feature flag by ID

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

api_instance = SwaggerClient::FlagsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = "feature_flag_key_example" # String | The feature flag's key. The key identifies the flag in your code.

patch_delta = [SwaggerClient::PatchDelta.new] # Array<PatchDelta> | http://jsonpatch.com/


begin
  #Modify a feature flag by ID
  result = api_instance.patch_feature_flag(project_key, feature_flag_key, patch_delta)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FlagsApi->patch_feature_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **patch_delta** | [**Array&lt;PatchDelta&gt;**](PatchDelta.md)| http://jsonpatch.com/ | 

### Return type

[**FeatureFlag**](FeatureFlag.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_feature_flag**
> post_feature_flag(project_key, feature_flag_body)

Create a feature flag

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

api_instance = SwaggerClient::FlagsApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_body = SwaggerClient::FeatureFlagBody.new # FeatureFlagBody | Create a new feature flag


begin
  #Create a feature flag
  api_instance.post_feature_flag(project_key, feature_flag_body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FlagsApi->post_feature_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_body** | [**FeatureFlagBody**](FeatureFlagBody.md)| Create a new feature flag | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



