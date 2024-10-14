# LaunchDarklyApi::IntegrationAuditLogSubscriptionsApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_subscription**](IntegrationAuditLogSubscriptionsApi.md#create_subscription) | **POST** /api/v2/integrations/{integrationKey} | Create audit log subscription |
| [**delete_subscription**](IntegrationAuditLogSubscriptionsApi.md#delete_subscription) | **DELETE** /api/v2/integrations/{integrationKey}/{id} | Delete audit log subscription |
| [**get_subscription_by_id**](IntegrationAuditLogSubscriptionsApi.md#get_subscription_by_id) | **GET** /api/v2/integrations/{integrationKey}/{id} | Get audit log subscription by ID |
| [**get_subscriptions**](IntegrationAuditLogSubscriptionsApi.md#get_subscriptions) | **GET** /api/v2/integrations/{integrationKey} | Get audit log subscriptions by integration |
| [**update_subscription**](IntegrationAuditLogSubscriptionsApi.md#update_subscription) | **PATCH** /api/v2/integrations/{integrationKey}/{id} | Update audit log subscription |


## create_subscription

> <Integration> create_subscription(integration_key, subscription_post)

Create audit log subscription

Create an audit log subscription.<br /><br />For each subscription, you must specify the set of resources you wish to subscribe to audit log notifications for. You can describe these resources using a custom role policy. To learn more, read [Custom role concepts](https://docs.launchdarkly.com/home/account/role-concepts).

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

api_instance = LaunchDarklyApi::IntegrationAuditLogSubscriptionsApi.new
integration_key = 'integration_key_example' # String | The integration key
subscription_post = LaunchDarklyApi::SubscriptionPost.new({name: 'Example audit log subscription.', config: { key: 3.56}}) # SubscriptionPost | 

begin
  # Create audit log subscription
  result = api_instance.create_subscription(integration_key, subscription_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationAuditLogSubscriptionsApi->create_subscription: #{e}"
end
```

#### Using the create_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Integration>, Integer, Hash)> create_subscription_with_http_info(integration_key, subscription_post)

```ruby
begin
  # Create audit log subscription
  data, status_code, headers = api_instance.create_subscription_with_http_info(integration_key, subscription_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Integration>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationAuditLogSubscriptionsApi->create_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_key** | **String** | The integration key |  |
| **subscription_post** | [**SubscriptionPost**](SubscriptionPost.md) |  |  |

### Return type

[**Integration**](Integration.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_subscription

> delete_subscription(integration_key, id)

Delete audit log subscription

Delete an audit log subscription.

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

api_instance = LaunchDarklyApi::IntegrationAuditLogSubscriptionsApi.new
integration_key = 'integration_key_example' # String | The integration key
id = 'id_example' # String | The subscription ID

begin
  # Delete audit log subscription
  api_instance.delete_subscription(integration_key, id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationAuditLogSubscriptionsApi->delete_subscription: #{e}"
end
```

#### Using the delete_subscription_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_subscription_with_http_info(integration_key, id)

```ruby
begin
  # Delete audit log subscription
  data, status_code, headers = api_instance.delete_subscription_with_http_info(integration_key, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationAuditLogSubscriptionsApi->delete_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_key** | **String** | The integration key |  |
| **id** | **String** | The subscription ID |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_subscription_by_id

> <Integration> get_subscription_by_id(integration_key, id)

Get audit log subscription by ID

Get an audit log subscription by ID.

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

api_instance = LaunchDarklyApi::IntegrationAuditLogSubscriptionsApi.new
integration_key = 'integration_key_example' # String | The integration key
id = 'id_example' # String | The subscription ID

begin
  # Get audit log subscription by ID
  result = api_instance.get_subscription_by_id(integration_key, id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationAuditLogSubscriptionsApi->get_subscription_by_id: #{e}"
end
```

#### Using the get_subscription_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Integration>, Integer, Hash)> get_subscription_by_id_with_http_info(integration_key, id)

```ruby
begin
  # Get audit log subscription by ID
  data, status_code, headers = api_instance.get_subscription_by_id_with_http_info(integration_key, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Integration>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationAuditLogSubscriptionsApi->get_subscription_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_key** | **String** | The integration key |  |
| **id** | **String** | The subscription ID |  |

### Return type

[**Integration**](Integration.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_subscriptions

> <Integrations> get_subscriptions(integration_key)

Get audit log subscriptions by integration

Get all audit log subscriptions associated with a given integration.

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

api_instance = LaunchDarklyApi::IntegrationAuditLogSubscriptionsApi.new
integration_key = 'integration_key_example' # String | The integration key

begin
  # Get audit log subscriptions by integration
  result = api_instance.get_subscriptions(integration_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationAuditLogSubscriptionsApi->get_subscriptions: #{e}"
end
```

#### Using the get_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Integrations>, Integer, Hash)> get_subscriptions_with_http_info(integration_key)

```ruby
begin
  # Get audit log subscriptions by integration
  data, status_code, headers = api_instance.get_subscriptions_with_http_info(integration_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Integrations>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationAuditLogSubscriptionsApi->get_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_key** | **String** | The integration key |  |

### Return type

[**Integrations**](Integrations.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_subscription

> <Integration> update_subscription(integration_key, id, patch_operation)

Update audit log subscription

Update an audit log subscription configuration. Updating an audit log subscription uses a [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) representation of the desired changes. To learn more, read [Updates](/#section/Overview/Updates).

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

api_instance = LaunchDarklyApi::IntegrationAuditLogSubscriptionsApi.new
integration_key = 'integration_key_example' # String | The integration key
id = 'id_example' # String | The ID of the audit log subscription
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField'})] # Array<PatchOperation> | 

begin
  # Update audit log subscription
  result = api_instance.update_subscription(integration_key, id, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationAuditLogSubscriptionsApi->update_subscription: #{e}"
end
```

#### Using the update_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Integration>, Integer, Hash)> update_subscription_with_http_info(integration_key, id, patch_operation)

```ruby
begin
  # Update audit log subscription
  data, status_code, headers = api_instance.update_subscription_with_http_info(integration_key, id, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Integration>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationAuditLogSubscriptionsApi->update_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_key** | **String** | The integration key |  |
| **id** | **String** | The ID of the audit log subscription |  |
| **patch_operation** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md) |  |  |

### Return type

[**Integration**](Integration.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

