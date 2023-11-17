# LaunchDarklyApi::ReleasePipelinesBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_release_pipeline**](ReleasePipelinesBetaApi.md#delete_release_pipeline) | **DELETE** /api/v2/projects/{projectKey}/release-pipelines/{pipelineKey} | Delete release pipeline |
| [**get_all_release_pipelines**](ReleasePipelinesBetaApi.md#get_all_release_pipelines) | **GET** /api/v2/projects/{projectKey}/release-pipelines | Get all release pipelines |
| [**get_release_pipeline_by_key**](ReleasePipelinesBetaApi.md#get_release_pipeline_by_key) | **GET** /api/v2/projects/{projectKey}/release-pipelines/{pipelineKey} | Get release pipeline by key |
| [**patch_release_pipeline**](ReleasePipelinesBetaApi.md#patch_release_pipeline) | **PATCH** /api/v2/projects/{projectKey}/release-pipelines/{pipelineKey} | Update a release pipeline |
| [**post_release_pipeline**](ReleasePipelinesBetaApi.md#post_release_pipeline) | **POST** /api/v2/projects/{projectKey}/release-pipelines | Create a release pipeline |


## delete_release_pipeline

> delete_release_pipeline(project_key, pipeline_key)

Delete release pipeline

Delete a release pipeline

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

api_instance = LaunchDarklyApi::ReleasePipelinesBetaApi.new
project_key = 'project_key_example' # String | The project key
pipeline_key = 'pipeline_key_example' # String | The release pipeline key

begin
  # Delete release pipeline
  api_instance.delete_release_pipeline(project_key, pipeline_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesBetaApi->delete_release_pipeline: #{e}"
end
```

#### Using the delete_release_pipeline_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_release_pipeline_with_http_info(project_key, pipeline_key)

```ruby
begin
  # Delete release pipeline
  data, status_code, headers = api_instance.delete_release_pipeline_with_http_info(project_key, pipeline_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesBetaApi->delete_release_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **pipeline_key** | **String** | The release pipeline key |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_release_pipelines

> <ReleasePipelineCollection> get_all_release_pipelines(project_key)

Get all release pipelines

Get all release pipelines for a project

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

api_instance = LaunchDarklyApi::ReleasePipelinesBetaApi.new
project_key = 'project_key_example' # String | The project key

begin
  # Get all release pipelines
  result = api_instance.get_all_release_pipelines(project_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesBetaApi->get_all_release_pipelines: #{e}"
end
```

#### Using the get_all_release_pipelines_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReleasePipelineCollection>, Integer, Hash)> get_all_release_pipelines_with_http_info(project_key)

```ruby
begin
  # Get all release pipelines
  data, status_code, headers = api_instance.get_all_release_pipelines_with_http_info(project_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReleasePipelineCollection>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesBetaApi->get_all_release_pipelines_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |

### Return type

[**ReleasePipelineCollection**](ReleasePipelineCollection.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_release_pipeline_by_key

> <ReleasePipeline> get_release_pipeline_by_key(project_key, pipeline_key)

Get release pipeline by key

Get a release pipeline by key

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

api_instance = LaunchDarklyApi::ReleasePipelinesBetaApi.new
project_key = 'project_key_example' # String | The project key
pipeline_key = 'pipeline_key_example' # String | The release pipeline key

begin
  # Get release pipeline by key
  result = api_instance.get_release_pipeline_by_key(project_key, pipeline_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesBetaApi->get_release_pipeline_by_key: #{e}"
end
```

#### Using the get_release_pipeline_by_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReleasePipeline>, Integer, Hash)> get_release_pipeline_by_key_with_http_info(project_key, pipeline_key)

```ruby
begin
  # Get release pipeline by key
  data, status_code, headers = api_instance.get_release_pipeline_by_key_with_http_info(project_key, pipeline_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReleasePipeline>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesBetaApi->get_release_pipeline_by_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **pipeline_key** | **String** | The release pipeline key |  |

### Return type

[**ReleasePipeline**](ReleasePipeline.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_release_pipeline

> <ReleasePipeline> patch_release_pipeline(project_key, pipeline_key)

Update a release pipeline

Updates a release pipeline. Updating a release pipeline uses a [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) representation of the desired changes. To learn more, read [Updates](/#section/Overview/Updates).

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

api_instance = LaunchDarklyApi::ReleasePipelinesBetaApi.new
project_key = 'project_key_example' # String | The project key
pipeline_key = 'pipeline_key_example' # String | The release pipeline key

begin
  # Update a release pipeline
  result = api_instance.patch_release_pipeline(project_key, pipeline_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesBetaApi->patch_release_pipeline: #{e}"
end
```

#### Using the patch_release_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReleasePipeline>, Integer, Hash)> patch_release_pipeline_with_http_info(project_key, pipeline_key)

```ruby
begin
  # Update a release pipeline
  data, status_code, headers = api_instance.patch_release_pipeline_with_http_info(project_key, pipeline_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReleasePipeline>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesBetaApi->patch_release_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **pipeline_key** | **String** | The release pipeline key |  |

### Return type

[**ReleasePipeline**](ReleasePipeline.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_release_pipeline

> <ReleasePipeline> post_release_pipeline(project_key, create_release_pipeline_input)

Create a release pipeline

Creates a new release pipeline

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

api_instance = LaunchDarklyApi::ReleasePipelinesBetaApi.new
project_key = 'project_key_example' # String | The project key
create_release_pipeline_input = LaunchDarklyApi::CreateReleasePipelineInput.new({key: 'standard-pipeline', name: 'Standard Pipeline', phases: [LaunchDarklyApi::CreatePhaseInput.new({audiences: [LaunchDarklyApi::AudiencePost.new({environment_key: 'environment_key_example', name: 'name_example'})], name: 'Phase 1 - Testing'})]}) # CreateReleasePipelineInput | 

begin
  # Create a release pipeline
  result = api_instance.post_release_pipeline(project_key, create_release_pipeline_input)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesBetaApi->post_release_pipeline: #{e}"
end
```

#### Using the post_release_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReleasePipeline>, Integer, Hash)> post_release_pipeline_with_http_info(project_key, create_release_pipeline_input)

```ruby
begin
  # Create a release pipeline
  data, status_code, headers = api_instance.post_release_pipeline_with_http_info(project_key, create_release_pipeline_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReleasePipeline>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesBetaApi->post_release_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **create_release_pipeline_input** | [**CreateReleasePipelineInput**](CreateReleasePipelineInput.md) |  |  |

### Return type

[**ReleasePipeline**](ReleasePipeline.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

