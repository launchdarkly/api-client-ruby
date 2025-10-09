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

> <CustomRoles> get_custom_roles(opts)

List custom roles

Get a complete list of custom roles. This includes project and organization roles that you create, or that are provided as presets by LaunchDarkly. It does not include base roles.

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
opts = {
  limit: 789, # Integer | The maximum number of custom roles to return. Defaults to 20.
  offset: 789 # Integer | Where to start in the list. Defaults to 0. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
}

begin
  # List custom roles
  result = api_instance.get_custom_roles(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CustomRolesApi->get_custom_roles: #{e}"
end
```

#### Using the get_custom_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomRoles>, Integer, Hash)> get_custom_roles_with_http_info(opts)

```ruby
begin
  # List custom roles
  data, status_code, headers = api_instance.get_custom_roles_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomRoles>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CustomRolesApi->get_custom_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The maximum number of custom roles to return. Defaults to 20. | [optional] |
| **offset** | **Integer** | Where to start in the list. Defaults to 0. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |

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

Update a single custom role. Updating a custom role uses a [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) or [JSON merge patch](https://datatracker.ietf.org/doc/html/rfc7386) representation of the desired changes. To learn more, read [Updates](https://launchdarkly.com/docs/api#updates).<br/><br/>To add an element to the `policy` array, set the `path` to `/policy` and then append `/<array index>`. Use `/0` to add to the beginning of the array. Use `/-` to add to the end of the array.

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
patch_with_comment = LaunchDarklyApi::PatchWithComment.new({patch: [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField'})]}) # PatchWithComment | 

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
custom_role_post = LaunchDarklyApi::CustomRolePost.new({name: 'Ops team', key: 'role-key-123abc', policy: [LaunchDarklyApi::StatementPost.new({effect: 'allow'})]}) # CustomRolePost | 

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

