# SwaggerClient::WebhooksApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_webhook**](WebhooksApi.md#delete_webhook) | **DELETE** /webhooks/{resourceId} | Delete a webhook by ID.
[**get_webhook**](WebhooksApi.md#get_webhook) | **GET** /webhooks/{resourceId} | Get a webhook by ID.
[**get_webhooks**](WebhooksApi.md#get_webhooks) | **GET** /webhooks | Fetch a list of all webhooks.
[**patch_webhook**](WebhooksApi.md#patch_webhook) | **PATCH** /webhooks/{resourceId} | Modify a webhook by ID.
[**post_webhook**](WebhooksApi.md#post_webhook) | **POST** /webhooks | Create a webhook.


# **delete_webhook**
> delete_webhook(resource_id, )

Delete a webhook by ID.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::WebhooksApi.new

resource_id = "resource_id_example" # String | The resource ID.


begin
  #Delete a webhook by ID.
  api_instance.delete_webhook(resource_id, )
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhooksApi->delete_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_id** | **String**| The resource ID. | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_webhook**
> Webhook get_webhook(resource_id, )

Get a webhook by ID.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::WebhooksApi.new

resource_id = "resource_id_example" # String | The resource ID.


begin
  #Get a webhook by ID.
  result = api_instance.get_webhook(resource_id, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhooksApi->get_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_id** | **String**| The resource ID. | 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_webhooks**
> Webhooks get_webhooks

Fetch a list of all webhooks.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::WebhooksApi.new

begin
  #Fetch a list of all webhooks.
  result = api_instance.get_webhooks
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhooksApi->get_webhooks: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Webhooks**](Webhooks.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_webhook**
> Webhook patch_webhook(resource_id, patch_delta)

Modify a webhook by ID.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::WebhooksApi.new

resource_id = "resource_id_example" # String | The resource ID.

patch_delta = [SwaggerClient::PatchOperation.new] # Array<PatchOperation> | Requires a JSON Patch representation of the desired changes to the project. 'http://jsonpatch.com/'


begin
  #Modify a webhook by ID.
  result = api_instance.patch_webhook(resource_id, patch_delta)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhooksApi->patch_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_id** | **String**| The resource ID. | 
 **patch_delta** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)| Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39; | 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_webhook**
> post_webhook(webhook_body)

Create a webhook.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::WebhooksApi.new

webhook_body = SwaggerClient::WebhookBody.new # WebhookBody | New webhook.


begin
  #Create a webhook.
  api_instance.post_webhook(webhook_body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhooksApi->post_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_body** | [**WebhookBody**](WebhookBody.md)| New webhook. | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



