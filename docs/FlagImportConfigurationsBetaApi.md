# LaunchDarklyApi::FlagImportConfigurationsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_flag_import_configuration**](FlagImportConfigurationsBetaApi.md#create_flag_import_configuration) | **POST** /api/v2/integration-capabilities/flag-import/{projectKey}/{integrationKey} | Create a flag import configuration |
| [**delete_flag_import_configuration**](FlagImportConfigurationsBetaApi.md#delete_flag_import_configuration) | **DELETE** /api/v2/integration-capabilities/flag-import/{projectKey}/{integrationKey}/{integrationId} | Delete a flag import configuration |
| [**get_flag_import_configuration**](FlagImportConfigurationsBetaApi.md#get_flag_import_configuration) | **GET** /api/v2/integration-capabilities/flag-import/{projectKey}/{integrationKey}/{integrationId} | Get a single flag import configuration |
| [**get_flag_import_configurations**](FlagImportConfigurationsBetaApi.md#get_flag_import_configurations) | **GET** /api/v2/integration-capabilities/flag-import | List all flag import configurations |
| [**patch_flag_import_configuration**](FlagImportConfigurationsBetaApi.md#patch_flag_import_configuration) | **PATCH** /api/v2/integration-capabilities/flag-import/{projectKey}/{integrationKey}/{integrationId} | Update a flag import configuration |
| [**trigger_flag_import_job**](FlagImportConfigurationsBetaApi.md#trigger_flag_import_job) | **POST** /api/v2/integration-capabilities/flag-import/{projectKey}/{integrationKey}/{integrationId}/trigger | Trigger a single flag import run |


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

api_instance = LaunchDarklyApi::FlagImportConfigurationsBetaApi.new
project_key = 'project_key_example' # String | The project key
integration_key = 'integration_key_example' # String | The integration key
flag_import_configuration_post = LaunchDarklyApi::FlagImportConfigurationPost.new({config: { key: 3.56}}) # FlagImportConfigurationPost | 

begin
  # Create a flag import configuration
  result = api_instance.create_flag_import_configuration(project_key, integration_key, flag_import_configuration_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FlagImportConfigurationsBetaApi->create_flag_import_configuration: #{e}"
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
  puts "Error when calling FlagImportConfigurationsBetaApi->create_flag_import_configuration_with_http_info: #{e}"
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

api_instance = LaunchDarklyApi::FlagImportConfigurationsBetaApi.new
project_key = 'project_key_example' # String | The project key
integration_key = 'integration_key_example' # String | The integration key
integration_id = 'integration_id_example' # String | The integration ID

begin
  # Delete a flag import configuration
  api_instance.delete_flag_import_configuration(project_key, integration_key, integration_id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FlagImportConfigurationsBetaApi->delete_flag_import_configuration: #{e}"
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
  puts "Error when calling FlagImportConfigurationsBetaApi->delete_flag_import_configuration_with_http_info: #{e}"
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

api_instance = LaunchDarklyApi::FlagImportConfigurationsBetaApi.new
project_key = 'project_key_example' # String | The project key
integration_key = 'integration_key_example' # String | The integration key, for example, `split`
integration_id = 'integration_id_example' # String | The integration ID

begin
  # Get a single flag import configuration
  result = api_instance.get_flag_import_configuration(project_key, integration_key, integration_id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FlagImportConfigurationsBetaApi->get_flag_import_configuration: #{e}"
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
  puts "Error when calling FlagImportConfigurationsBetaApi->get_flag_import_configuration_with_http_info: #{e}"
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

api_instance = LaunchDarklyApi::FlagImportConfigurationsBetaApi.new

begin
  # List all flag import configurations
  result = api_instance.get_flag_import_configurations
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FlagImportConfigurationsBetaApi->get_flag_import_configurations: #{e}"
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
  puts "Error when calling FlagImportConfigurationsBetaApi->get_flag_import_configurations_with_http_info: #{e}"
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


## patch_flag_import_configuration

> <FlagImportIntegration> patch_flag_import_configuration(project_key, integration_key, integration_id, patch_operation)

Update a flag import configuration

Updating a flag import configuration uses a [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) representation of the desired changes. To learn more, read [Updates](https://launchdarkly.com/docs/api#updates).<br/><br/>To add an element to the import configuration fields that are arrays, set the `path` to the name of the field and then append `/<array index>`. Use `/0` to add to the beginning of the array. Use `/-` to add to the end of the array.<br/><br/>You can update the `config`, `tags`, and `name` of the flag import configuration.

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

api_instance = LaunchDarklyApi::FlagImportConfigurationsBetaApi.new
project_key = 'project_key_example' # String | The project key
integration_key = 'integration_key_example' # String | The integration key
integration_id = 'integration_id_example' # String | The integration ID
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField'})] # Array<PatchOperation> | 

begin
  # Update a flag import configuration
  result = api_instance.patch_flag_import_configuration(project_key, integration_key, integration_id, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FlagImportConfigurationsBetaApi->patch_flag_import_configuration: #{e}"
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
  puts "Error when calling FlagImportConfigurationsBetaApi->patch_flag_import_configuration_with_http_info: #{e}"
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

> trigger_flag_import_job(project_key, integration_key, integration_id)

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

api_instance = LaunchDarklyApi::FlagImportConfigurationsBetaApi.new
project_key = 'project_key_example' # String | The project key
integration_key = 'integration_key_example' # String | The integration key
integration_id = 'integration_id_example' # String | The integration ID

begin
  # Trigger a single flag import run
  api_instance.trigger_flag_import_job(project_key, integration_key, integration_id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FlagImportConfigurationsBetaApi->trigger_flag_import_job: #{e}"
end
```

#### Using the trigger_flag_import_job_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> trigger_flag_import_job_with_http_info(project_key, integration_key, integration_id)

```ruby
begin
  # Trigger a single flag import run
  data, status_code, headers = api_instance.trigger_flag_import_job_with_http_info(project_key, integration_key, integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FlagImportConfigurationsBetaApi->trigger_flag_import_job_with_http_info: #{e}"
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

