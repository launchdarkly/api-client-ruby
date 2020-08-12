# LaunchDarklyApi::AccessTokensApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_token**](AccessTokensApi.md#delete_token) | **DELETE** /tokens/{tokenId} | Delete an access token by ID.
[**get_token**](AccessTokensApi.md#get_token) | **GET** /tokens/{tokenId} | Get a single access token by ID.
[**get_tokens**](AccessTokensApi.md#get_tokens) | **GET** /tokens | Returns a list of tokens in the account.
[**patch_token**](AccessTokensApi.md#patch_token) | **PATCH** /tokens/{tokenId} | Modify an access tokenby ID.
[**post_token**](AccessTokensApi.md#post_token) | **POST** /tokens | Create a new token.
[**reset_token**](AccessTokensApi.md#reset_token) | **POST** /tokens/{tokenId}/reset | Reset an access token&#39;s secret key with an optional expiry time for the old key.


# **delete_token**
> delete_token(token_id)

Delete an access token by ID.

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

api_instance = LaunchDarklyApi::AccessTokensApi.new

token_id = 'token_id_example' # String | The access token ID.


begin
  #Delete an access token by ID.
  api_instance.delete_token(token_id)
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling AccessTokensApi->delete_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | **String**| The access token ID. | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_token**
> Token get_token(token_id)

Get a single access token by ID.

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

api_instance = LaunchDarklyApi::AccessTokensApi.new

token_id = 'token_id_example' # String | The access token ID.


begin
  #Get a single access token by ID.
  result = api_instance.get_token(token_id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling AccessTokensApi->get_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | **String**| The access token ID. | 

### Return type

[**Token**](Token.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_tokens**
> Tokens get_tokens(opts)

Returns a list of tokens in the account.

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

api_instance = LaunchDarklyApi::AccessTokensApi.new

opts = { 
  show_all: true # BOOLEAN | If set to true, and the authentication access token has the \"Admin\" role, personal access tokens for all members will be retrieved.
}

begin
  #Returns a list of tokens in the account.
  result = api_instance.get_tokens(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling AccessTokensApi->get_tokens: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **show_all** | **BOOLEAN**| If set to true, and the authentication access token has the \&quot;Admin\&quot; role, personal access tokens for all members will be retrieved. | [optional] 

### Return type

[**Tokens**](Tokens.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_token**
> Token patch_token(token_idpatch_delta)

Modify an access tokenby ID.

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

api_instance = LaunchDarklyApi::AccessTokensApi.new

token_id = 'token_id_example' # String | The access token ID.

patch_delta = [LaunchDarklyApi::PatchOperation.new] # Array<PatchOperation> | Requires a JSON Patch representation of the desired changes to the project. 'http://jsonpatch.com/'


begin
  #Modify an access tokenby ID.
  result = api_instance.patch_token(token_idpatch_delta)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling AccessTokensApi->patch_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | **String**| The access token ID. | 
 **patch_delta** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)| Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39; | 

### Return type

[**Token**](Token.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_token**
> Token post_token(token_body)

Create a new token.

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

api_instance = LaunchDarklyApi::AccessTokensApi.new

token_body = LaunchDarklyApi::TokenBody.new # TokenBody | Create a new access token.


begin
  #Create a new token.
  result = api_instance.post_token(token_body)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling AccessTokensApi->post_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_body** | [**TokenBody**](TokenBody.md)| Create a new access token. | 

### Return type

[**Token**](Token.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **reset_token**
> Token reset_token(token_id, opts)

Reset an access token's secret key with an optional expiry time for the old key.

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

api_instance = LaunchDarklyApi::AccessTokensApi.new

token_id = 'token_id_example' # String | The access token ID.

opts = { 
  expiry: 789 # Integer | An expiration time for the old token key, expressed as a Unix epoch time in milliseconds. By default, the token will expire immediately.
}

begin
  #Reset an access token's secret key with an optional expiry time for the old key.
  result = api_instance.reset_token(token_id, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling AccessTokensApi->reset_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | **String**| The access token ID. | 
 **expiry** | **Integer**| An expiration time for the old token key, expressed as a Unix epoch time in milliseconds. By default, the token will expire immediately. | [optional] 

### Return type

[**Token**](Token.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



