# LaunchDarklyApi::AccessTokensApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_token**](AccessTokensApi.md#delete_token) | **DELETE** /api/v2/tokens/{id} | Delete access token |
| [**get_token**](AccessTokensApi.md#get_token) | **GET** /api/v2/tokens/{id} | Get access token |
| [**get_tokens**](AccessTokensApi.md#get_tokens) | **GET** /api/v2/tokens | List access tokens |
| [**patch_token**](AccessTokensApi.md#patch_token) | **PATCH** /api/v2/tokens/{id} | Patch access token |
| [**post_token**](AccessTokensApi.md#post_token) | **POST** /api/v2/tokens | Create access token |
| [**reset_token**](AccessTokensApi.md#reset_token) | **POST** /api/v2/tokens/{id}/reset | Reset access token |


## delete_token

> delete_token(id)

Delete access token

Delete an access token by ID.

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

api_instance = LaunchDarklyApi::AccessTokensApi.new
id = 'id_example' # String | The ID of the access token to update

begin
  # Delete access token
  api_instance.delete_token(id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccessTokensApi->delete_token: #{e}"
end
```

#### Using the delete_token_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_token_with_http_info(id)

```ruby
begin
  # Delete access token
  data, status_code, headers = api_instance.delete_token_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccessTokensApi->delete_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the access token to update |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_token

> <Token> get_token(id)

Get access token

Get a single access token by ID.

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

api_instance = LaunchDarklyApi::AccessTokensApi.new
id = 'id_example' # String | The ID of the access token

begin
  # Get access token
  result = api_instance.get_token(id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccessTokensApi->get_token: #{e}"
end
```

#### Using the get_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Token>, Integer, Hash)> get_token_with_http_info(id)

```ruby
begin
  # Get access token
  data, status_code, headers = api_instance.get_token_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Token>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccessTokensApi->get_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the access token |  |

### Return type

[**Token**](Token.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tokens

> <Tokens> get_tokens(opts)

List access tokens

Fetch a list of all access tokens.

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

api_instance = LaunchDarklyApi::AccessTokensApi.new
opts = {
  show_all: true, # Boolean | If set to true, and the authentication access token has the 'Admin' role, personal access tokens for all members will be retrieved.
  limit: 789, # Integer | The number of access tokens to return in the response. Defaults to 25.
  offset: 789 # Integer | Where to start in the list. This is for use with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
}

begin
  # List access tokens
  result = api_instance.get_tokens(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccessTokensApi->get_tokens: #{e}"
end
```

#### Using the get_tokens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tokens>, Integer, Hash)> get_tokens_with_http_info(opts)

```ruby
begin
  # List access tokens
  data, status_code, headers = api_instance.get_tokens_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tokens>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccessTokensApi->get_tokens_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **show_all** | **Boolean** | If set to true, and the authentication access token has the &#39;Admin&#39; role, personal access tokens for all members will be retrieved. | [optional] |
| **limit** | **Integer** | The number of access tokens to return in the response. Defaults to 25. | [optional] |
| **offset** | **Integer** | Where to start in the list. This is for use with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |

### Return type

[**Tokens**](Tokens.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_token

> <Token> patch_token(id, patch_operation)

Patch access token

Update an access token's settings. Updating an access token uses a [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) representation of the desired changes. To learn more, read [Updates](/#section/Overview/Updates).

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

api_instance = LaunchDarklyApi::AccessTokensApi.new
id = 'id_example' # String | The ID of the access token to update
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField', value: new example value})] # Array<PatchOperation> | 

begin
  # Patch access token
  result = api_instance.patch_token(id, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccessTokensApi->patch_token: #{e}"
end
```

#### Using the patch_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Token>, Integer, Hash)> patch_token_with_http_info(id, patch_operation)

```ruby
begin
  # Patch access token
  data, status_code, headers = api_instance.patch_token_with_http_info(id, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Token>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccessTokensApi->patch_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the access token to update |  |
| **patch_operation** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md) |  |  |

### Return type

[**Token**](Token.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_token

> <Token> post_token(access_token_post)

Create access token

Create a new access token.

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

api_instance = LaunchDarklyApi::AccessTokensApi.new
access_token_post = LaunchDarklyApi::AccessTokenPost.new # AccessTokenPost | 

begin
  # Create access token
  result = api_instance.post_token(access_token_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccessTokensApi->post_token: #{e}"
end
```

#### Using the post_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Token>, Integer, Hash)> post_token_with_http_info(access_token_post)

```ruby
begin
  # Create access token
  data, status_code, headers = api_instance.post_token_with_http_info(access_token_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Token>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccessTokensApi->post_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token_post** | [**AccessTokenPost**](AccessTokenPost.md) |  |  |

### Return type

[**Token**](Token.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reset_token

> <Token> reset_token(id, opts)

Reset access token

Reset an access token's secret key with an optional expiry time for the old key.

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

api_instance = LaunchDarklyApi::AccessTokensApi.new
id = 'id_example' # String | The ID of the access token to update
opts = {
  expiry: 789 # Integer | An expiration time for the old token key, expressed as a Unix epoch time in milliseconds. By default, the token will expire immediately.
}

begin
  # Reset access token
  result = api_instance.reset_token(id, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccessTokensApi->reset_token: #{e}"
end
```

#### Using the reset_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Token>, Integer, Hash)> reset_token_with_http_info(id, opts)

```ruby
begin
  # Reset access token
  data, status_code, headers = api_instance.reset_token_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Token>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AccessTokensApi->reset_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the access token to update |  |
| **expiry** | **Integer** | An expiration time for the old token key, expressed as a Unix epoch time in milliseconds. By default, the token will expire immediately. | [optional] |

### Return type

[**Token**](Token.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

