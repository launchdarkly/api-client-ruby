# LaunchDarklyApi::IPAllowlistBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_ip_allowlist_entry**](IPAllowlistBetaApi.md#create_ip_allowlist_entry) | **POST** /api/v2/account/ip-allowlist | Create IP Allowlist Entry |
| [**delete_ip_allowlist_entry**](IPAllowlistBetaApi.md#delete_ip_allowlist_entry) | **DELETE** /api/v2/account/ip-allowlist/{id} | Delete IP Allowlist Entry |
| [**get_ip_allowlist**](IPAllowlistBetaApi.md#get_ip_allowlist) | **GET** /api/v2/account/ip-allowlist | Get IP Allowlist |
| [**patch_ip_allowlist_config**](IPAllowlistBetaApi.md#patch_ip_allowlist_config) | **PATCH** /api/v2/account/ip-allowlist | Update IP Allowlist Configuration |
| [**patch_ip_allowlist_entry**](IPAllowlistBetaApi.md#patch_ip_allowlist_entry) | **PATCH** /api/v2/account/ip-allowlist/{id} | Update IP Allowlist Entry Description |


## create_ip_allowlist_entry

> <IpAllowlistEntryResponse> create_ip_allowlist_entry(create_ip_allowlist_entry_request)

Create IP Allowlist Entry

Create a new IP allowlist entry.

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

api_instance = LaunchDarklyApi::IPAllowlistBetaApi.new
create_ip_allowlist_entry_request = LaunchDarklyApi::CreateIpAllowlistEntryRequest.new({ip_address: '203.0.113.0/24'}) # CreateIpAllowlistEntryRequest | 

begin
  # Create IP Allowlist Entry
  result = api_instance.create_ip_allowlist_entry(create_ip_allowlist_entry_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IPAllowlistBetaApi->create_ip_allowlist_entry: #{e}"
end
```

#### Using the create_ip_allowlist_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpAllowlistEntryResponse>, Integer, Hash)> create_ip_allowlist_entry_with_http_info(create_ip_allowlist_entry_request)

```ruby
begin
  # Create IP Allowlist Entry
  data, status_code, headers = api_instance.create_ip_allowlist_entry_with_http_info(create_ip_allowlist_entry_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpAllowlistEntryResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IPAllowlistBetaApi->create_ip_allowlist_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ip_allowlist_entry_request** | [**CreateIpAllowlistEntryRequest**](CreateIpAllowlistEntryRequest.md) |  |  |

### Return type

[**IpAllowlistEntryResponse**](IpAllowlistEntryResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_ip_allowlist_entry

> delete_ip_allowlist_entry(id)

Delete IP Allowlist Entry

Delete an IP allowlist entry by id.

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

api_instance = LaunchDarklyApi::IPAllowlistBetaApi.new
id = 'id_example' # String | Unique identifier for the allowlist entry

begin
  # Delete IP Allowlist Entry
  api_instance.delete_ip_allowlist_entry(id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IPAllowlistBetaApi->delete_ip_allowlist_entry: #{e}"
end
```

#### Using the delete_ip_allowlist_entry_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_ip_allowlist_entry_with_http_info(id)

```ruby
begin
  # Delete IP Allowlist Entry
  data, status_code, headers = api_instance.delete_ip_allowlist_entry_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IPAllowlistBetaApi->delete_ip_allowlist_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the allowlist entry |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ip_allowlist

> <IpAllowlistResponse> get_ip_allowlist

Get IP Allowlist

Get the current IP allowlist configuration and entries.

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

api_instance = LaunchDarklyApi::IPAllowlistBetaApi.new

begin
  # Get IP Allowlist
  result = api_instance.get_ip_allowlist
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IPAllowlistBetaApi->get_ip_allowlist: #{e}"
end
```

#### Using the get_ip_allowlist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpAllowlistResponse>, Integer, Hash)> get_ip_allowlist_with_http_info

```ruby
begin
  # Get IP Allowlist
  data, status_code, headers = api_instance.get_ip_allowlist_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpAllowlistResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IPAllowlistBetaApi->get_ip_allowlist_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IpAllowlistResponse**](IpAllowlistResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_ip_allowlist_config

> <IpAllowlistResponse> patch_ip_allowlist_config(patch_ip_allowlist_config_request)

Update IP Allowlist Configuration

Update sessionAllowlistEnabled and apiTokenAllowlistEnabled settings.

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

api_instance = LaunchDarklyApi::IPAllowlistBetaApi.new
patch_ip_allowlist_config_request = LaunchDarklyApi::PatchIpAllowlistConfigRequest.new # PatchIpAllowlistConfigRequest | 

begin
  # Update IP Allowlist Configuration
  result = api_instance.patch_ip_allowlist_config(patch_ip_allowlist_config_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IPAllowlistBetaApi->patch_ip_allowlist_config: #{e}"
end
```

#### Using the patch_ip_allowlist_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpAllowlistResponse>, Integer, Hash)> patch_ip_allowlist_config_with_http_info(patch_ip_allowlist_config_request)

```ruby
begin
  # Update IP Allowlist Configuration
  data, status_code, headers = api_instance.patch_ip_allowlist_config_with_http_info(patch_ip_allowlist_config_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpAllowlistResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IPAllowlistBetaApi->patch_ip_allowlist_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **patch_ip_allowlist_config_request** | [**PatchIpAllowlistConfigRequest**](PatchIpAllowlistConfigRequest.md) |  |  |

### Return type

[**IpAllowlistResponse**](IpAllowlistResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_ip_allowlist_entry

> <IpAllowlistEntryResponse> patch_ip_allowlist_entry(id, patch_ip_allowlist_entry_request)

Update IP Allowlist Entry Description

Update the description of an IP allowlist entry.

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

api_instance = LaunchDarklyApi::IPAllowlistBetaApi.new
id = 'id_example' # String | Unique identifier for the allowlist entry
patch_ip_allowlist_entry_request = LaunchDarklyApi::PatchIpAllowlistEntryRequest.new({description: 'Updated description'}) # PatchIpAllowlistEntryRequest | 

begin
  # Update IP Allowlist Entry Description
  result = api_instance.patch_ip_allowlist_entry(id, patch_ip_allowlist_entry_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IPAllowlistBetaApi->patch_ip_allowlist_entry: #{e}"
end
```

#### Using the patch_ip_allowlist_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpAllowlistEntryResponse>, Integer, Hash)> patch_ip_allowlist_entry_with_http_info(id, patch_ip_allowlist_entry_request)

```ruby
begin
  # Update IP Allowlist Entry Description
  data, status_code, headers = api_instance.patch_ip_allowlist_entry_with_http_info(id, patch_ip_allowlist_entry_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpAllowlistEntryResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IPAllowlistBetaApi->patch_ip_allowlist_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the allowlist entry |  |
| **patch_ip_allowlist_entry_request** | [**PatchIpAllowlistEntryRequest**](PatchIpAllowlistEntryRequest.md) |  |  |

### Return type

[**IpAllowlistEntryResponse**](IpAllowlistEntryResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

