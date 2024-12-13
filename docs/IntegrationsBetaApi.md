# LaunchDarklyApi::IntegrationsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_integration_configuration**](IntegrationsBetaApi.md#create_integration_configuration) | **POST** /api/v2/integration-configurations/keys/{integrationKey} | Create integration configuration |
| [**delete_integration_configuration**](IntegrationsBetaApi.md#delete_integration_configuration) | **DELETE** /api/v2/integration-configurations/{integrationConfigurationId} | Delete integration configuration |
| [**get_all_integration_configurations**](IntegrationsBetaApi.md#get_all_integration_configurations) | **GET** /api/v2/integration-configurations/keys/{integrationKey} | Get all configurations for the integration |
| [**get_integration_configuration**](IntegrationsBetaApi.md#get_integration_configuration) | **GET** /api/v2/integration-configurations/{integrationConfigurationId} | Get an integration configuration |
| [**update_integration_configuration**](IntegrationsBetaApi.md#update_integration_configuration) | **PATCH** /api/v2/integration-configurations/{integrationConfigurationId} | Update integration configuration |


## create_integration_configuration

> <IntegrationConfigurationsRep> create_integration_configuration(integration_key, integration_configuration_post)

Create integration configuration

Create a new integration configuration. (Excludes [persistent store](/tag/Persistent-store-integrations-(beta)) and [flag import configurations](/tag/Flag-import-configurations-(beta)).)

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

api_instance = LaunchDarklyApi::IntegrationsBetaApi.new
integration_key = 'integration_key_example' # String | The integration key
integration_configuration_post = LaunchDarklyApi::IntegrationConfigurationPost.new({name: 'Example integration configuration', config_values: { key: 3.56}}) # IntegrationConfigurationPost | 

begin
  # Create integration configuration
  result = api_instance.create_integration_configuration(integration_key, integration_configuration_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->create_integration_configuration: #{e}"
end
```

#### Using the create_integration_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IntegrationConfigurationsRep>, Integer, Hash)> create_integration_configuration_with_http_info(integration_key, integration_configuration_post)

```ruby
begin
  # Create integration configuration
  data, status_code, headers = api_instance.create_integration_configuration_with_http_info(integration_key, integration_configuration_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IntegrationConfigurationsRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->create_integration_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_key** | **String** | The integration key |  |
| **integration_configuration_post** | [**IntegrationConfigurationPost**](IntegrationConfigurationPost.md) |  |  |

### Return type

[**IntegrationConfigurationsRep**](IntegrationConfigurationsRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_integration_configuration

> delete_integration_configuration(integration_configuration_id)

Delete integration configuration

Delete an integration configuration by ID. (Excludes [persistent store](/tag/Persistent-store-integrations-(beta)) and [flag import configurations](/tag/Flag-import-configurations-(beta)).)

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

api_instance = LaunchDarklyApi::IntegrationsBetaApi.new
integration_configuration_id = 'integration_configuration_id_example' # String | The ID of the integration configuration to be deleted

begin
  # Delete integration configuration
  api_instance.delete_integration_configuration(integration_configuration_id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->delete_integration_configuration: #{e}"
end
```

#### Using the delete_integration_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_integration_configuration_with_http_info(integration_configuration_id)

```ruby
begin
  # Delete integration configuration
  data, status_code, headers = api_instance.delete_integration_configuration_with_http_info(integration_configuration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->delete_integration_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_configuration_id** | **String** | The ID of the integration configuration to be deleted |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_integration_configurations

> <IntegrationConfigurationCollectionRep> get_all_integration_configurations(integration_key)

Get all configurations for the integration

Get all integration configurations with the specified integration key. (Excludes [persistent store](/tag/Persistent-store-integrations-(beta)) and [flag import configurations](/tag/Flag-import-configurations-(beta))).

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

api_instance = LaunchDarklyApi::IntegrationsBetaApi.new
integration_key = 'integration_key_example' # String | Integration key

begin
  # Get all configurations for the integration
  result = api_instance.get_all_integration_configurations(integration_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->get_all_integration_configurations: #{e}"
end
```

#### Using the get_all_integration_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IntegrationConfigurationCollectionRep>, Integer, Hash)> get_all_integration_configurations_with_http_info(integration_key)

```ruby
begin
  # Get all configurations for the integration
  data, status_code, headers = api_instance.get_all_integration_configurations_with_http_info(integration_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IntegrationConfigurationCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->get_all_integration_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_key** | **String** | Integration key |  |

### Return type

[**IntegrationConfigurationCollectionRep**](IntegrationConfigurationCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_integration_configuration

> <IntegrationConfigurationsRep> get_integration_configuration(integration_configuration_id)

Get an integration configuration

Get integration configuration with the specified ID. (Excludes [persistent store](/tag/Persistent-store-integrations-(beta)) and [flag import configurations](/tag/Flag-import-configurations-(beta)).)

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

api_instance = LaunchDarklyApi::IntegrationsBetaApi.new
integration_configuration_id = 'integration_configuration_id_example' # String | Integration configuration ID

begin
  # Get an integration configuration
  result = api_instance.get_integration_configuration(integration_configuration_id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->get_integration_configuration: #{e}"
end
```

#### Using the get_integration_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IntegrationConfigurationsRep>, Integer, Hash)> get_integration_configuration_with_http_info(integration_configuration_id)

```ruby
begin
  # Get an integration configuration
  data, status_code, headers = api_instance.get_integration_configuration_with_http_info(integration_configuration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IntegrationConfigurationsRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->get_integration_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_configuration_id** | **String** | Integration configuration ID |  |

### Return type

[**IntegrationConfigurationsRep**](IntegrationConfigurationsRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_integration_configuration

> <IntegrationConfigurationsRep> update_integration_configuration(integration_configuration_id, patch_operation)

Update integration configuration

Update an integration configuration. Updating an integration configuration uses a [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) representation of the desired changes. To learn more, read [Updates](/#section/Overview/Updates).

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

api_instance = LaunchDarklyApi::IntegrationsBetaApi.new
integration_configuration_id = 'integration_configuration_id_example' # String | The ID of the integration configuration
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField'})] # Array<PatchOperation> | 

begin
  # Update integration configuration
  result = api_instance.update_integration_configuration(integration_configuration_id, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->update_integration_configuration: #{e}"
end
```

#### Using the update_integration_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IntegrationConfigurationsRep>, Integer, Hash)> update_integration_configuration_with_http_info(integration_configuration_id, patch_operation)

```ruby
begin
  # Update integration configuration
  data, status_code, headers = api_instance.update_integration_configuration_with_http_info(integration_configuration_id, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IntegrationConfigurationsRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->update_integration_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_configuration_id** | **String** | The ID of the integration configuration |  |
| **patch_operation** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md) |  |  |

### Return type

[**IntegrationConfigurationsRep**](IntegrationConfigurationsRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

