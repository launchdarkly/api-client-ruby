# LaunchDarklyApi::RelayProxyConfigurationsApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_relay_proxy_config**](RelayProxyConfigurationsApi.md#delete_relay_proxy_config) | **DELETE** /account/relay-auto-configs/{id} | Delete a relay proxy configuration by ID.
[**get_relay_proxy_config**](RelayProxyConfigurationsApi.md#get_relay_proxy_config) | **GET** /account/relay-auto-configs/{id} | Get a single relay proxy configuration by ID.
[**get_relay_proxy_configs**](RelayProxyConfigurationsApi.md#get_relay_proxy_configs) | **GET** /account/relay-auto-configs | Returns a list of relay proxy configurations in the account.
[**patch_relay_proxy_config**](RelayProxyConfigurationsApi.md#patch_relay_proxy_config) | **PATCH** /account/relay-auto-configs/{id} | Modify a relay proxy configuration by ID.
[**post_relay_auto_config**](RelayProxyConfigurationsApi.md#post_relay_auto_config) | **POST** /account/relay-auto-configs | Create a new relay proxy config.
[**reset_relay_proxy_config**](RelayProxyConfigurationsApi.md#reset_relay_proxy_config) | **POST** /account/relay-auto-configs/{id}/reset | Reset a relay proxy configuration&#39;s secret key with an optional expiry time for the old key.


# **delete_relay_proxy_config**
> delete_relay_proxy_config(id)

Delete a relay proxy configuration by ID.

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

api_instance = LaunchDarklyApi::RelayProxyConfigurationsApi.new

id = 'id_example' # String | The relay proxy configuration ID


begin
  #Delete a relay proxy configuration by ID.
  api_instance.delete_relay_proxy_config(id)
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling RelayProxyConfigurationsApi->delete_relay_proxy_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The relay proxy configuration ID | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_relay_proxy_config**
> RelayProxyConfig get_relay_proxy_config(id)

Get a single relay proxy configuration by ID.

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

api_instance = LaunchDarklyApi::RelayProxyConfigurationsApi.new

id = 'id_example' # String | The relay proxy configuration ID


begin
  #Get a single relay proxy configuration by ID.
  result = api_instance.get_relay_proxy_config(id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling RelayProxyConfigurationsApi->get_relay_proxy_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The relay proxy configuration ID | 

### Return type

[**RelayProxyConfig**](RelayProxyConfig.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_relay_proxy_configs**
> RelayProxyConfigs get_relay_proxy_configs

Returns a list of relay proxy configurations in the account.

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

api_instance = LaunchDarklyApi::RelayProxyConfigurationsApi.new

begin
  #Returns a list of relay proxy configurations in the account.
  result = api_instance.get_relay_proxy_configs
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling RelayProxyConfigurationsApi->get_relay_proxy_configs: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RelayProxyConfigs**](RelayProxyConfigs.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_relay_proxy_config**
> RelayProxyConfig patch_relay_proxy_config(idpatch_delta)

Modify a relay proxy configuration by ID.

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

api_instance = LaunchDarklyApi::RelayProxyConfigurationsApi.new

id = 'id_example' # String | The relay proxy configuration ID

patch_delta = [LaunchDarklyApi::PatchOperation.new] # Array<PatchOperation> | Requires a JSON Patch representation of the desired changes to the project. 'http://jsonpatch.com/'


begin
  #Modify a relay proxy configuration by ID.
  result = api_instance.patch_relay_proxy_config(idpatch_delta)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling RelayProxyConfigurationsApi->patch_relay_proxy_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The relay proxy configuration ID | 
 **patch_delta** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)| Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39; | 

### Return type

[**RelayProxyConfig**](RelayProxyConfig.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_relay_auto_config**
> RelayProxyConfig post_relay_auto_config(relay_proxy_config_body)

Create a new relay proxy config.

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

api_instance = LaunchDarklyApi::RelayProxyConfigurationsApi.new

relay_proxy_config_body = LaunchDarklyApi::RelayProxyConfigBody.new # RelayProxyConfigBody | Create a new relay proxy configuration


begin
  #Create a new relay proxy config.
  result = api_instance.post_relay_auto_config(relay_proxy_config_body)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling RelayProxyConfigurationsApi->post_relay_auto_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **relay_proxy_config_body** | [**RelayProxyConfigBody**](RelayProxyConfigBody.md)| Create a new relay proxy configuration | 

### Return type

[**RelayProxyConfig**](RelayProxyConfig.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **reset_relay_proxy_config**
> RelayProxyConfig reset_relay_proxy_config(id, opts)

Reset a relay proxy configuration's secret key with an optional expiry time for the old key.

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

api_instance = LaunchDarklyApi::RelayProxyConfigurationsApi.new

id = 'id_example' # String | The relay proxy configuration ID

opts = { 
  expiry: 789 # Integer | An expiration time for the old relay proxy configuration key, expressed as a Unix epoch time in milliseconds. By default, the relay proxy configuration will expire immediately
}

begin
  #Reset a relay proxy configuration's secret key with an optional expiry time for the old key.
  result = api_instance.reset_relay_proxy_config(id, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling RelayProxyConfigurationsApi->reset_relay_proxy_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The relay proxy configuration ID | 
 **expiry** | **Integer**| An expiration time for the old relay proxy configuration key, expressed as a Unix epoch time in milliseconds. By default, the relay proxy configuration will expire immediately | [optional] 

### Return type

[**RelayProxyConfig**](RelayProxyConfig.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



