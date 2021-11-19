# LaunchDarklyApi::CustomRolesApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_custom_role**](CustomRolesApi.md#delete_custom_role) | **DELETE** /api/v2/roles/{key} | Delete custom role |
| [**get_custom_role**](CustomRolesApi.md#get_custom_role) | **GET** /api/v2/roles/{key} | Get custom role |
| [**get_custom_roles**](CustomRolesApi.md#get_custom_roles) | **GET** /api/v2/roles | List custom roles |
| [**patch_custom_role**](CustomRolesApi.md#patch_custom_role) | **PATCH** /api/v2/roles/{key} | Update custom role |
| [**post_custom_role**](CustomRolesApi.md#post_custom_role) | **POST** /api/v2/roles | Create custom role |


## delete_custom_role

> delete_custom_role(key)

Delete custom role

Delete a custom role by key

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

api_instance = LaunchDarklyApi::CustomRolesApi.new
key = 'key_example' # String | The key of the custom role to delete

begin
  # Delete custom role
  api_instance.delete_custom_role(key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CustomRolesApi->delete_custom_role: #{e}"
end
```

#### Using the delete_custom_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_custom_role_with_http_info(key)

```ruby
begin
  # Delete custom role
  data, status_code, headers = api_instance.delete_custom_role_with_http_info(key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CustomRolesApi->delete_custom_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The key of the custom role to delete |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_role

> <CustomRole> get_custom_role(key)

Get custom role

Get a single custom role by key or ID

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

api_instance = LaunchDarklyApi::CustomRolesApi.new
key = 'key_example' # String | The custom role's key or ID

begin
  # Get custom role
  result = api_instance.get_custom_role(key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CustomRolesApi->get_custom_role: #{e}"
end
```

#### Using the get_custom_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomRole>, Integer, Hash)> get_custom_role_with_http_info(key)

```ruby
begin
  # Get custom role
  data, status_code, headers = api_instance.get_custom_role_with_http_info(key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomRole>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CustomRolesApi->get_custom_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The custom role&#39;s key or ID |  |

### Return type

[**CustomRole**](CustomRole.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_roles

> <CustomRoles> get_custom_roles

List custom roles

Get a complete list of custom roles. Custom roles let you create flexible policies providing fine-grained access control to everything in LaunchDarkly, from feature flags to goals, environments, and teams. With custom roles, it's possible to enforce access policies that meet your exact workflow needs. Custom roles are available to customers on our enterprise plans. If you're interested in learning more about our enterprise plans, contact sales@launchdarkly.com.

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

api_instance = LaunchDarklyApi::CustomRolesApi.new

begin
  # List custom roles
  result = api_instance.get_custom_roles
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CustomRolesApi->get_custom_roles: #{e}"
end
```

#### Using the get_custom_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomRoles>, Integer, Hash)> get_custom_roles_with_http_info

```ruby
begin
  # List custom roles
  data, status_code, headers = api_instance.get_custom_roles_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomRoles>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CustomRolesApi->get_custom_roles_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CustomRoles**](CustomRoles.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_custom_role

> <CustomRole> patch_custom_role(key, patch_with_comment)

Update custom role

Update a single custom role. The request must be a valid JSON Patch document describing the changes to be made to the custom role.

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

api_instance = LaunchDarklyApi::CustomRolesApi.new
key = 'key_example' # String | The key of the custom role to update
patch_with_comment = LaunchDarklyApi::PatchWithComment.new({patch: [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/biscuits', value: Chocolate Digestive})]}) # PatchWithComment | 

begin
  # Update custom role
  result = api_instance.patch_custom_role(key, patch_with_comment)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CustomRolesApi->patch_custom_role: #{e}"
end
```

#### Using the patch_custom_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomRole>, Integer, Hash)> patch_custom_role_with_http_info(key, patch_with_comment)

```ruby
begin
  # Update custom role
  data, status_code, headers = api_instance.patch_custom_role_with_http_info(key, patch_with_comment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomRole>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CustomRolesApi->patch_custom_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The key of the custom role to update |  |
| **patch_with_comment** | [**PatchWithComment**](PatchWithComment.md) |  |  |

### Return type

[**CustomRole**](CustomRole.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_custom_role

> <CustomRole> post_custom_role(custom_role_post)

Create custom role

Create a new custom role

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

api_instance = LaunchDarklyApi::CustomRolesApi.new
custom_role_post = LaunchDarklyApi::CustomRolePost.new({name: 'name_example', key: 'key_example', policy: [LaunchDarklyApi::StatementPost.new({resources: ['resources_example'], actions: ['actions_example'], effect: 'effect_example'})]}) # CustomRolePost | 

begin
  # Create custom role
  result = api_instance.post_custom_role(custom_role_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CustomRolesApi->post_custom_role: #{e}"
end
```

#### Using the post_custom_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomRole>, Integer, Hash)> post_custom_role_with_http_info(custom_role_post)

```ruby
begin
  # Create custom role
  data, status_code, headers = api_instance.post_custom_role_with_http_info(custom_role_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomRole>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CustomRolesApi->post_custom_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_role_post** | [**CustomRolePost**](CustomRolePost.md) |  |  |

### Return type

[**CustomRole**](CustomRole.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

