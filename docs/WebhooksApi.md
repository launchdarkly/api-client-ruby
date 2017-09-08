# SwaggerClient::WebhooksApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_webhook**](WebhooksApi.md#delete_webhook) | **DELETE** /webhooks/{webhookId} | Delete a webhook by ID
[**get_webhook**](WebhooksApi.md#get_webhook) | **GET** /webhooks/{webhookId} | Get a webhook by ID
[**get_webhooks**](WebhooksApi.md#get_webhooks) | **GET** /webhooks | Fetch a list of all webhooks
[**patch_webhook**](WebhooksApi.md#patch_webhook) | **PATCH** /webhooks/{webhookId} | Modify a webhook by ID
[**post_webhook**](WebhooksApi.md#post_webhook) | **POST** /webhooks | Create a webhook


# **delete_webhook**
> delete_webhook(webhook_id, )

Delete a webhook by ID

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

webhook_id = "webhook_id_example" # String | The webhook ID


begin
  #Delete a webhook by ID
  api_instance.delete_webhook(webhook_id, )
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhooksApi->delete_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | **String**| The webhook ID | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_webhook**
> Webhook get_webhook(webhook_id, )

Get a webhook by ID

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

webhook_id = "webhook_id_example" # String | The webhook ID


begin
  #Get a webhook by ID
  result = api_instance.get_webhook(webhook_id, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhooksApi->get_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | **String**| The webhook ID | 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_webhooks**
> Webhooks get_webhooks

Fetch a list of all webhooks

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
  #Fetch a list of all webhooks
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
> patch_webhook(webhook_id, patch_delta)

Modify a webhook by ID

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

webhook_id = "webhook_id_example" # String | The webhook ID

patch_delta = [SwaggerClient::PatchDelta.new] # Array<PatchDelta> | http://jsonpatch.com/


begin
  #Modify a webhook by ID
  api_instance.patch_webhook(webhook_id, patch_delta)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhooksApi->patch_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | **String**| The webhook ID | 
 **patch_delta** | [**Array&lt;PatchDelta&gt;**](PatchDelta.md)| http://jsonpatch.com/ | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_webhook**
> post_webhook(webhook_post)

Create a webhook

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

webhook_post = SwaggerClient::WebhookPost.new # WebhookPost | New webhook


begin
  #Create a webhook
  api_instance.post_webhook(webhook_post)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhooksApi->post_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_post** | [**WebhookPost**](WebhookPost.md)| New webhook | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



