# LaunchDarklyApi::AdaptiveTriggersApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_adaptive_trigger**](AdaptiveTriggersApi.md#delete_adaptive_trigger) | **DELETE** /api/v2/projects/{projectKey}/environments/{environmentKey}/adaptive-triggers/{triggerID} | Delete an adaptive trigger |
| [**get_adaptive_trigger**](AdaptiveTriggersApi.md#get_adaptive_trigger) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/adaptive-triggers/{triggerID} | Get an adaptive trigger |
| [**list_adaptive_triggers**](AdaptiveTriggersApi.md#list_adaptive_triggers) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/adaptive-triggers | List adaptive triggers |
| [**patch_adaptive_trigger**](AdaptiveTriggersApi.md#patch_adaptive_trigger) | **PATCH** /api/v2/projects/{projectKey}/environments/{environmentKey}/adaptive-triggers/{triggerID} | Update an adaptive trigger |
| [**post_adaptive_trigger**](AdaptiveTriggersApi.md#post_adaptive_trigger) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/adaptive-triggers | Create an adaptive trigger |
| [**post_disable_adaptive_trigger**](AdaptiveTriggersApi.md#post_disable_adaptive_trigger) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/adaptive-triggers/{triggerID}/disable | Disable an adaptive trigger |
| [**post_enable_adaptive_trigger**](AdaptiveTriggersApi.md#post_enable_adaptive_trigger) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/adaptive-triggers/{triggerID}/enable | Enable an adaptive trigger |


## delete_adaptive_trigger

> delete_adaptive_trigger(project_key, environment_key, trigger_id)

Delete an adaptive trigger

Delete a single adaptive trigger.

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

api_instance = LaunchDarklyApi::AdaptiveTriggersApi.new
project_key = 'project_key_example' # String | 
environment_key = 'environment_key_example' # String | 
trigger_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete an adaptive trigger
  api_instance.delete_adaptive_trigger(project_key, environment_key, trigger_id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AdaptiveTriggersApi->delete_adaptive_trigger: #{e}"
end
```

#### Using the delete_adaptive_trigger_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_adaptive_trigger_with_http_info(project_key, environment_key, trigger_id)

```ruby
begin
  # Delete an adaptive trigger
  data, status_code, headers = api_instance.delete_adaptive_trigger_with_http_info(project_key, environment_key, trigger_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AdaptiveTriggersApi->delete_adaptive_trigger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **environment_key** | **String** |  |  |
| **trigger_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_adaptive_trigger

> <AdaptiveTrigger> get_adaptive_trigger(project_key, environment_key, trigger_id)

Get an adaptive trigger

Get a single adaptive trigger.

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

api_instance = LaunchDarklyApi::AdaptiveTriggersApi.new
project_key = 'project_key_example' # String | 
environment_key = 'environment_key_example' # String | 
trigger_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get an adaptive trigger
  result = api_instance.get_adaptive_trigger(project_key, environment_key, trigger_id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AdaptiveTriggersApi->get_adaptive_trigger: #{e}"
end
```

#### Using the get_adaptive_trigger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdaptiveTrigger>, Integer, Hash)> get_adaptive_trigger_with_http_info(project_key, environment_key, trigger_id)

```ruby
begin
  # Get an adaptive trigger
  data, status_code, headers = api_instance.get_adaptive_trigger_with_http_info(project_key, environment_key, trigger_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdaptiveTrigger>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AdaptiveTriggersApi->get_adaptive_trigger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **environment_key** | **String** |  |  |
| **trigger_id** | **String** |  |  |

### Return type

[**AdaptiveTrigger**](AdaptiveTrigger.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_adaptive_triggers

> <AdaptiveTriggers> list_adaptive_triggers(project_key, environment_key, resource_kind, resource_key, opts)

List adaptive triggers

List all adaptive triggers for a resource.

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

api_instance = LaunchDarklyApi::AdaptiveTriggersApi.new
project_key = 'project_key_example' # String | 
environment_key = 'environment_key_example' # String | 
resource_kind = LaunchDarklyApi::AdaptiveTriggerResourceKind::FLAG # AdaptiveTriggerResourceKind | 
resource_key = 'resource_key_example' # String | 
opts = {
  limit: 56, # Integer | The number of items to return.
  offset: 56 # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
}

begin
  # List adaptive triggers
  result = api_instance.list_adaptive_triggers(project_key, environment_key, resource_kind, resource_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AdaptiveTriggersApi->list_adaptive_triggers: #{e}"
end
```

#### Using the list_adaptive_triggers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdaptiveTriggers>, Integer, Hash)> list_adaptive_triggers_with_http_info(project_key, environment_key, resource_kind, resource_key, opts)

```ruby
begin
  # List adaptive triggers
  data, status_code, headers = api_instance.list_adaptive_triggers_with_http_info(project_key, environment_key, resource_kind, resource_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdaptiveTriggers>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AdaptiveTriggersApi->list_adaptive_triggers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **environment_key** | **String** |  |  |
| **resource_kind** | [**AdaptiveTriggerResourceKind**](.md) |  |  |
| **resource_key** | **String** |  |  |
| **limit** | **Integer** | The number of items to return. | [optional][default to 25] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional][default to 0] |

### Return type

[**AdaptiveTriggers**](AdaptiveTriggers.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_adaptive_trigger

> <AdaptiveTrigger> patch_adaptive_trigger(project_key, environment_key, trigger_id, update_adaptive_trigger_request)

Update an adaptive trigger

Update a single adaptive trigger.

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

api_instance = LaunchDarklyApi::AdaptiveTriggersApi.new
project_key = 'project_key_example' # String | 
environment_key = 'environment_key_example' # String | 
trigger_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_adaptive_trigger_request = LaunchDarklyApi::UpdateAdaptiveTriggerRequest.new # UpdateAdaptiveTriggerRequest | 

begin
  # Update an adaptive trigger
  result = api_instance.patch_adaptive_trigger(project_key, environment_key, trigger_id, update_adaptive_trigger_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AdaptiveTriggersApi->patch_adaptive_trigger: #{e}"
end
```

#### Using the patch_adaptive_trigger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdaptiveTrigger>, Integer, Hash)> patch_adaptive_trigger_with_http_info(project_key, environment_key, trigger_id, update_adaptive_trigger_request)

```ruby
begin
  # Update an adaptive trigger
  data, status_code, headers = api_instance.patch_adaptive_trigger_with_http_info(project_key, environment_key, trigger_id, update_adaptive_trigger_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdaptiveTrigger>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AdaptiveTriggersApi->patch_adaptive_trigger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **environment_key** | **String** |  |  |
| **trigger_id** | **String** |  |  |
| **update_adaptive_trigger_request** | [**UpdateAdaptiveTriggerRequest**](UpdateAdaptiveTriggerRequest.md) |  |  |

### Return type

[**AdaptiveTrigger**](AdaptiveTrigger.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_adaptive_trigger

> <AdaptiveTrigger> post_adaptive_trigger(project_key, environment_key, create_adaptive_trigger_request)

Create an adaptive trigger

Create a new adaptive trigger for a resource.

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

api_instance = LaunchDarklyApi::AdaptiveTriggersApi.new
project_key = 'project_key_example' # String | 
environment_key = 'environment_key_example' # String | 
create_adaptive_trigger_request = LaunchDarklyApi::CreateAdaptiveTriggerRequest.new({name: 'name_example', resource_kind: LaunchDarklyApi::AdaptiveTriggerResourceKind::FLAG, resource_key: 'resource_key_example', trigger_source: LaunchDarklyApi::ObservabilityAlertSource.new({type: 'observabilityAlert', alert_id: 37}), task: LaunchDarklyApi::AdaptiveTriggerTask.new({instructions: [LaunchDarklyApi::AdaptiveTriggerInstruction.new({kind: 'updateFallthroughVariationOrRollout', variation_id: 'variation_id_example'})]})}) # CreateAdaptiveTriggerRequest | 

begin
  # Create an adaptive trigger
  result = api_instance.post_adaptive_trigger(project_key, environment_key, create_adaptive_trigger_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AdaptiveTriggersApi->post_adaptive_trigger: #{e}"
end
```

#### Using the post_adaptive_trigger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdaptiveTrigger>, Integer, Hash)> post_adaptive_trigger_with_http_info(project_key, environment_key, create_adaptive_trigger_request)

```ruby
begin
  # Create an adaptive trigger
  data, status_code, headers = api_instance.post_adaptive_trigger_with_http_info(project_key, environment_key, create_adaptive_trigger_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdaptiveTrigger>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AdaptiveTriggersApi->post_adaptive_trigger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **environment_key** | **String** |  |  |
| **create_adaptive_trigger_request** | [**CreateAdaptiveTriggerRequest**](CreateAdaptiveTriggerRequest.md) |  |  |

### Return type

[**AdaptiveTrigger**](AdaptiveTrigger.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_disable_adaptive_trigger

> post_disable_adaptive_trigger(project_key, environment_key, trigger_id)

Disable an adaptive trigger

Disable an adaptive trigger.

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

api_instance = LaunchDarklyApi::AdaptiveTriggersApi.new
project_key = 'project_key_example' # String | 
environment_key = 'environment_key_example' # String | 
trigger_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Disable an adaptive trigger
  api_instance.post_disable_adaptive_trigger(project_key, environment_key, trigger_id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AdaptiveTriggersApi->post_disable_adaptive_trigger: #{e}"
end
```

#### Using the post_disable_adaptive_trigger_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_disable_adaptive_trigger_with_http_info(project_key, environment_key, trigger_id)

```ruby
begin
  # Disable an adaptive trigger
  data, status_code, headers = api_instance.post_disable_adaptive_trigger_with_http_info(project_key, environment_key, trigger_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AdaptiveTriggersApi->post_disable_adaptive_trigger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **environment_key** | **String** |  |  |
| **trigger_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_enable_adaptive_trigger

> post_enable_adaptive_trigger(project_key, environment_key, trigger_id)

Enable an adaptive trigger

Enable an adaptive trigger.

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

api_instance = LaunchDarklyApi::AdaptiveTriggersApi.new
project_key = 'project_key_example' # String | 
environment_key = 'environment_key_example' # String | 
trigger_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Enable an adaptive trigger
  api_instance.post_enable_adaptive_trigger(project_key, environment_key, trigger_id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AdaptiveTriggersApi->post_enable_adaptive_trigger: #{e}"
end
```

#### Using the post_enable_adaptive_trigger_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_enable_adaptive_trigger_with_http_info(project_key, environment_key, trigger_id)

```ruby
begin
  # Enable an adaptive trigger
  data, status_code, headers = api_instance.post_enable_adaptive_trigger_with_http_info(project_key, environment_key, trigger_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AdaptiveTriggersApi->post_enable_adaptive_trigger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** |  |  |
| **environment_key** | **String** |  |  |
| **trigger_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

