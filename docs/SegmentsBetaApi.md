# LaunchDarklyApi::SegmentsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_big_segment_export**](SegmentsBetaApi.md#create_big_segment_export) | **POST** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/exports | Create big segment export |
| [**create_big_segment_import**](SegmentsBetaApi.md#create_big_segment_import) | **POST** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/imports | Create big segment import |
| [**get_big_segment_export**](SegmentsBetaApi.md#get_big_segment_export) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/exports/{exportID} | Get big segment export |
| [**get_big_segment_import**](SegmentsBetaApi.md#get_big_segment_import) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/imports/{importID} | Get big segment import |


## create_big_segment_export

> create_big_segment_export(project_key, environment_key, segment_key)

Create big segment export

Starts a new export process for a big segment. This is an export for a synced segment or a list-based segment that can include more than 15,000 entries.

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

api_instance = LaunchDarklyApi::SegmentsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
segment_key = 'segment_key_example' # String | The segment key

begin
  # Create big segment export
  api_instance.create_big_segment_export(project_key, environment_key, segment_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsBetaApi->create_big_segment_export: #{e}"
end
```

#### Using the create_big_segment_export_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_big_segment_export_with_http_info(project_key, environment_key, segment_key)

```ruby
begin
  # Create big segment export
  data, status_code, headers = api_instance.create_big_segment_export_with_http_info(project_key, environment_key, segment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsBetaApi->create_big_segment_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **segment_key** | **String** | The segment key |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_big_segment_import

> create_big_segment_import(project_key, environment_key, segment_key, opts)

Create big segment import

Start a new import process for a big segment. This is an import for a list-based segment that can include more than 15,000 entries.

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

api_instance = LaunchDarklyApi::SegmentsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
segment_key = 'segment_key_example' # String | The segment key
opts = {
  file: File.new('/path/to/some/file'), # File | CSV file containing keys
  mode: 'mode_example' # String | Import mode. Use either `merge` or `replace`
}

begin
  # Create big segment import
  api_instance.create_big_segment_import(project_key, environment_key, segment_key, opts)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsBetaApi->create_big_segment_import: #{e}"
end
```

#### Using the create_big_segment_import_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_big_segment_import_with_http_info(project_key, environment_key, segment_key, opts)

```ruby
begin
  # Create big segment import
  data, status_code, headers = api_instance.create_big_segment_import_with_http_info(project_key, environment_key, segment_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsBetaApi->create_big_segment_import_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **segment_key** | **String** | The segment key |  |
| **file** | **File** | CSV file containing keys | [optional] |
| **mode** | **String** | Import mode. Use either &#x60;merge&#x60; or &#x60;replace&#x60; | [optional] |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## get_big_segment_export

> <Export> get_big_segment_export(project_key, environment_key, segment_key, export_id)

Get big segment export

Returns information about a big segment export process. This is an export for a synced segment or a list-based segment that can include more than 15,000 entries.

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

api_instance = LaunchDarklyApi::SegmentsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
segment_key = 'segment_key_example' # String | The segment key
export_id = 'export_id_example' # String | The export ID

begin
  # Get big segment export
  result = api_instance.get_big_segment_export(project_key, environment_key, segment_key, export_id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsBetaApi->get_big_segment_export: #{e}"
end
```

#### Using the get_big_segment_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Export>, Integer, Hash)> get_big_segment_export_with_http_info(project_key, environment_key, segment_key, export_id)

```ruby
begin
  # Get big segment export
  data, status_code, headers = api_instance.get_big_segment_export_with_http_info(project_key, environment_key, segment_key, export_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Export>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsBetaApi->get_big_segment_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **segment_key** | **String** | The segment key |  |
| **export_id** | **String** | The export ID |  |

### Return type

[**Export**](Export.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_big_segment_import

> <Import> get_big_segment_import(project_key, environment_key, segment_key, import_id)

Get big segment import

Returns information about a big segment import process. This is the import of a list-based segment that can include more than 15,000 entries.

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

api_instance = LaunchDarklyApi::SegmentsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
segment_key = 'segment_key_example' # String | The segment key
import_id = 'import_id_example' # String | The import ID

begin
  # Get big segment import
  result = api_instance.get_big_segment_import(project_key, environment_key, segment_key, import_id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsBetaApi->get_big_segment_import: #{e}"
end
```

#### Using the get_big_segment_import_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Import>, Integer, Hash)> get_big_segment_import_with_http_info(project_key, environment_key, segment_key, import_id)

```ruby
begin
  # Get big segment import
  data, status_code, headers = api_instance.get_big_segment_import_with_http_info(project_key, environment_key, segment_key, import_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Import>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsBetaApi->get_big_segment_import_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **segment_key** | **String** | The segment key |  |
| **import_id** | **String** | The import ID |  |

### Return type

[**Import**](Import.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

