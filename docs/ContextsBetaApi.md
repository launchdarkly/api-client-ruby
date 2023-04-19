# LaunchDarklyApi::ContextsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_context_kinds_by_project_key**](ContextsBetaApi.md#get_context_kinds_by_project_key) | **GET** /api/v2/projects/{projectKey}/context-kinds | Get context kinds |
| [**put_context_kind**](ContextsBetaApi.md#put_context_kind) | **PUT** /api/v2/projects/{projectKey}/context-kinds/{key} | Create or update context kind |


## get_context_kinds_by_project_key

> <ContextKindsCollectionRep> get_context_kinds_by_project_key(project_key)

Get context kinds

Get all context kinds for a given project.

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

api_instance = LaunchDarklyApi::ContextsBetaApi.new
project_key = 'project_key_example' # String | The project key

begin
  # Get context kinds
  result = api_instance.get_context_kinds_by_project_key(project_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ContextsBetaApi->get_context_kinds_by_project_key: #{e}"
end
```

#### Using the get_context_kinds_by_project_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContextKindsCollectionRep>, Integer, Hash)> get_context_kinds_by_project_key_with_http_info(project_key)

```ruby
begin
  # Get context kinds
  data, status_code, headers = api_instance.get_context_kinds_by_project_key_with_http_info(project_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContextKindsCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ContextsBetaApi->get_context_kinds_by_project_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |

### Return type

[**ContextKindsCollectionRep**](ContextKindsCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_context_kind

> <UpsertResponseRep> put_context_kind(project_key, key, upsert_context_kind_payload)

Create or update context kind

Create or update a context kind by key. Only the included fields will be updated.

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

api_instance = LaunchDarklyApi::ContextsBetaApi.new
project_key = 'project_key_example' # String | The project key
key = 'key_example' # String | The context kind key
upsert_context_kind_payload = LaunchDarklyApi::UpsertContextKindPayload.new({name: 'organization'}) # UpsertContextKindPayload | 

begin
  # Create or update context kind
  result = api_instance.put_context_kind(project_key, key, upsert_context_kind_payload)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ContextsBetaApi->put_context_kind: #{e}"
end
```

#### Using the put_context_kind_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpsertResponseRep>, Integer, Hash)> put_context_kind_with_http_info(project_key, key, upsert_context_kind_payload)

```ruby
begin
  # Create or update context kind
  data, status_code, headers = api_instance.put_context_kind_with_http_info(project_key, key, upsert_context_kind_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpsertResponseRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ContextsBetaApi->put_context_kind_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **key** | **String** | The context kind key |  |
| **upsert_context_kind_payload** | [**UpsertContextKindPayload**](UpsertContextKindPayload.md) |  |  |

### Return type

[**UpsertResponseRep**](UpsertResponseRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

