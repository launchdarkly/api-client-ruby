# LaunchDarklyApi::SDKKeysBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_sdk_key_by_key**](SDKKeysBetaApi.md#delete_sdk_key_by_key) | **DELETE** /api/v2/projects/{projectKey}/environments/{environmentKey}/sdk-keys/{sdkKeyKey} | Delete SDK key |
| [**get_sdk_key_by_key**](SDKKeysBetaApi.md#get_sdk_key_by_key) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/sdk-keys/{sdkKeyKey} | Get SDK key |
| [**get_sdk_keys**](SDKKeysBetaApi.md#get_sdk_keys) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/sdk-keys | Get all environment SDK keys |
| [**patch_sdk_key_by_key**](SDKKeysBetaApi.md#patch_sdk_key_by_key) | **PATCH** /api/v2/projects/{projectKey}/environments/{environmentKey}/sdk-keys/{sdkKeyKey} | Update SDK key |
| [**post_sdk_key**](SDKKeysBetaApi.md#post_sdk_key) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/sdk-keys | Create SDK key |


## delete_sdk_key_by_key

> delete_sdk_key_by_key(ld_api_version, project_key, environment_key, sdk_key_key)

Delete SDK key

Delete a specific SDK key by its key.

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::SDKKeysBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
environment_key = 'production' # String | 
sdk_key_key = 'my-sdk-key' # String | The user-defined identifying key of the SDK key. This is used solely to identify an SDK key and is distinct from the value field, which is the actual SDK key value.

begin
  # Delete SDK key
  api_instance.delete_sdk_key_by_key(ld_api_version, project_key, environment_key, sdk_key_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SDKKeysBetaApi->delete_sdk_key_by_key: #{e}"
end
```

#### Using the delete_sdk_key_by_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_sdk_key_by_key_with_http_info(ld_api_version, project_key, environment_key, sdk_key_key)

```ruby
begin
  # Delete SDK key
  data, status_code, headers = api_instance.delete_sdk_key_by_key_with_http_info(ld_api_version, project_key, environment_key, sdk_key_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SDKKeysBetaApi->delete_sdk_key_by_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **environment_key** | **String** |  |  |
| **sdk_key_key** | **String** | The user-defined identifying key of the SDK key. This is used solely to identify an SDK key and is distinct from the value field, which is the actual SDK key value. |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sdk_key_by_key

> <SdkKey> get_sdk_key_by_key(ld_api_version, project_key, environment_key, sdk_key_key)

Get SDK key

Get a specific SDK key by its key.

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::SDKKeysBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
environment_key = 'production' # String | 
sdk_key_key = 'my-sdk-key' # String | The user-defined identifying key of the SDK key. This is used solely to identify an SDK key and is distinct from the value field, which is the actual SDK key value.

begin
  # Get SDK key
  result = api_instance.get_sdk_key_by_key(ld_api_version, project_key, environment_key, sdk_key_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SDKKeysBetaApi->get_sdk_key_by_key: #{e}"
end
```

#### Using the get_sdk_key_by_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdkKey>, Integer, Hash)> get_sdk_key_by_key_with_http_info(ld_api_version, project_key, environment_key, sdk_key_key)

```ruby
begin
  # Get SDK key
  data, status_code, headers = api_instance.get_sdk_key_by_key_with_http_info(ld_api_version, project_key, environment_key, sdk_key_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdkKey>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SDKKeysBetaApi->get_sdk_key_by_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **environment_key** | **String** |  |  |
| **sdk_key_key** | **String** | The user-defined identifying key of the SDK key. This is used solely to identify an SDK key and is distinct from the value field, which is the actual SDK key value. |  |

### Return type

[**SdkKey**](SdkKey.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sdk_keys

> <SdkKeysForGetSdkKeys> get_sdk_keys(ld_api_version, project_key, environment_key, opts)

Get all environment SDK keys

Get all SDK keys for a given project and environment. Can filter by kind.

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::SDKKeysBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
environment_key = 'production' # String | 
opts = {
  filter: 'filter_example', # String | A filter to apply to the list of SDK keys. Supports the following fields and operators: `kind` (equals \"sdk\" or \"mobile\"), `active` (equals true or false). Format: `field:value`. Example: `kind:sdk`.
  limit: 56, # Integer | The number of SDK keys to return. Defaults to 20. Maximum is 100.
  offset: 56, # Integer | The number of SDK keys to skip. Used for pagination.
  sort: 'createdAt' # String | A sort to apply to the list of SDK keys. Supported field: `createdAt`. Prefix the field with `-` to sort in descending order (for example, `-createdAt`).
}

begin
  # Get all environment SDK keys
  result = api_instance.get_sdk_keys(ld_api_version, project_key, environment_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SDKKeysBetaApi->get_sdk_keys: #{e}"
end
```

#### Using the get_sdk_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdkKeysForGetSdkKeys>, Integer, Hash)> get_sdk_keys_with_http_info(ld_api_version, project_key, environment_key, opts)

```ruby
begin
  # Get all environment SDK keys
  data, status_code, headers = api_instance.get_sdk_keys_with_http_info(ld_api_version, project_key, environment_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdkKeysForGetSdkKeys>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SDKKeysBetaApi->get_sdk_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **environment_key** | **String** |  |  |
| **filter** | **String** | A filter to apply to the list of SDK keys. Supports the following fields and operators: &#x60;kind&#x60; (equals \&quot;sdk\&quot; or \&quot;mobile\&quot;), &#x60;active&#x60; (equals true or false). Format: &#x60;field:value&#x60;. Example: &#x60;kind:sdk&#x60;. | [optional] |
| **limit** | **Integer** | The number of SDK keys to return. Defaults to 20. Maximum is 100. | [optional] |
| **offset** | **Integer** | The number of SDK keys to skip. Used for pagination. | [optional] |
| **sort** | **String** | A sort to apply to the list of SDK keys. Supported field: &#x60;createdAt&#x60;. Prefix the field with &#x60;-&#x60; to sort in descending order (for example, &#x60;-createdAt&#x60;). | [optional] |

### Return type

[**SdkKeysForGetSdkKeys**](SdkKeysForGetSdkKeys.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_sdk_key_by_key

> <SdkKey> patch_sdk_key_by_key(ld_api_version, project_key, environment_key, sdk_key_key, sdk_key_patch, opts)

Update SDK key

Update a an existing SDK key by its identifying key.

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::SDKKeysBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
environment_key = 'production' # String | 
sdk_key_key = 'my-sdk-key' # String | The user-defined identifying key of the SDK key. This is used solely to identify an SDK key and is distinct from the value field, which is the actual SDK key value.
sdk_key_patch = LaunchDarklyApi::SdkKeyPatch.new # SdkKeyPatch | An array of patches for updating an existing SDK key. The following fields are supported: `name`, `description`, `expiry`.
opts = {
  version: 56 # Integer | The version of the SDK key for optimistic locking. If provided, the update will only succeed if the current version matches.
}

begin
  # Update SDK key
  result = api_instance.patch_sdk_key_by_key(ld_api_version, project_key, environment_key, sdk_key_key, sdk_key_patch, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SDKKeysBetaApi->patch_sdk_key_by_key: #{e}"
end
```

#### Using the patch_sdk_key_by_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdkKey>, Integer, Hash)> patch_sdk_key_by_key_with_http_info(ld_api_version, project_key, environment_key, sdk_key_key, sdk_key_patch, opts)

```ruby
begin
  # Update SDK key
  data, status_code, headers = api_instance.patch_sdk_key_by_key_with_http_info(ld_api_version, project_key, environment_key, sdk_key_key, sdk_key_patch, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdkKey>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SDKKeysBetaApi->patch_sdk_key_by_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **environment_key** | **String** |  |  |
| **sdk_key_key** | **String** | The user-defined identifying key of the SDK key. This is used solely to identify an SDK key and is distinct from the value field, which is the actual SDK key value. |  |
| **sdk_key_patch** | [**SdkKeyPatch**](SdkKeyPatch.md) | An array of patches for updating an existing SDK key. The following fields are supported: &#x60;name&#x60;, &#x60;description&#x60;, &#x60;expiry&#x60;. |  |
| **version** | **Integer** | The version of the SDK key for optimistic locking. If provided, the update will only succeed if the current version matches. | [optional] |

### Return type

[**SdkKey**](SdkKey.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_sdk_key

> <SdkKey> post_sdk_key(ld_api_version, project_key, environment_key, sdk_key_post)

Create SDK key

Create a new server-side or mobile SDK key.

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::SDKKeysBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
environment_key = 'production' # String | 
sdk_key_post = LaunchDarklyApi::SdkKeyPost.new({key: 'key_example', name: 'name_example'}) # SdkKeyPost | Parameters for creating a new SDK key

begin
  # Create SDK key
  result = api_instance.post_sdk_key(ld_api_version, project_key, environment_key, sdk_key_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SDKKeysBetaApi->post_sdk_key: #{e}"
end
```

#### Using the post_sdk_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SdkKey>, Integer, Hash)> post_sdk_key_with_http_info(ld_api_version, project_key, environment_key, sdk_key_post)

```ruby
begin
  # Create SDK key
  data, status_code, headers = api_instance.post_sdk_key_with_http_info(ld_api_version, project_key, environment_key, sdk_key_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SdkKey>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SDKKeysBetaApi->post_sdk_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **environment_key** | **String** |  |  |
| **sdk_key_post** | [**SdkKeyPost**](SdkKeyPost.md) | Parameters for creating a new SDK key |  |

### Return type

[**SdkKey**](SdkKey.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

