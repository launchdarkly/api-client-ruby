# LaunchDarklyApi::PersistentStoreIntegrationsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_big_segment_store_integration**](PersistentStoreIntegrationsBetaApi.md#create_big_segment_store_integration) | **POST** /api/v2/integration-capabilities/big-segment-store/{projectKey}/{environmentKey}/{integrationKey} | Create big segment store integration |
| [**delete_big_segment_store_integration**](PersistentStoreIntegrationsBetaApi.md#delete_big_segment_store_integration) | **DELETE** /api/v2/integration-capabilities/big-segment-store/{projectKey}/{environmentKey}/{integrationKey}/{integrationId} | Delete big segment store integration |
| [**get_big_segment_store_integration**](PersistentStoreIntegrationsBetaApi.md#get_big_segment_store_integration) | **GET** /api/v2/integration-capabilities/big-segment-store/{projectKey}/{environmentKey}/{integrationKey}/{integrationId} | Get big segment store integration by ID |
| [**get_big_segment_store_integrations**](PersistentStoreIntegrationsBetaApi.md#get_big_segment_store_integrations) | **GET** /api/v2/integration-capabilities/big-segment-store | List all big segment store integrations |
| [**patch_big_segment_store_integration**](PersistentStoreIntegrationsBetaApi.md#patch_big_segment_store_integration) | **PATCH** /api/v2/integration-capabilities/big-segment-store/{projectKey}/{environmentKey}/{integrationKey}/{integrationId} | Update big segment store integration |


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

api_instance = LaunchDarklyApi::PersistentStoreIntegrationsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
integration_key = 'integration_key_example' # String | The integration key, either `redis` or `dynamodb`
integration_delivery_configuration_post = LaunchDarklyApi::IntegrationDeliveryConfigurationPost.new({config: { key: 3.56}}) # IntegrationDeliveryConfigurationPost | 

begin
  # Create big segment store integration
  result = api_instance.create_big_segment_store_integration(project_key, environment_key, integration_key, integration_delivery_configuration_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling PersistentStoreIntegrationsBetaApi->create_big_segment_store_integration: #{e}"
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
  puts "Error when calling PersistentStoreIntegrationsBetaApi->create_big_segment_store_integration_with_http_info: #{e}"
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

api_instance = LaunchDarklyApi::PersistentStoreIntegrationsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
integration_key = 'integration_key_example' # String | The integration key, either `redis` or `dynamodb`
integration_id = 'integration_id_example' # String | The integration ID

begin
  # Delete big segment store integration
  api_instance.delete_big_segment_store_integration(project_key, environment_key, integration_key, integration_id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling PersistentStoreIntegrationsBetaApi->delete_big_segment_store_integration: #{e}"
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
  puts "Error when calling PersistentStoreIntegrationsBetaApi->delete_big_segment_store_integration_with_http_info: #{e}"
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

api_instance = LaunchDarklyApi::PersistentStoreIntegrationsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
integration_key = 'integration_key_example' # String | The integration key, either `redis` or `dynamodb`
integration_id = 'integration_id_example' # String | The integration ID

begin
  # Get big segment store integration by ID
  result = api_instance.get_big_segment_store_integration(project_key, environment_key, integration_key, integration_id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling PersistentStoreIntegrationsBetaApi->get_big_segment_store_integration: #{e}"
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
  puts "Error when calling PersistentStoreIntegrationsBetaApi->get_big_segment_store_integration_with_http_info: #{e}"
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

api_instance = LaunchDarklyApi::PersistentStoreIntegrationsBetaApi.new

begin
  # List all big segment store integrations
  result = api_instance.get_big_segment_store_integrations
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling PersistentStoreIntegrationsBetaApi->get_big_segment_store_integrations: #{e}"
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
  puts "Error when calling PersistentStoreIntegrationsBetaApi->get_big_segment_store_integrations_with_http_info: #{e}"
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

api_instance = LaunchDarklyApi::PersistentStoreIntegrationsBetaApi.new
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
  puts "Error when calling PersistentStoreIntegrationsBetaApi->patch_big_segment_store_integration: #{e}"
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
  puts "Error when calling PersistentStoreIntegrationsBetaApi->patch_big_segment_store_integration_with_http_info: #{e}"
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

