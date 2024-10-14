# LaunchDarklyApi::IntegrationsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_big_segment_store_integration**](IntegrationsBetaApi.md#create_big_segment_store_integration) | **POST** /api/v2/integration-capabilities/big-segment-store/{projectKey}/{environmentKey}/{integrationKey} | Create big segment store integration |
| [**create_flag_import_configuration**](IntegrationsBetaApi.md#create_flag_import_configuration) | **POST** /api/v2/integration-capabilities/flag-import/{projectKey}/{integrationKey} | Create a flag import configuration |
| [**delete_big_segment_store_integration**](IntegrationsBetaApi.md#delete_big_segment_store_integration) | **DELETE** /api/v2/integration-capabilities/big-segment-store/{projectKey}/{environmentKey}/{integrationKey}/{integrationId} | Delete big segment store integration |
| [**delete_flag_import_configuration**](IntegrationsBetaApi.md#delete_flag_import_configuration) | **DELETE** /api/v2/integration-capabilities/flag-import/{projectKey}/{integrationKey}/{integrationId} | Delete a flag import configuration |
| [**get_big_segment_store_integration**](IntegrationsBetaApi.md#get_big_segment_store_integration) | **GET** /api/v2/integration-capabilities/big-segment-store/{projectKey}/{environmentKey}/{integrationKey}/{integrationId} | Get big segment store integration by ID |
| [**get_big_segment_store_integrations**](IntegrationsBetaApi.md#get_big_segment_store_integrations) | **GET** /api/v2/integration-capabilities/big-segment-store | List all big segment store integrations |
| [**get_flag_import_configuration**](IntegrationsBetaApi.md#get_flag_import_configuration) | **GET** /api/v2/integration-capabilities/flag-import/{projectKey}/{integrationKey}/{integrationId} | Get a single flag import configuration |
| [**get_flag_import_configurations**](IntegrationsBetaApi.md#get_flag_import_configurations) | **GET** /api/v2/integration-capabilities/flag-import | List all flag import configurations |
| [**patch_big_segment_store_integration**](IntegrationsBetaApi.md#patch_big_segment_store_integration) | **PATCH** /api/v2/integration-capabilities/big-segment-store/{projectKey}/{environmentKey}/{integrationKey}/{integrationId} | Update big segment store integration |
| [**patch_flag_import_configuration**](IntegrationsBetaApi.md#patch_flag_import_configuration) | **PATCH** /api/v2/integration-capabilities/flag-import/{projectKey}/{integrationKey}/{integrationId} | Update a flag import configuration |
| [**trigger_flag_import_job**](IntegrationsBetaApi.md#trigger_flag_import_job) | **POST** /api/v2/integration-capabilities/flag-import/{projectKey}/{integrationKey}/{integrationId}/trigger | Trigger a single flag import run |


## create_big_segment_store_integration

> <BigSegmentStoreIntegration> create_big_segment_store_integration(project_key, environment_key, integration_key, integration_delivery_configuration_post)

Create big segment store integration

 Create a persistent store integration.  If you are using server-side SDKs, segments synced from external tools and larger list-based segments require a persistent store within your infrastructure. LaunchDarkly keeps the persistent store up to date and consults it during flag evaluation.  You can use either Redis or DynamoDB as your persistent store. When you create a persistent store integration, the fields in the `config` object in the request vary depending on which persistent store you use.  If you are using Redis to create your persistent store integration, you will need to know:  * Your Redis host * Your Redis port * Your Redis username * Your Redis password * Whether or not LaunchDarkly should connect using TLS  If you are using DynamoDB to create your persistent store integration, you will need to know:  * Your DynamoDB table name. The table must have the following schema:   * Partition key: `namespace` (string)   * Sort key: `key` (string) * Your DynamoDB Amazon Web Services (AWS) region. * Your AWS role Amazon Resource Name (ARN). This is the role that LaunchDarkly will assume to manage your DynamoDB table. * The External ID you specified when creating your Amazon Resource Name (ARN).  To learn more, read [Segment configuration](https://docs.launchdarkly.com/home/flags/segment-config). 

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
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
integration_key = 'integration_key_example' # String | The integration key, either `redis` or `dynamodb`
integration_delivery_configuration_post = LaunchDarklyApi::IntegrationDeliveryConfigurationPost.new({config: { key: 3.56}}) # IntegrationDeliveryConfigurationPost | 

begin
  # Create big segment store integration
  result = api_instance.create_big_segment_store_integration(project_key, environment_key, integration_key, integration_delivery_configuration_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->create_big_segment_store_integration: #{e}"
end
```

#### Using the create_big_segment_store_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BigSegmentStoreIntegration>, Integer, Hash)> create_big_segment_store_integration_with_http_info(project_key, environment_key, integration_key, integration_delivery_configuration_post)

```ruby
begin
  # Create big segment store integration
  data, status_code, headers = api_instance.create_big_segment_store_integration_with_http_info(project_key, environment_key, integration_key, integration_delivery_configuration_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BigSegmentStoreIntegration>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->create_big_segment_store_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **integration_key** | **String** | The integration key, either &#x60;redis&#x60; or &#x60;dynamodb&#x60; |  |
| **integration_delivery_configuration_post** | [**IntegrationDeliveryConfigurationPost**](IntegrationDeliveryConfigurationPost.md) |  |  |

### Return type

[**BigSegmentStoreIntegration**](BigSegmentStoreIntegration.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_flag_import_configuration

> <FlagImportIntegration> create_flag_import_configuration(project_key, integration_key, flag_import_configuration_post)

Create a flag import configuration

Create a new flag import configuration. The `integrationKey` path parameter identifies the feature management system from which the import occurs, for example, `split`. The `config` object in the request body schema is described by the global integration settings, as specified by the <code>formVariables</code> in the <code>manifest.json</code> for this integration. It varies slightly based on the `integrationKey`.

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
project_key = 'project_key_example' # String | The project key
integration_key = 'integration_key_example' # String | The integration key
flag_import_configuration_post = LaunchDarklyApi::FlagImportConfigurationPost.new({config: { key: 3.56}}) # FlagImportConfigurationPost | 

begin
  # Create a flag import configuration
  result = api_instance.create_flag_import_configuration(project_key, integration_key, flag_import_configuration_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->create_flag_import_configuration: #{e}"
end
```

#### Using the create_flag_import_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlagImportIntegration>, Integer, Hash)> create_flag_import_configuration_with_http_info(project_key, integration_key, flag_import_configuration_post)

```ruby
begin
  # Create a flag import configuration
  data, status_code, headers = api_instance.create_flag_import_configuration_with_http_info(project_key, integration_key, flag_import_configuration_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlagImportIntegration>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->create_flag_import_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **integration_key** | **String** | The integration key |  |
| **flag_import_configuration_post** | [**FlagImportConfigurationPost**](FlagImportConfigurationPost.md) |  |  |

### Return type

[**FlagImportIntegration**](FlagImportIntegration.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_big_segment_store_integration

> delete_big_segment_store_integration(project_key, environment_key, integration_key, integration_id)

Delete big segment store integration

Delete a persistent store integration. Each integration uses either Redis or DynamoDB.

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
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
integration_key = 'integration_key_example' # String | The integration key, either `redis` or `dynamodb`
integration_id = 'integration_id_example' # String | The integration ID

begin
  # Delete big segment store integration
  api_instance.delete_big_segment_store_integration(project_key, environment_key, integration_key, integration_id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->delete_big_segment_store_integration: #{e}"
end
```

#### Using the delete_big_segment_store_integration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_big_segment_store_integration_with_http_info(project_key, environment_key, integration_key, integration_id)

```ruby
begin
  # Delete big segment store integration
  data, status_code, headers = api_instance.delete_big_segment_store_integration_with_http_info(project_key, environment_key, integration_key, integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->delete_big_segment_store_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **integration_key** | **String** | The integration key, either &#x60;redis&#x60; or &#x60;dynamodb&#x60; |  |
| **integration_id** | **String** | The integration ID |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_flag_import_configuration

> delete_flag_import_configuration(project_key, integration_key, integration_id)

Delete a flag import configuration

Delete a flag import configuration by ID. The `integrationKey` path parameter identifies the feature management system from which the import occurs, for example, `split`.

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
project_key = 'project_key_example' # String | The project key
integration_key = 'integration_key_example' # String | The integration key
integration_id = 'integration_id_example' # String | The integration ID

begin
  # Delete a flag import configuration
  api_instance.delete_flag_import_configuration(project_key, integration_key, integration_id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->delete_flag_import_configuration: #{e}"
end
```

#### Using the delete_flag_import_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_flag_import_configuration_with_http_info(project_key, integration_key, integration_id)

```ruby
begin
  # Delete a flag import configuration
  data, status_code, headers = api_instance.delete_flag_import_configuration_with_http_info(project_key, integration_key, integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->delete_flag_import_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **integration_key** | **String** | The integration key |  |
| **integration_id** | **String** | The integration ID |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_big_segment_store_integration

> <BigSegmentStoreIntegration> get_big_segment_store_integration(project_key, environment_key, integration_key, integration_id)

Get big segment store integration by ID

Get a big segment store integration by ID.

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
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
integration_key = 'integration_key_example' # String | The integration key, either `redis` or `dynamodb`
integration_id = 'integration_id_example' # String | The integration ID

begin
  # Get big segment store integration by ID
  result = api_instance.get_big_segment_store_integration(project_key, environment_key, integration_key, integration_id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->get_big_segment_store_integration: #{e}"
end
```

#### Using the get_big_segment_store_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BigSegmentStoreIntegration>, Integer, Hash)> get_big_segment_store_integration_with_http_info(project_key, environment_key, integration_key, integration_id)

```ruby
begin
  # Get big segment store integration by ID
  data, status_code, headers = api_instance.get_big_segment_store_integration_with_http_info(project_key, environment_key, integration_key, integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BigSegmentStoreIntegration>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->get_big_segment_store_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **integration_key** | **String** | The integration key, either &#x60;redis&#x60; or &#x60;dynamodb&#x60; |  |
| **integration_id** | **String** | The integration ID |  |

### Return type

[**BigSegmentStoreIntegration**](BigSegmentStoreIntegration.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_big_segment_store_integrations

> <BigSegmentStoreIntegrationCollection> get_big_segment_store_integrations

List all big segment store integrations

List all big segment store integrations.

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

begin
  # List all big segment store integrations
  result = api_instance.get_big_segment_store_integrations
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->get_big_segment_store_integrations: #{e}"
end
```

#### Using the get_big_segment_store_integrations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BigSegmentStoreIntegrationCollection>, Integer, Hash)> get_big_segment_store_integrations_with_http_info

```ruby
begin
  # List all big segment store integrations
  data, status_code, headers = api_instance.get_big_segment_store_integrations_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BigSegmentStoreIntegrationCollection>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->get_big_segment_store_integrations_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BigSegmentStoreIntegrationCollection**](BigSegmentStoreIntegrationCollection.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_flag_import_configuration

> <FlagImportIntegration> get_flag_import_configuration(project_key, integration_key, integration_id)

Get a single flag import configuration

Get a single flag import configuration by ID. The `integrationKey` path parameter identifies the feature management system from which the import occurs, for example, `split`.

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
project_key = 'project_key_example' # String | The project key
integration_key = 'integration_key_example' # String | The integration key, for example, `split`
integration_id = 'integration_id_example' # String | The integration ID

begin
  # Get a single flag import configuration
  result = api_instance.get_flag_import_configuration(project_key, integration_key, integration_id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->get_flag_import_configuration: #{e}"
end
```

#### Using the get_flag_import_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlagImportIntegration>, Integer, Hash)> get_flag_import_configuration_with_http_info(project_key, integration_key, integration_id)

```ruby
begin
  # Get a single flag import configuration
  data, status_code, headers = api_instance.get_flag_import_configuration_with_http_info(project_key, integration_key, integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlagImportIntegration>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->get_flag_import_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **integration_key** | **String** | The integration key, for example, &#x60;split&#x60; |  |
| **integration_id** | **String** | The integration ID |  |

### Return type

[**FlagImportIntegration**](FlagImportIntegration.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_flag_import_configurations

> <FlagImportIntegrationCollection> get_flag_import_configurations

List all flag import configurations

List all flag import configurations.

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

begin
  # List all flag import configurations
  result = api_instance.get_flag_import_configurations
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->get_flag_import_configurations: #{e}"
end
```

#### Using the get_flag_import_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlagImportIntegrationCollection>, Integer, Hash)> get_flag_import_configurations_with_http_info

```ruby
begin
  # List all flag import configurations
  data, status_code, headers = api_instance.get_flag_import_configurations_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlagImportIntegrationCollection>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->get_flag_import_configurations_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**FlagImportIntegrationCollection**](FlagImportIntegrationCollection.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_big_segment_store_integration

> <BigSegmentStoreIntegration> patch_big_segment_store_integration(project_key, environment_key, integration_key, integration_id, patch_operation)

Update big segment store integration

Update a big segment store integration. Updating a big segment store requires a [JSON Patch](https://datatracker.ietf.org/doc/html/rfc6902) representation of the desired changes. To learn more, read [Updates](/#section/Overview/Updates).

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
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
integration_key = 'integration_key_example' # String | The integration key, either `redis` or `dynamodb`
integration_id = 'integration_id_example' # String | The integration ID
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField'})] # Array<PatchOperation> | 

begin
  # Update big segment store integration
  result = api_instance.patch_big_segment_store_integration(project_key, environment_key, integration_key, integration_id, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->patch_big_segment_store_integration: #{e}"
end
```

#### Using the patch_big_segment_store_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BigSegmentStoreIntegration>, Integer, Hash)> patch_big_segment_store_integration_with_http_info(project_key, environment_key, integration_key, integration_id, patch_operation)

```ruby
begin
  # Update big segment store integration
  data, status_code, headers = api_instance.patch_big_segment_store_integration_with_http_info(project_key, environment_key, integration_key, integration_id, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BigSegmentStoreIntegration>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->patch_big_segment_store_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **integration_key** | **String** | The integration key, either &#x60;redis&#x60; or &#x60;dynamodb&#x60; |  |
| **integration_id** | **String** | The integration ID |  |
| **patch_operation** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md) |  |  |

### Return type

[**BigSegmentStoreIntegration**](BigSegmentStoreIntegration.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_flag_import_configuration

> <FlagImportIntegration> patch_flag_import_configuration(project_key, integration_key, integration_id, patch_operation)

Update a flag import configuration

Updating a flag import configuration uses a [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) representation of the desired changes. To learn more, read [Updates](/#section/Overview/Updates).<br/><br/>To add an element to the import configuration fields that are arrays, set the `path` to the name of the field and then append `/<array index>`. Use `/0` to add to the beginning of the array. Use `/-` to add to the end of the array.<br/><br/>You can update the `config`, `tags`, and `name` of the flag import configuration.

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
project_key = 'project_key_example' # String | The project key
integration_key = 'integration_key_example' # String | The integration key
integration_id = 'integration_id_example' # String | The integration ID
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField'})] # Array<PatchOperation> | 

begin
  # Update a flag import configuration
  result = api_instance.patch_flag_import_configuration(project_key, integration_key, integration_id, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->patch_flag_import_configuration: #{e}"
end
```

#### Using the patch_flag_import_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlagImportIntegration>, Integer, Hash)> patch_flag_import_configuration_with_http_info(project_key, integration_key, integration_id, patch_operation)

```ruby
begin
  # Update a flag import configuration
  data, status_code, headers = api_instance.patch_flag_import_configuration_with_http_info(project_key, integration_key, integration_id, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlagImportIntegration>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->patch_flag_import_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **integration_key** | **String** | The integration key |  |
| **integration_id** | **String** | The integration ID |  |
| **patch_operation** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md) |  |  |

### Return type

[**FlagImportIntegration**](FlagImportIntegration.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## trigger_flag_import_job

> Object trigger_flag_import_job(project_key, integration_key, integration_id)

Trigger a single flag import run

Trigger a single flag import run for an existing flag import configuration. The `integrationKey` path parameter identifies the feature management system from which the import occurs, for example, `split`.

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
project_key = 'project_key_example' # String | The project key
integration_key = 'integration_key_example' # String | The integration key
integration_id = 'integration_id_example' # String | The integration ID

begin
  # Trigger a single flag import run
  result = api_instance.trigger_flag_import_job(project_key, integration_key, integration_id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->trigger_flag_import_job: #{e}"
end
```

#### Using the trigger_flag_import_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> trigger_flag_import_job_with_http_info(project_key, integration_key, integration_id)

```ruby
begin
  # Trigger a single flag import run
  data, status_code, headers = api_instance.trigger_flag_import_job_with_http_info(project_key, integration_key, integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling IntegrationsBetaApi->trigger_flag_import_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **integration_key** | **String** | The integration key |  |
| **integration_id** | **String** | The integration ID |  |

### Return type

**Object**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

