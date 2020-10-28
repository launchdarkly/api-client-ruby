# LaunchDarklyApi::IntegrationsApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_integration_subscription**](IntegrationsApi.md#delete_integration_subscription) | **DELETE** /integrations/{integrationKey}/{integrationId} | Delete an integration subscription by ID.
[**get_integration_subscription**](IntegrationsApi.md#get_integration_subscription) | **GET** /integrations/{integrationKey}/{integrationId} | Get a single integration subscription by ID.
[**get_integration_subscriptions**](IntegrationsApi.md#get_integration_subscriptions) | **GET** /integrations/{integrationKey} | Get a list of all configured integrations of a given kind.
[**get_integrations**](IntegrationsApi.md#get_integrations) | **GET** /integrations | Get a list of all configured audit log event integrations associated with this account.
[**patch_integration_subscription**](IntegrationsApi.md#patch_integration_subscription) | **PATCH** /integrations/{integrationKey}/{integrationId} | Modify an integration subscription by ID.
[**post_integration_subscription**](IntegrationsApi.md#post_integration_subscription) | **POST** /integrations/{integrationKey} | Create a new integration subscription of a given kind.


# **delete_integration_subscription**
> delete_integration_subscription(integration_key, integration_id, )

Delete an integration subscription by ID.

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

api_instance = LaunchDarklyApi::IntegrationsApi.new

integration_key = 'integration_key_example' # String | The key used to specify the integration kind.

integration_id = 'integration_id_example' # String | The integration ID.


begin
  #Delete an integration subscription by ID.
  api_instance.delete_integration_subscription(integration_key, integration_id, )
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling IntegrationsApi->delete_integration_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_key** | **String**| The key used to specify the integration kind. | 
 **integration_id** | **String**| The integration ID. | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_integration_subscription**
> IntegrationSubscription get_integration_subscription(integration_key, integration_id, )

Get a single integration subscription by ID.

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

api_instance = LaunchDarklyApi::IntegrationsApi.new

integration_key = 'integration_key_example' # String | The key used to specify the integration kind.

integration_id = 'integration_id_example' # String | The integration ID.


begin
  #Get a single integration subscription by ID.
  result = api_instance.get_integration_subscription(integration_key, integration_id, )
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling IntegrationsApi->get_integration_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_key** | **String**| The key used to specify the integration kind. | 
 **integration_id** | **String**| The integration ID. | 

### Return type

[**IntegrationSubscription**](IntegrationSubscription.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_integration_subscriptions**
> Integration get_integration_subscriptions(integration_key, )

Get a list of all configured integrations of a given kind.

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

api_instance = LaunchDarklyApi::IntegrationsApi.new

integration_key = 'integration_key_example' # String | The key used to specify the integration kind.


begin
  #Get a list of all configured integrations of a given kind.
  result = api_instance.get_integration_subscriptions(integration_key, )
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling IntegrationsApi->get_integration_subscriptions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_key** | **String**| The key used to specify the integration kind. | 

### Return type

[**Integration**](Integration.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_integrations**
> Integrations get_integrations

Get a list of all configured audit log event integrations associated with this account.

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

api_instance = LaunchDarklyApi::IntegrationsApi.new

begin
  #Get a list of all configured audit log event integrations associated with this account.
  result = api_instance.get_integrations
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling IntegrationsApi->get_integrations: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Integrations**](Integrations.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_integration_subscription**
> IntegrationSubscription patch_integration_subscription(integration_key, integration_id, patch_delta)

Modify an integration subscription by ID.

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

api_instance = LaunchDarklyApi::IntegrationsApi.new

integration_key = 'integration_key_example' # String | The key used to specify the integration kind.

integration_id = 'integration_id_example' # String | The integration ID.

patch_delta = [LaunchDarklyApi::PatchOperation.new] # Array<PatchOperation> | Requires a JSON Patch representation of the desired changes to the project. 'http://jsonpatch.com/'


begin
  #Modify an integration subscription by ID.
  result = api_instance.patch_integration_subscription(integration_key, integration_id, patch_delta)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling IntegrationsApi->patch_integration_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_key** | **String**| The key used to specify the integration kind. | 
 **integration_id** | **String**| The integration ID. | 
 **patch_delta** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)| Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39; | 

### Return type

[**IntegrationSubscription**](IntegrationSubscription.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_integration_subscription**
> IntegrationSubscription post_integration_subscription(integration_key, subscription_body)

Create a new integration subscription of a given kind.

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

api_instance = LaunchDarklyApi::IntegrationsApi.new

integration_key = 'integration_key_example' # String | The key used to specify the integration kind.

subscription_body = LaunchDarklyApi::SubscriptionBody.new # SubscriptionBody | Create a new integration subscription.


begin
  #Create a new integration subscription of a given kind.
  result = api_instance.post_integration_subscription(integration_key, subscription_body)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling IntegrationsApi->post_integration_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_key** | **String**| The key used to specify the integration kind. | 
 **subscription_body** | [**SubscriptionBody**](SubscriptionBody.md)| Create a new integration subscription. | 

### Return type

[**IntegrationSubscription**](IntegrationSubscription.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



