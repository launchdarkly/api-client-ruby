# LaunchDarklyApi::OAuth2ClientsApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_o_auth2_client**](OAuth2ClientsApi.md#create_o_auth2_client) | **POST** /api/v2/oauth/clients | Create a LaunchDarkly OAuth 2.0 client |
| [**delete_o_auth_client**](OAuth2ClientsApi.md#delete_o_auth_client) | **DELETE** /api/v2/oauth/clients/{clientId} | Delete OAuth 2.0 client |
| [**get_o_auth_client_by_id**](OAuth2ClientsApi.md#get_o_auth_client_by_id) | **GET** /api/v2/oauth/clients/{clientId} | Get client by ID |
| [**get_o_auth_clients**](OAuth2ClientsApi.md#get_o_auth_clients) | **GET** /api/v2/oauth/clients | Get clients |
| [**patch_o_auth_client**](OAuth2ClientsApi.md#patch_o_auth_client) | **PATCH** /api/v2/oauth/clients/{clientId} | Patch client by ID |


## create_o_auth2_client

> <Client> create_o_auth2_client(oauth_client_post)

Create a LaunchDarkly OAuth 2.0 client

Create (register) a LaunchDarkly OAuth2 client. OAuth2 clients allow you to build custom integrations using LaunchDarkly as your identity provider.

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

api_instance = LaunchDarklyApi::OAuth2ClientsApi.new
oauth_client_post = LaunchDarklyApi::OauthClientPost.new # OauthClientPost | 

begin
  # Create a LaunchDarkly OAuth 2.0 client
  result = api_instance.create_o_auth2_client(oauth_client_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling OAuth2ClientsApi->create_o_auth2_client: #{e}"
end
```

#### Using the create_o_auth2_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Client>, Integer, Hash)> create_o_auth2_client_with_http_info(oauth_client_post)

```ruby
begin
  # Create a LaunchDarkly OAuth 2.0 client
  data, status_code, headers = api_instance.create_o_auth2_client_with_http_info(oauth_client_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Client>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling OAuth2ClientsApi->create_o_auth2_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **oauth_client_post** | [**OauthClientPost**](OauthClientPost.md) |  |  |

### Return type

[**Client**](Client.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_o_auth_client

> delete_o_auth_client(client_id)

Delete OAuth 2.0 client

Delete an existing OAuth 2.0 client by unique client ID.

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

api_instance = LaunchDarklyApi::OAuth2ClientsApi.new
client_id = 'client_id_example' # String | The client ID

begin
  # Delete OAuth 2.0 client
  api_instance.delete_o_auth_client(client_id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling OAuth2ClientsApi->delete_o_auth_client: #{e}"
end
```

#### Using the delete_o_auth_client_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_o_auth_client_with_http_info(client_id)

```ruby
begin
  # Delete OAuth 2.0 client
  data, status_code, headers = api_instance.delete_o_auth_client_with_http_info(client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling OAuth2ClientsApi->delete_o_auth_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | The client ID |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_o_auth_client_by_id

> <Client> get_o_auth_client_by_id(client_id)

Get client by ID

Get a registered OAuth 2.0 client by unique client ID.

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

api_instance = LaunchDarklyApi::OAuth2ClientsApi.new
client_id = 'client_id_example' # String | The client ID

begin
  # Get client by ID
  result = api_instance.get_o_auth_client_by_id(client_id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling OAuth2ClientsApi->get_o_auth_client_by_id: #{e}"
end
```

#### Using the get_o_auth_client_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Client>, Integer, Hash)> get_o_auth_client_by_id_with_http_info(client_id)

```ruby
begin
  # Get client by ID
  data, status_code, headers = api_instance.get_o_auth_client_by_id_with_http_info(client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Client>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling OAuth2ClientsApi->get_o_auth_client_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | The client ID |  |

### Return type

[**Client**](Client.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_o_auth_clients

> <ClientCollection> get_o_auth_clients

Get clients

Get all OAuth 2.0 clients registered by your account.

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

api_instance = LaunchDarklyApi::OAuth2ClientsApi.new

begin
  # Get clients
  result = api_instance.get_o_auth_clients
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling OAuth2ClientsApi->get_o_auth_clients: #{e}"
end
```

#### Using the get_o_auth_clients_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientCollection>, Integer, Hash)> get_o_auth_clients_with_http_info

```ruby
begin
  # Get clients
  data, status_code, headers = api_instance.get_o_auth_clients_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientCollection>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling OAuth2ClientsApi->get_o_auth_clients_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ClientCollection**](ClientCollection.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_o_auth_client

> <Client> patch_o_auth_client(client_id, patch_operation)

Patch client by ID

Patch an existing OAuth 2.0 client by client ID. Updating an OAuth2 client uses a [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) representation of the desired changes. To learn more, read [Updates](/#section/Overview/Updates). Only `name`, `description`, and `redirectUri` may be patched.

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

api_instance = LaunchDarklyApi::OAuth2ClientsApi.new
client_id = 'client_id_example' # String | The client ID
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField'})] # Array<PatchOperation> | 

begin
  # Patch client by ID
  result = api_instance.patch_o_auth_client(client_id, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling OAuth2ClientsApi->patch_o_auth_client: #{e}"
end
```

#### Using the patch_o_auth_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Client>, Integer, Hash)> patch_o_auth_client_with_http_info(client_id, patch_operation)

```ruby
begin
  # Patch client by ID
  data, status_code, headers = api_instance.patch_o_auth_client_with_http_info(client_id, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Client>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling OAuth2ClientsApi->patch_o_auth_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | The client ID |  |
| **patch_operation** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md) |  |  |

### Return type

[**Client**](Client.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

