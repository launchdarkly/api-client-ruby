# SwaggerClient::CustomRolesApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_custom_role**](CustomRolesApi.md#delete_custom_role) | **DELETE** /roles/{customRoleKey} | Delete a custom role by key.
[**get_custom_role**](CustomRolesApi.md#get_custom_role) | **GET** /roles/{customRoleKey} | Get one custom role by key.
[**get_custom_roles**](CustomRolesApi.md#get_custom_roles) | **GET** /roles | Return a complete list of custom roles.
[**patch_custom_role**](CustomRolesApi.md#patch_custom_role) | **PATCH** /roles/{customRoleKey} | Modify a custom role by key.
[**post_custom_role**](CustomRolesApi.md#post_custom_role) | **POST** /roles | Create a new custom role.


# **delete_custom_role**
> delete_custom_role(custom_role_key, )

Delete a custom role by key.

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

api_instance = SwaggerClient::CustomRolesApi.new

custom_role_key = "custom_role_key_example" # String | The custom role key.


begin
  #Delete a custom role by key.
  api_instance.delete_custom_role(custom_role_key, )
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CustomRolesApi->delete_custom_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_role_key** | **String**| The custom role key. | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_custom_role**
> CustomRole get_custom_role(custom_role_key, )

Get one custom role by key.

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

api_instance = SwaggerClient::CustomRolesApi.new

custom_role_key = "custom_role_key_example" # String | The custom role key.


begin
  #Get one custom role by key.
  result = api_instance.get_custom_role(custom_role_key, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CustomRolesApi->get_custom_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_role_key** | **String**| The custom role key. | 

### Return type

[**CustomRole**](CustomRole.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_custom_roles**
> CustomRoles get_custom_roles

Return a complete list of custom roles.

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

api_instance = SwaggerClient::CustomRolesApi.new

begin
  #Return a complete list of custom roles.
  result = api_instance.get_custom_roles
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CustomRolesApi->get_custom_roles: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CustomRoles**](CustomRoles.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_custom_role**
> CustomRole patch_custom_role(custom_role_key, patch_delta)

Modify a custom role by key.

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

api_instance = SwaggerClient::CustomRolesApi.new

custom_role_key = "custom_role_key_example" # String | The custom role key.

patch_delta = [SwaggerClient::PatchOperation.new] # Array<PatchOperation> | Requires a JSON Patch representation of the desired changes to the project. 'http://jsonpatch.com/'


begin
  #Modify a custom role by key.
  result = api_instance.patch_custom_role(custom_role_key, patch_delta)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CustomRolesApi->patch_custom_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_role_key** | **String**| The custom role key. | 
 **patch_delta** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)| Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39; | 

### Return type

[**CustomRole**](CustomRole.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_custom_role**
> post_custom_role(custom_role_body)

Create a new custom role.

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

api_instance = SwaggerClient::CustomRolesApi.new

custom_role_body = SwaggerClient::CustomRoleBody.new # CustomRoleBody | New role or roles to create.


begin
  #Create a new custom role.
  api_instance.post_custom_role(custom_role_body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CustomRolesApi->post_custom_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_role_body** | [**CustomRoleBody**](CustomRoleBody.md)| New role or roles to create. | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



