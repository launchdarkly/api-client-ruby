# LaunchDarklyApi::RelayProxyConfigurationsApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_relay_auto_config**](RelayProxyConfigurationsApi.md#delete_relay_auto_config) | **DELETE** /api/v2/account/relay-auto-configs/{id} | Delete Relay Proxy config by ID |
| [**get_relay_proxy_config**](RelayProxyConfigurationsApi.md#get_relay_proxy_config) | **GET** /api/v2/account/relay-auto-configs/{id} | Get Relay Proxy config |
| [**get_relay_proxy_configs**](RelayProxyConfigurationsApi.md#get_relay_proxy_configs) | **GET** /api/v2/account/relay-auto-configs | List Relay Proxy configs |
| [**patch_relay_auto_config**](RelayProxyConfigurationsApi.md#patch_relay_auto_config) | **PATCH** /api/v2/account/relay-auto-configs/{id} | Update a Relay Proxy config |
| [**post_relay_auto_config**](RelayProxyConfigurationsApi.md#post_relay_auto_config) | **POST** /api/v2/account/relay-auto-configs | Create a new Relay Proxy config |
| [**reset_relay_auto_config**](RelayProxyConfigurationsApi.md#reset_relay_auto_config) | **POST** /api/v2/account/relay-auto-configs/{id}/reset | Reset Relay Proxy configuration key |


## delete_relay_auto_config

> delete_relay_auto_config(id)

Delete Relay Proxy config by ID

Delete a Relay Proxy config.

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

api_instance = LaunchDarklyApi::RelayProxyConfigurationsApi.new
id = 'id_example' # String | The relay auto config id

begin
  # Delete Relay Proxy config by ID
  api_instance.delete_relay_auto_config(id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling RelayProxyConfigurationsApi->delete_relay_auto_config: #{e}"
end
```

#### Using the delete_relay_auto_config_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_relay_auto_config_with_http_info(id)

```ruby
begin
  # Delete Relay Proxy config by ID
  data, status_code, headers = api_instance.delete_relay_auto_config_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling RelayProxyConfigurationsApi->delete_relay_auto_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The relay auto config id |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_relay_proxy_config

> <RelayAutoConfigRep> get_relay_proxy_config(id)

Get Relay Proxy config

Get a single Relay Proxy auto config by ID.

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

api_instance = LaunchDarklyApi::RelayProxyConfigurationsApi.new
id = 'id_example' # String | The relay auto config id

begin
  # Get Relay Proxy config
  result = api_instance.get_relay_proxy_config(id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling RelayProxyConfigurationsApi->get_relay_proxy_config: #{e}"
end
```

#### Using the get_relay_proxy_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RelayAutoConfigRep>, Integer, Hash)> get_relay_proxy_config_with_http_info(id)

```ruby
begin
  # Get Relay Proxy config
  data, status_code, headers = api_instance.get_relay_proxy_config_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RelayAutoConfigRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling RelayProxyConfigurationsApi->get_relay_proxy_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The relay auto config id |  |

### Return type

[**RelayAutoConfigRep**](RelayAutoConfigRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_relay_proxy_configs

> <RelayAutoConfigCollectionRep> get_relay_proxy_configs

List Relay Proxy configs

Get a list of Relay Proxy configurations in the account.

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

api_instance = LaunchDarklyApi::RelayProxyConfigurationsApi.new

begin
  # List Relay Proxy configs
  result = api_instance.get_relay_proxy_configs
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling RelayProxyConfigurationsApi->get_relay_proxy_configs: #{e}"
end
```

#### Using the get_relay_proxy_configs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RelayAutoConfigCollectionRep>, Integer, Hash)> get_relay_proxy_configs_with_http_info

```ruby
begin
  # List Relay Proxy configs
  data, status_code, headers = api_instance.get_relay_proxy_configs_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RelayAutoConfigCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling RelayProxyConfigurationsApi->get_relay_proxy_configs_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**RelayAutoConfigCollectionRep**](RelayAutoConfigCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_relay_auto_config

> <RelayAutoConfigRep> patch_relay_auto_config(id, patch_with_comment)

Update a Relay Proxy config

Update a Relay Proxy configuration. Updating a configuration uses a [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) or [JSON merge patch](https://datatracker.ietf.org/doc/html/rfc7386) representation of the desired changes. To learn more, read [Updates](https://launchdarkly.com/docs/api#updates).

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

api_instance = LaunchDarklyApi::RelayProxyConfigurationsApi.new
id = 'id_example' # String | The relay auto config id
patch_with_comment = LaunchDarklyApi::PatchWithComment.new({patch: [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField'})]}) # PatchWithComment | 

begin
  # Update a Relay Proxy config
  result = api_instance.patch_relay_auto_config(id, patch_with_comment)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling RelayProxyConfigurationsApi->patch_relay_auto_config: #{e}"
end
```

#### Using the patch_relay_auto_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RelayAutoConfigRep>, Integer, Hash)> patch_relay_auto_config_with_http_info(id, patch_with_comment)

```ruby
begin
  # Update a Relay Proxy config
  data, status_code, headers = api_instance.patch_relay_auto_config_with_http_info(id, patch_with_comment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RelayAutoConfigRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling RelayProxyConfigurationsApi->patch_relay_auto_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The relay auto config id |  |
| **patch_with_comment** | [**PatchWithComment**](PatchWithComment.md) |  |  |

### Return type

[**RelayAutoConfigRep**](RelayAutoConfigRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_relay_auto_config

> <RelayAutoConfigRep> post_relay_auto_config(relay_auto_config_post)

Create a new Relay Proxy config

Create a Relay Proxy config.

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

api_instance = LaunchDarklyApi::RelayProxyConfigurationsApi.new
relay_auto_config_post = LaunchDarklyApi::RelayAutoConfigPost.new({name: 'name_example', policy: [LaunchDarklyApi::Statement.new({effect: 'allow'})]}) # RelayAutoConfigPost | 

begin
  # Create a new Relay Proxy config
  result = api_instance.post_relay_auto_config(relay_auto_config_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling RelayProxyConfigurationsApi->post_relay_auto_config: #{e}"
end
```

#### Using the post_relay_auto_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RelayAutoConfigRep>, Integer, Hash)> post_relay_auto_config_with_http_info(relay_auto_config_post)

```ruby
begin
  # Create a new Relay Proxy config
  data, status_code, headers = api_instance.post_relay_auto_config_with_http_info(relay_auto_config_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RelayAutoConfigRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling RelayProxyConfigurationsApi->post_relay_auto_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **relay_auto_config_post** | [**RelayAutoConfigPost**](RelayAutoConfigPost.md) |  |  |

### Return type

[**RelayAutoConfigRep**](RelayAutoConfigRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reset_relay_auto_config

> <RelayAutoConfigRep> reset_relay_auto_config(id, opts)

Reset Relay Proxy configuration key

Reset a Relay Proxy configuration's secret key with an optional expiry time for the old key.

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

api_instance = LaunchDarklyApi::RelayProxyConfigurationsApi.new
id = 'id_example' # String | The Relay Proxy configuration ID
opts = {
  expiry: 789 # Integer | An expiration time for the old Relay Proxy configuration key, expressed as a Unix epoch time in milliseconds. By default, the Relay Proxy configuration will expire immediately.
}

begin
  # Reset Relay Proxy configuration key
  result = api_instance.reset_relay_auto_config(id, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling RelayProxyConfigurationsApi->reset_relay_auto_config: #{e}"
end
```

#### Using the reset_relay_auto_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RelayAutoConfigRep>, Integer, Hash)> reset_relay_auto_config_with_http_info(id, opts)

```ruby
begin
  # Reset Relay Proxy configuration key
  data, status_code, headers = api_instance.reset_relay_auto_config_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RelayAutoConfigRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling RelayProxyConfigurationsApi->reset_relay_auto_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Relay Proxy configuration ID |  |
| **expiry** | **Integer** | An expiration time for the old Relay Proxy configuration key, expressed as a Unix epoch time in milliseconds. By default, the Relay Proxy configuration will expire immediately. | [optional] |

### Return type

[**RelayAutoConfigRep**](RelayAutoConfigRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

