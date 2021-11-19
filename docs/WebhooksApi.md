# LaunchDarklyApi::WebhooksApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_webhook**](WebhooksApi.md#delete_webhook) | **DELETE** /api/v2/webhooks/{id} | Delete webhook |
| [**get_all_webhooks**](WebhooksApi.md#get_all_webhooks) | **GET** /api/v2/webhooks | List webhooks |
| [**get_webhook**](WebhooksApi.md#get_webhook) | **GET** /api/v2/webhooks/{id} | Get webhook |
| [**patch_webhook**](WebhooksApi.md#patch_webhook) | **PATCH** /api/v2/webhooks/{id} | Update webhook |
| [**post_webhook**](WebhooksApi.md#post_webhook) | **POST** /api/v2/webhooks | Creates a webhook |


## delete_webhook

> delete_webhook(id)

Delete webhook

Delete a webhook by ID.

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

api_instance = LaunchDarklyApi::WebhooksApi.new
id = 'id_example' # String | The ID of the webhook to delete

begin
  # Delete webhook
  api_instance.delete_webhook(id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook: #{e}"
end
```

#### Using the delete_webhook_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_webhook_with_http_info(id)

```ruby
begin
  # Delete webhook
  data, status_code, headers = api_instance.delete_webhook_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the webhook to delete |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_webhooks

> <Webhooks> get_all_webhooks

List webhooks

Fetch a list of all webhooks.

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

api_instance = LaunchDarklyApi::WebhooksApi.new

begin
  # List webhooks
  result = api_instance.get_all_webhooks
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WebhooksApi->get_all_webhooks: #{e}"
end
```

#### Using the get_all_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhooks>, Integer, Hash)> get_all_webhooks_with_http_info

```ruby
begin
  # List webhooks
  data, status_code, headers = api_instance.get_all_webhooks_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhooks>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WebhooksApi->get_all_webhooks_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Webhooks**](Webhooks.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook

> <Webhook> get_webhook(id)

Get webhook

Get a single webhook by ID.

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

api_instance = LaunchDarklyApi::WebhooksApi.new
id = 'id_example' # String | The ID of the webhook

begin
  # Get webhook
  result = api_instance.get_webhook(id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook: #{e}"
end
```

#### Using the get_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> get_webhook_with_http_info(id)

```ruby
begin
  # Get webhook
  data, status_code, headers = api_instance.get_webhook_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the webhook |  |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_webhook

> <Webhook> patch_webhook(id, patch_operation)

Update webhook

Update a webhook's settings. The request should be a valid JSON Patch document describing the changes to be made to the webhook.

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

api_instance = LaunchDarklyApi::WebhooksApi.new
id = 'id_example' # String | The ID of the webhook to update
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/biscuits', value: Chocolate Digestive})] # Array<PatchOperation> | 

begin
  # Update webhook
  result = api_instance.patch_webhook(id, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WebhooksApi->patch_webhook: #{e}"
end
```

#### Using the patch_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> patch_webhook_with_http_info(id, patch_operation)

```ruby
begin
  # Update webhook
  data, status_code, headers = api_instance.patch_webhook_with_http_info(id, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WebhooksApi->patch_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the webhook to update |  |
| **patch_operation** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md) |  |  |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_webhook

> <Webhook> post_webhook(webhook_post)

Creates a webhook

Create a new webhook

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

api_instance = LaunchDarklyApi::WebhooksApi.new
webhook_post = LaunchDarklyApi::WebhookPost.new({url: 'http://www.example.com', sign: true, on: true}) # WebhookPost | 

begin
  # Creates a webhook
  result = api_instance.post_webhook(webhook_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WebhooksApi->post_webhook: #{e}"
end
```

#### Using the post_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> post_webhook_with_http_info(webhook_post)

```ruby
begin
  # Creates a webhook
  data, status_code, headers = api_instance.post_webhook_with_http_info(webhook_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling WebhooksApi->post_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_post** | [**WebhookPost**](WebhookPost.md) |  |  |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

