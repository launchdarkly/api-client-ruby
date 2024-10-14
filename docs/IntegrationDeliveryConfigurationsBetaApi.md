# LaunchDarklyApi::IntegrationDeliveryConfigurationsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_integration_delivery_configuration**](IntegrationDeliveryConfigurationsBetaApi.md#create_integration_delivery_configuration) | **POST** /api/v2/integration-capabilities/featureStore/{projectKey}/{environmentKey}/{integrationKey} | Create delivery configuration |
| [**delete_integration_delivery_configuration**](IntegrationDeliveryConfigurationsBetaApi.md#delete_integration_delivery_configuration) | **DELETE** /api/v2/integration-capabilities/featureStore/{projectKey}/{environmentKey}/{integrationKey}/{id} | Delete delivery configuration |
| [**get_integration_delivery_configuration_by_environment**](IntegrationDeliveryConfigurationsBetaApi.md#get_integration_delivery_configuration_by_environment) | **GET** /api/v2/integration-capabilities/featureStore/{projectKey}/{environmentKey} | Get delivery configurations by environment |
| [**get_integration_delivery_configuration_by_id**](IntegrationDeliveryConfigurationsBetaApi.md#get_integration_delivery_configuration_by_id) | **GET** /api/v2/integration-capabilities/featureStore/{projectKey}/{environmentKey}/{integrationKey}/{id} | Get delivery configuration by ID |
| [**get_integration_delivery_configurations**](IntegrationDeliveryConfigurationsBetaApi.md#get_integration_delivery_configurations) | **GET** /api/v2/integration-capabilities/featureStore | List all delivery configurations |
| [**patch_integration_delivery_configuration**](IntegrationDeliveryConfigurationsBetaApi.md#patch_integration_delivery_configuration) | **PATCH** /api/v2/integration-capabilities/featureStore/{projectKey}/{environmentKey}/{integrationKey}/{id} | Update delivery configuration |
| [**validate_integration_delivery_configuration**](IntegrationDeliveryConfigurationsBetaApi.md#validate_integration_delivery_configuration) | **POST** /api/v2/integration-capabilities/featureStore/{projectKey}/{environmentKey}/{integrationKey}/{id}/validate | Validate delivery configuration |


## create_integration_delivery_configuration

> <IntegrationDeliveryConfiguration> create_integration_delivery_configuration(project_key, environment_key, integration_key, integration_delivery_configuration_post)

Create delivery configuration

Create a delivery configuration.

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

api_instance = LaunchDarklyApi::IntegrationDeliveryConfigurationsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
integration_key = 'integration_key_example' # String | The integration key
integration_delivery_configuration_post = LaunchDarklyApi::IntegrationDeliveryConfigurationPost.new({config: { key: 3.56}}) # IntegrationDeliveryConfigurationPost | 

begin
  # Create delivery configuration
  result = api_instance.create_integration_delivery_configuration(project_key, environment_key, integration_key, integration_delivery_configuration_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationDeliveryConfigurationsBetaApi->create_integration_delivery_configuration: #{e}"
end
```

#### Using the create_integration_delivery_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IntegrationDeliveryConfiguration>, Integer, Hash)> create_integration_delivery_configuration_with_http_info(project_key, environment_key, integration_key, integration_delivery_configuration_post)

```ruby
begin
  # Create delivery configuration
  data, status_code, headers = api_instance.create_integration_delivery_configuration_with_http_info(project_key, environment_key, integration_key, integration_delivery_configuration_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IntegrationDeliveryConfiguration>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationDeliveryConfigurationsBetaApi->create_integration_delivery_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **integration_key** | **String** | The integration key |  |
| **integration_delivery_configuration_post** | [**IntegrationDeliveryConfigurationPost**](IntegrationDeliveryConfigurationPost.md) |  |  |

### Return type

[**IntegrationDeliveryConfiguration**](IntegrationDeliveryConfiguration.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_integration_delivery_configuration

> delete_integration_delivery_configuration(project_key, environment_key, integration_key, id)

Delete delivery configuration

Delete a delivery configuration.

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

api_instance = LaunchDarklyApi::IntegrationDeliveryConfigurationsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
integration_key = 'integration_key_example' # String | The integration key
id = 'id_example' # String | The configuration ID

begin
  # Delete delivery configuration
  api_instance.delete_integration_delivery_configuration(project_key, environment_key, integration_key, id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationDeliveryConfigurationsBetaApi->delete_integration_delivery_configuration: #{e}"
end
```

#### Using the delete_integration_delivery_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_integration_delivery_configuration_with_http_info(project_key, environment_key, integration_key, id)

```ruby
begin
  # Delete delivery configuration
  data, status_code, headers = api_instance.delete_integration_delivery_configuration_with_http_info(project_key, environment_key, integration_key, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationDeliveryConfigurationsBetaApi->delete_integration_delivery_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **integration_key** | **String** | The integration key |  |
| **id** | **String** | The configuration ID |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_integration_delivery_configuration_by_environment

> <IntegrationDeliveryConfigurationCollection> get_integration_delivery_configuration_by_environment(project_key, environment_key)

Get delivery configurations by environment

Get delivery configurations by environment.

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

api_instance = LaunchDarklyApi::IntegrationDeliveryConfigurationsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key

begin
  # Get delivery configurations by environment
  result = api_instance.get_integration_delivery_configuration_by_environment(project_key, environment_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationDeliveryConfigurationsBetaApi->get_integration_delivery_configuration_by_environment: #{e}"
end
```

#### Using the get_integration_delivery_configuration_by_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IntegrationDeliveryConfigurationCollection>, Integer, Hash)> get_integration_delivery_configuration_by_environment_with_http_info(project_key, environment_key)

```ruby
begin
  # Get delivery configurations by environment
  data, status_code, headers = api_instance.get_integration_delivery_configuration_by_environment_with_http_info(project_key, environment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IntegrationDeliveryConfigurationCollection>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationDeliveryConfigurationsBetaApi->get_integration_delivery_configuration_by_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |

### Return type

[**IntegrationDeliveryConfigurationCollection**](IntegrationDeliveryConfigurationCollection.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_integration_delivery_configuration_by_id

> <IntegrationDeliveryConfiguration> get_integration_delivery_configuration_by_id(project_key, environment_key, integration_key, id)

Get delivery configuration by ID

Get delivery configuration by ID.

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

api_instance = LaunchDarklyApi::IntegrationDeliveryConfigurationsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
integration_key = 'integration_key_example' # String | The integration key
id = 'id_example' # String | The configuration ID

begin
  # Get delivery configuration by ID
  result = api_instance.get_integration_delivery_configuration_by_id(project_key, environment_key, integration_key, id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationDeliveryConfigurationsBetaApi->get_integration_delivery_configuration_by_id: #{e}"
end
```

#### Using the get_integration_delivery_configuration_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IntegrationDeliveryConfiguration>, Integer, Hash)> get_integration_delivery_configuration_by_id_with_http_info(project_key, environment_key, integration_key, id)

```ruby
begin
  # Get delivery configuration by ID
  data, status_code, headers = api_instance.get_integration_delivery_configuration_by_id_with_http_info(project_key, environment_key, integration_key, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IntegrationDeliveryConfiguration>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationDeliveryConfigurationsBetaApi->get_integration_delivery_configuration_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **integration_key** | **String** | The integration key |  |
| **id** | **String** | The configuration ID |  |

### Return type

[**IntegrationDeliveryConfiguration**](IntegrationDeliveryConfiguration.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_integration_delivery_configurations

> <IntegrationDeliveryConfigurationCollection> get_integration_delivery_configurations

List all delivery configurations

List all delivery configurations.

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

api_instance = LaunchDarklyApi::IntegrationDeliveryConfigurationsBetaApi.new

begin
  # List all delivery configurations
  result = api_instance.get_integration_delivery_configurations
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationDeliveryConfigurationsBetaApi->get_integration_delivery_configurations: #{e}"
end
```

#### Using the get_integration_delivery_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IntegrationDeliveryConfigurationCollection>, Integer, Hash)> get_integration_delivery_configurations_with_http_info

```ruby
begin
  # List all delivery configurations
  data, status_code, headers = api_instance.get_integration_delivery_configurations_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IntegrationDeliveryConfigurationCollection>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationDeliveryConfigurationsBetaApi->get_integration_delivery_configurations_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IntegrationDeliveryConfigurationCollection**](IntegrationDeliveryConfigurationCollection.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_integration_delivery_configuration

> <IntegrationDeliveryConfiguration> patch_integration_delivery_configuration(project_key, environment_key, integration_key, id, patch_operation)

Update delivery configuration

Update an integration delivery configuration. Updating an integration delivery configuration uses a [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) representation of the desired changes. To learn more, read [Updates](/#section/Overview/Updates).

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

api_instance = LaunchDarklyApi::IntegrationDeliveryConfigurationsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
integration_key = 'integration_key_example' # String | The integration key
id = 'id_example' # String | The configuration ID
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField'})] # Array<PatchOperation> | 

begin
  # Update delivery configuration
  result = api_instance.patch_integration_delivery_configuration(project_key, environment_key, integration_key, id, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationDeliveryConfigurationsBetaApi->patch_integration_delivery_configuration: #{e}"
end
```

#### Using the patch_integration_delivery_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IntegrationDeliveryConfiguration>, Integer, Hash)> patch_integration_delivery_configuration_with_http_info(project_key, environment_key, integration_key, id, patch_operation)

```ruby
begin
  # Update delivery configuration
  data, status_code, headers = api_instance.patch_integration_delivery_configuration_with_http_info(project_key, environment_key, integration_key, id, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IntegrationDeliveryConfiguration>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationDeliveryConfigurationsBetaApi->patch_integration_delivery_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **integration_key** | **String** | The integration key |  |
| **id** | **String** | The configuration ID |  |
| **patch_operation** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md) |  |  |

### Return type

[**IntegrationDeliveryConfiguration**](IntegrationDeliveryConfiguration.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## validate_integration_delivery_configuration

> <IntegrationDeliveryConfigurationResponse> validate_integration_delivery_configuration(project_key, environment_key, integration_key, id)

Validate delivery configuration

Validate the saved delivery configuration, using the `validationRequest` in the integration's `manifest.json` file.

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

api_instance = LaunchDarklyApi::IntegrationDeliveryConfigurationsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
integration_key = 'integration_key_example' # String | The integration key
id = 'id_example' # String | The configuration ID

begin
  # Validate delivery configuration
  result = api_instance.validate_integration_delivery_configuration(project_key, environment_key, integration_key, id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationDeliveryConfigurationsBetaApi->validate_integration_delivery_configuration: #{e}"
end
```

#### Using the validate_integration_delivery_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IntegrationDeliveryConfigurationResponse>, Integer, Hash)> validate_integration_delivery_configuration_with_http_info(project_key, environment_key, integration_key, id)

```ruby
begin
  # Validate delivery configuration
  data, status_code, headers = api_instance.validate_integration_delivery_configuration_with_http_info(project_key, environment_key, integration_key, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IntegrationDeliveryConfigurationResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationDeliveryConfigurationsBetaApi->validate_integration_delivery_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **integration_key** | **String** | The integration key |  |
| **id** | **String** | The configuration ID |  |

### Return type

[**IntegrationDeliveryConfigurationResponse**](IntegrationDeliveryConfigurationResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

