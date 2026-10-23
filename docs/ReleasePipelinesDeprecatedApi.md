# LaunchDarklyApi::ReleasePipelinesDeprecatedApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_release_for_flag**](ReleasePipelinesDeprecatedApi.md#create_release_for_flag) | **PUT** /api/v2/projects/{projectKey}/flags/{flagKey}/release | Create a new release for flag |
| [**delete_release_by_flag_key**](ReleasePipelinesDeprecatedApi.md#delete_release_by_flag_key) | **DELETE** /api/v2/flags/{projectKey}/{flagKey}/release | Delete a release for flag |
| [**delete_release_pipeline**](ReleasePipelinesDeprecatedApi.md#delete_release_pipeline) | **DELETE** /api/v2/projects/{projectKey}/release-pipelines/{pipelineKey} | Delete release pipeline |
| [**get_all_release_pipelines**](ReleasePipelinesDeprecatedApi.md#get_all_release_pipelines) | **GET** /api/v2/projects/{projectKey}/release-pipelines | Get all release pipelines |
| [**get_all_release_progressions_for_release_pipeline**](ReleasePipelinesDeprecatedApi.md#get_all_release_progressions_for_release_pipeline) | **GET** /api/v2/projects/{projectKey}/release-pipelines/{pipelineKey}/releases | Get release progressions for release pipeline |
| [**get_release_by_flag_key**](ReleasePipelinesDeprecatedApi.md#get_release_by_flag_key) | **GET** /api/v2/flags/{projectKey}/{flagKey}/release | Get release for flag |
| [**get_release_pipeline_by_key**](ReleasePipelinesDeprecatedApi.md#get_release_pipeline_by_key) | **GET** /api/v2/projects/{projectKey}/release-pipelines/{pipelineKey} | Get release pipeline by key |
| [**patch_release_by_flag_key**](ReleasePipelinesDeprecatedApi.md#patch_release_by_flag_key) | **PATCH** /api/v2/flags/{projectKey}/{flagKey}/release | Patch release for flag |
| [**post_release_pipeline**](ReleasePipelinesDeprecatedApi.md#post_release_pipeline) | **POST** /api/v2/projects/{projectKey}/release-pipelines | Create a release pipeline |
| [**put_release_pipeline**](ReleasePipelinesDeprecatedApi.md#put_release_pipeline) | **PUT** /api/v2/projects/{projectKey}/release-pipelines/{pipelineKey} | Update a release pipeline |
| [**update_phase_status**](ReleasePipelinesDeprecatedApi.md#update_phase_status) | **PUT** /api/v2/projects/{projectKey}/flags/{flagKey}/release/phases/{phaseId} | Update phase status for release |


## create_release_for_flag

> <PipelineRelease> create_release_for_flag(project_key, flag_key, create_pipeline_release_input)

Create a new release for flag

Creates a release by adding a flag to a release pipeline

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

api_instance = LaunchDarklyApi::ReleasePipelinesDeprecatedApi.new
project_key = 'project_key_example' # String | The project key
flag_key = 'flag_key_example' # String | The flag key
create_pipeline_release_input = LaunchDarklyApi::CreatePipelineReleaseInput.new({release_pipeline_key: 'release_pipeline_key_example'}) # CreatePipelineReleaseInput | 

begin
  # Create a new release for flag
  result = api_instance.create_release_for_flag(project_key, flag_key, create_pipeline_release_input)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesDeprecatedApi->create_release_for_flag: #{e}"
end
```

#### Using the create_release_for_flag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineRelease>, Integer, Hash)> create_release_for_flag_with_http_info(project_key, flag_key, create_pipeline_release_input)

```ruby
begin
  # Create a new release for flag
  data, status_code, headers = api_instance.create_release_for_flag_with_http_info(project_key, flag_key, create_pipeline_release_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineRelease>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesDeprecatedApi->create_release_for_flag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **flag_key** | **String** | The flag key |  |
| **create_pipeline_release_input** | [**CreatePipelineReleaseInput**](CreatePipelineReleaseInput.md) |  |  |

### Return type

[**PipelineRelease**](PipelineRelease.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_release_by_flag_key

> delete_release_by_flag_key(project_key, flag_key)

Delete a release for flag

Deletes a release from a flag

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

api_instance = LaunchDarklyApi::ReleasePipelinesDeprecatedApi.new
project_key = 'project_key_example' # String | The project key
flag_key = 'flag_key_example' # String | The flag key

begin
  # Delete a release for flag
  api_instance.delete_release_by_flag_key(project_key, flag_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesDeprecatedApi->delete_release_by_flag_key: #{e}"
end
```

#### Using the delete_release_by_flag_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_release_by_flag_key_with_http_info(project_key, flag_key)

```ruby
begin
  # Delete a release for flag
  data, status_code, headers = api_instance.delete_release_by_flag_key_with_http_info(project_key, flag_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesDeprecatedApi->delete_release_by_flag_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **flag_key** | **String** | The flag key |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_release_pipeline

> delete_release_pipeline(project_key, pipeline_key)

Delete release pipeline

Deletes a release pipeline.  You cannot delete the default release pipeline.  If you want to delete a release pipeline that is currently the default, create a second release pipeline and set it as the default. Then delete the first release pipeline. To change the default release pipeline, use the [Update project](https://launchdarkly.com/docs/api/projects/patch-project) API to set the `defaultReleasePipelineKey`. 

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

api_instance = LaunchDarklyApi::ReleasePipelinesDeprecatedApi.new
project_key = 'project_key_example' # String | The project key
pipeline_key = 'pipeline_key_example' # String | The release pipeline key

begin
  # Delete release pipeline
  api_instance.delete_release_pipeline(project_key, pipeline_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesDeprecatedApi->delete_release_pipeline: #{e}"
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
  puts "Error when calling ReleasePipelinesDeprecatedApi->delete_release_pipeline_with_http_info: #{e}"
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

> <ReleasePipelineCollection> get_all_release_pipelines(project_key, opts)

Get all release pipelines

Get all release pipelines for a project.  ### Filtering release pipelines  LaunchDarkly supports the following fields for filters:  - `query` is a string that matches against the release pipeline `key`, `name`, and `description`. It is not case sensitive. For example: `?filter=query:examplePipeline`.  - `env` is a string that matches an environment key. For example: `?filter=env:production`. 

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

api_instance = LaunchDarklyApi::ReleasePipelinesDeprecatedApi.new
project_key = 'project_key_example' # String | The project key
opts = {
  filter: 'filter_example', # String | A comma-separated list of filters. Each filter is of the form field:value. Read the endpoint description for a full list of available filter fields.
  limit: 789, # Integer | The maximum number of items to return. Defaults to 20.
  offset: 789 # Integer | Where to start in the list. Defaults to 0. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
}

begin
  # Get all release pipelines
  result = api_instance.get_all_release_pipelines(project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesDeprecatedApi->get_all_release_pipelines: #{e}"
end
```

#### Using the get_all_release_pipelines_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReleasePipelineCollection>, Integer, Hash)> get_all_release_pipelines_with_http_info(project_key, opts)

```ruby
begin
  # Get all release pipelines
  data, status_code, headers = api_instance.get_all_release_pipelines_with_http_info(project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReleasePipelineCollection>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesDeprecatedApi->get_all_release_pipelines_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **filter** | **String** | A comma-separated list of filters. Each filter is of the form field:value. Read the endpoint description for a full list of available filter fields. | [optional] |
| **limit** | **Integer** | The maximum number of items to return. Defaults to 20. | [optional] |
| **offset** | **Integer** | Where to start in the list. Defaults to 0. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |

### Return type

[**ReleasePipelineCollection**](ReleasePipelineCollection.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_release_progressions_for_release_pipeline

> <PipelineReleaseProgressionCollection> get_all_release_progressions_for_release_pipeline(project_key, pipeline_key, opts)

Get release progressions for release pipeline

Get details on the progression of all releases, across all flags, for a release pipeline

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

api_instance = LaunchDarklyApi::ReleasePipelinesDeprecatedApi.new
project_key = 'project_key_example' # String | The project key
pipeline_key = 'pipeline_key_example' # String | The pipeline key
opts = {
  filter: 'filter_example', # String | Accepts filter by `status` and `activePhaseId`. `status` can take a value of `completed` or `active`. `activePhaseId` takes a UUID and will filter results down to releases active on the specified phase. Providing `status equals completed` along with an `activePhaseId` filter will return an error as they are disjoint sets of data. The combination of `status equals active` and `activePhaseId` will return the same results as `activePhaseId` alone.
  limit: 789, # Integer | The maximum number of items to return. Defaults to 20.
  offset: 789 # Integer | Where to start in the list. Defaults to 0. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
}

begin
  # Get release progressions for release pipeline
  result = api_instance.get_all_release_progressions_for_release_pipeline(project_key, pipeline_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesDeprecatedApi->get_all_release_progressions_for_release_pipeline: #{e}"
end
```

#### Using the get_all_release_progressions_for_release_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineReleaseProgressionCollection>, Integer, Hash)> get_all_release_progressions_for_release_pipeline_with_http_info(project_key, pipeline_key, opts)

```ruby
begin
  # Get release progressions for release pipeline
  data, status_code, headers = api_instance.get_all_release_progressions_for_release_pipeline_with_http_info(project_key, pipeline_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineReleaseProgressionCollection>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesDeprecatedApi->get_all_release_progressions_for_release_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **pipeline_key** | **String** | The pipeline key |  |
| **filter** | **String** | Accepts filter by &#x60;status&#x60; and &#x60;activePhaseId&#x60;. &#x60;status&#x60; can take a value of &#x60;completed&#x60; or &#x60;active&#x60;. &#x60;activePhaseId&#x60; takes a UUID and will filter results down to releases active on the specified phase. Providing &#x60;status equals completed&#x60; along with an &#x60;activePhaseId&#x60; filter will return an error as they are disjoint sets of data. The combination of &#x60;status equals active&#x60; and &#x60;activePhaseId&#x60; will return the same results as &#x60;activePhaseId&#x60; alone. | [optional] |
| **limit** | **Integer** | The maximum number of items to return. Defaults to 20. | [optional] |
| **offset** | **Integer** | Where to start in the list. Defaults to 0. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |

### Return type

[**PipelineReleaseProgressionCollection**](PipelineReleaseProgressionCollection.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_release_by_flag_key

> <PipelineRelease> get_release_by_flag_key(project_key, flag_key)

Get release for flag

Get currently active release for a flag

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

api_instance = LaunchDarklyApi::ReleasePipelinesDeprecatedApi.new
project_key = 'project_key_example' # String | The project key
flag_key = 'flag_key_example' # String | The flag key

begin
  # Get release for flag
  result = api_instance.get_release_by_flag_key(project_key, flag_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesDeprecatedApi->get_release_by_flag_key: #{e}"
end
```

#### Using the get_release_by_flag_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineRelease>, Integer, Hash)> get_release_by_flag_key_with_http_info(project_key, flag_key)

```ruby
begin
  # Get release for flag
  data, status_code, headers = api_instance.get_release_by_flag_key_with_http_info(project_key, flag_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineRelease>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesDeprecatedApi->get_release_by_flag_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **flag_key** | **String** | The flag key |  |

### Return type

[**PipelineRelease**](PipelineRelease.md)

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
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::ReleasePipelinesDeprecatedApi.new
project_key = 'project_key_example' # String | The project key
pipeline_key = 'pipeline_key_example' # String | The release pipeline key

begin
  # Get release pipeline by key
  result = api_instance.get_release_pipeline_by_key(project_key, pipeline_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesDeprecatedApi->get_release_pipeline_by_key: #{e}"
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
  puts "Error when calling ReleasePipelinesDeprecatedApi->get_release_pipeline_by_key_with_http_info: #{e}"
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


## patch_release_by_flag_key

> <PipelineRelease> patch_release_by_flag_key(project_key, flag_key, patch_operation)

Patch release for flag

This endpoint is only available for releases that are part of a legacy release pipeline. Releases for new release pipelines should use the [Update phase status for release](https://launchdarkly.com/docs/api/release-pipelines-deprecated/update-phase-status) endpoint.  Update currently active release for a flag. Updating releases requires the [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) format. To learn more, read [Updates](https://launchdarkly.com/docs/api#updates).  You can only use this endpoint to mark a release phase complete or incomplete. To indicate which phase to update, use the array index in the `path`. For example, to mark the first phase of a release as complete, use the following request body:  ```   [     {       \"op\": \"replace\",       \"path\": \"/phase/0/complete\",       \"value\": true     }   ] ``` 

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

api_instance = LaunchDarklyApi::ReleasePipelinesDeprecatedApi.new
project_key = 'project_key_example' # String | The project key
flag_key = 'flag_key_example' # String | The flag key
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField'})] # Array<PatchOperation> | 

begin
  # Patch release for flag
  result = api_instance.patch_release_by_flag_key(project_key, flag_key, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesDeprecatedApi->patch_release_by_flag_key: #{e}"
end
```

#### Using the patch_release_by_flag_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineRelease>, Integer, Hash)> patch_release_by_flag_key_with_http_info(project_key, flag_key, patch_operation)

```ruby
begin
  # Patch release for flag
  data, status_code, headers = api_instance.patch_release_by_flag_key_with_http_info(project_key, flag_key, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineRelease>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesDeprecatedApi->patch_release_by_flag_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **flag_key** | **String** | The flag key |  |
| **patch_operation** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md) |  |  |

### Return type

[**PipelineRelease**](PipelineRelease.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_release_pipeline

> <ReleasePipeline> post_release_pipeline(project_key, create_release_pipeline_input)

Create a release pipeline

Creates a new release pipeline.  The first release pipeline you create is automatically set as the default release pipeline for your project. To change the default release pipeline, use the [Update project](https://launchdarkly.com/docs/api/projects/patch-project) API to set the `defaultReleasePipelineKey`.  You can create up to 20 release pipelines per project. 

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

api_instance = LaunchDarklyApi::ReleasePipelinesDeprecatedApi.new
project_key = 'project_key_example' # String | The project key
create_release_pipeline_input = LaunchDarklyApi::CreateReleasePipelineInput.new({key: 'standard-pipeline', name: 'Standard Pipeline', phases: [LaunchDarklyApi::CreatePhaseInput.new({audiences: [LaunchDarklyApi::AudiencePost.new({environment_key: 'environment_key_example', name: 'name_example'})], name: 'Phase 1 - Testing'})]}) # CreateReleasePipelineInput | 

begin
  # Create a release pipeline
  result = api_instance.post_release_pipeline(project_key, create_release_pipeline_input)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesDeprecatedApi->post_release_pipeline: #{e}"
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
  puts "Error when calling ReleasePipelinesDeprecatedApi->post_release_pipeline_with_http_info: #{e}"
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


## put_release_pipeline

> <ReleasePipeline> put_release_pipeline(project_key, pipeline_key, update_release_pipeline_input)

Update a release pipeline

Updates a release pipeline.

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

api_instance = LaunchDarklyApi::ReleasePipelinesDeprecatedApi.new
project_key = 'project_key_example' # String | The project key
pipeline_key = 'pipeline_key_example' # String | The release pipeline key
update_release_pipeline_input = LaunchDarklyApi::UpdateReleasePipelineInput.new({name: 'Standard Pipeline', phases: [LaunchDarklyApi::CreatePhaseInput.new({audiences: [LaunchDarklyApi::AudiencePost.new({environment_key: 'environment_key_example', name: 'name_example'})], name: 'Phase 1 - Testing'})]}) # UpdateReleasePipelineInput | 

begin
  # Update a release pipeline
  result = api_instance.put_release_pipeline(project_key, pipeline_key, update_release_pipeline_input)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesDeprecatedApi->put_release_pipeline: #{e}"
end
```

#### Using the put_release_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReleasePipeline>, Integer, Hash)> put_release_pipeline_with_http_info(project_key, pipeline_key, update_release_pipeline_input)

```ruby
begin
  # Update a release pipeline
  data, status_code, headers = api_instance.put_release_pipeline_with_http_info(project_key, pipeline_key, update_release_pipeline_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReleasePipeline>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesDeprecatedApi->put_release_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **pipeline_key** | **String** | The release pipeline key |  |
| **update_release_pipeline_input** | [**UpdateReleasePipelineInput**](UpdateReleasePipelineInput.md) |  |  |

### Return type

[**ReleasePipeline**](ReleasePipeline.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_phase_status

> <PipelineRelease> update_phase_status(project_key, flag_key, phase_id, update_phase_status_input)

Update phase status for release

Updates the execution status of a phase of a release

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

api_instance = LaunchDarklyApi::ReleasePipelinesDeprecatedApi.new
project_key = 'project_key_example' # String | The project key
flag_key = 'flag_key_example' # String | The flag key
phase_id = 'phase_id_example' # String | The phase ID
update_phase_status_input = LaunchDarklyApi::UpdatePhaseStatusInput.new # UpdatePhaseStatusInput | 

begin
  # Update phase status for release
  result = api_instance.update_phase_status(project_key, flag_key, phase_id, update_phase_status_input)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesDeprecatedApi->update_phase_status: #{e}"
end
```

#### Using the update_phase_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineRelease>, Integer, Hash)> update_phase_status_with_http_info(project_key, flag_key, phase_id, update_phase_status_input)

```ruby
begin
  # Update phase status for release
  data, status_code, headers = api_instance.update_phase_status_with_http_info(project_key, flag_key, phase_id, update_phase_status_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineRelease>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePipelinesDeprecatedApi->update_phase_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **flag_key** | **String** | The flag key |  |
| **phase_id** | **String** | The phase ID |  |
| **update_phase_status_input** | [**UpdatePhaseStatusInput**](UpdatePhaseStatusInput.md) |  |  |

### Return type

[**PipelineRelease**](PipelineRelease.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

