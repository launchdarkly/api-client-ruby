# LaunchDarklyApi::CustomRolesApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_custom_role**](CustomRolesApi.md#delete_custom_role) | **DELETE** /api/v2/roles/{customRoleKey} | Delete custom role |
| [**get_custom_role**](CustomRolesApi.md#get_custom_role) | **GET** /api/v2/roles/{customRoleKey} | Get custom role |
| [**get_custom_roles**](CustomRolesApi.md#get_custom_roles) | **GET** /api/v2/roles | List custom roles |
| [**patch_custom_role**](CustomRolesApi.md#patch_custom_role) | **PATCH** /api/v2/roles/{customRoleKey} | Update custom role |
| [**post_custom_role**](CustomRolesApi.md#post_custom_role) | **POST** /api/v2/roles | Create custom role |


## delete_custom_role

> delete_custom_role(custom_role_key)

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
custom_role_key = 'custom_role_key_example' # String | The custom role key

begin
  # Delete custom role
  api_instance.delete_custom_role(custom_role_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CustomRolesApi->delete_custom_role: #{e}"
end
```

#### Using the delete_custom_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_custom_role_with_http_info(custom_role_key)

```ruby
begin
  # Delete custom role
  data, status_code, headers = api_instance.delete_custom_role_with_http_info(custom_role_key)
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
| **custom_role_key** | **String** | The custom role key |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_role

> <CustomRole> get_custom_role(custom_role_key)

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
custom_role_key = 'custom_role_key_example' # String | The custom role key or ID

begin
  # Get custom role
  result = api_instance.get_custom_role(custom_role_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CustomRolesApi->get_custom_role: #{e}"
end
```

#### Using the get_custom_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomRole>, Integer, Hash)> get_custom_role_with_http_info(custom_role_key)

```ruby
begin
  # Get custom role
  data, status_code, headers = api_instance.get_custom_role_with_http_info(custom_role_key)
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
| **custom_role_key** | **String** | The custom role key or ID |  |

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

> <CustomRole> patch_custom_role(custom_role_key, patch_with_comment)

Update custom role

Update a single custom role. The request must be a valid JSON Patch document describing the changes to be made to the custom role. To add an element to the `policy` array, set the `path` to `/policy` and then append `/<array index>`. Using `/0` adds to the beginning of the array.

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
custom_role_key = 'custom_role_key_example' # String | The custom role key
patch_with_comment = LaunchDarklyApi::PatchWithComment.new({patch: [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField', value: new example value})]}) # PatchWithComment | 

begin
  # Update custom role
  result = api_instance.patch_custom_role(custom_role_key, patch_with_comment)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CustomRolesApi->patch_custom_role: #{e}"
end
```

#### Using the patch_custom_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomRole>, Integer, Hash)> patch_custom_role_with_http_info(custom_role_key, patch_with_comment)

```ruby
begin
  # Update custom role
  data, status_code, headers = api_instance.patch_custom_role_with_http_info(custom_role_key, patch_with_comment)
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
| **custom_role_key** | **String** | The custom role key |  |
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
custom_role_post = LaunchDarklyApi::CustomRolePost.new({name: 'Ops team', key: 'role-key-123abc', policy: [LaunchDarklyApi::StatementPost.new({effect: 'effect_example'})]}) # CustomRolePost | 

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

