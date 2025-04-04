# LaunchDarklyApi::ReleasesBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_release_for_flag**](ReleasesBetaApi.md#create_release_for_flag) | **PUT** /api/v2/projects/{projectKey}/flags/{flagKey}/release | Create a new release for flag |
| [**delete_release_by_flag_key**](ReleasesBetaApi.md#delete_release_by_flag_key) | **DELETE** /api/v2/flags/{projectKey}/{flagKey}/release | Delete a release for flag |
| [**get_release_by_flag_key**](ReleasesBetaApi.md#get_release_by_flag_key) | **GET** /api/v2/flags/{projectKey}/{flagKey}/release | Get release for flag |
| [**patch_release_by_flag_key**](ReleasesBetaApi.md#patch_release_by_flag_key) | **PATCH** /api/v2/flags/{projectKey}/{flagKey}/release | Patch release for flag |
| [**update_phase_status**](ReleasesBetaApi.md#update_phase_status) | **PUT** /api/v2/projects/{projectKey}/flags/{flagKey}/release/phases/{phaseId} | Update phase status for release |


## create_release_for_flag

> <Release> create_release_for_flag(project_key, flag_key, create_release_input)

Create a new release for flag

Creates a release by adding a flag to a release pipeline

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

api_instance = LaunchDarklyApi::ReleasesBetaApi.new
project_key = 'project_key_example' # String | The project key
flag_key = 'flag_key_example' # String | The flag key
create_release_input = LaunchDarklyApi::CreateReleaseInput.new({release_pipeline_key: 'release_pipeline_key_example'}) # CreateReleaseInput | 

begin
  # Create a new release for flag
  result = api_instance.create_release_for_flag(project_key, flag_key, create_release_input)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasesBetaApi->create_release_for_flag: #{e}"
end
```

#### Using the create_release_for_flag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Release>, Integer, Hash)> create_release_for_flag_with_http_info(project_key, flag_key, create_release_input)

```ruby
begin
  # Create a new release for flag
  data, status_code, headers = api_instance.create_release_for_flag_with_http_info(project_key, flag_key, create_release_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Release>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasesBetaApi->create_release_for_flag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **flag_key** | **String** | The flag key |  |
| **create_release_input** | [**CreateReleaseInput**](CreateReleaseInput.md) |  |  |

### Return type

[**Release**](Release.md)

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
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = LaunchDarklyApi::ReleasesBetaApi.new
project_key = 'project_key_example' # String | The project key
flag_key = 'flag_key_example' # String | The flag key

begin
  # Delete a release for flag
  api_instance.delete_release_by_flag_key(project_key, flag_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasesBetaApi->delete_release_by_flag_key: #{e}"
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
  puts "Error when calling ReleasesBetaApi->delete_release_by_flag_key_with_http_info: #{e}"
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


## get_release_by_flag_key

> <Release> get_release_by_flag_key(project_key, flag_key)

Get release for flag

Get currently active release for a flag

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

api_instance = LaunchDarklyApi::ReleasesBetaApi.new
project_key = 'project_key_example' # String | The project key
flag_key = 'flag_key_example' # String | The flag key

begin
  # Get release for flag
  result = api_instance.get_release_by_flag_key(project_key, flag_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasesBetaApi->get_release_by_flag_key: #{e}"
end
```

#### Using the get_release_by_flag_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Release>, Integer, Hash)> get_release_by_flag_key_with_http_info(project_key, flag_key)

```ruby
begin
  # Get release for flag
  data, status_code, headers = api_instance.get_release_by_flag_key_with_http_info(project_key, flag_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Release>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasesBetaApi->get_release_by_flag_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **flag_key** | **String** | The flag key |  |

### Return type

[**Release**](Release.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_release_by_flag_key

> <Release> patch_release_by_flag_key(project_key, flag_key, patch_operation)

Patch release for flag

This endpoint is only available for releases that are part of a legacy release pipeline. Releases for new release pipelines should use the [Update phase status for release](https://launchdarkly.com/docs/api/releases-beta/update-phase-status) endpoint. To learn more about migrating from legacy release pipelines to fully automated release pipelines, read the [Release pipeline migration guide](https://launchdarkly.com/docs/guides/flags/release-pipeline-migration).  Update currently active release for a flag. Updating releases requires the [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) format. To learn more, read [Updates](https://launchdarkly.com/docs/api#updates).  You can only use this endpoint to mark a release phase complete or incomplete. To indicate which phase to update, use the array index in the `path`. For example, to mark the first phase of a release as complete, use the following request body:  ```   [     {       \"op\": \"replace\",       \"path\": \"/phase/0/complete\",       \"value\": true     }   ] ``` 

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

api_instance = LaunchDarklyApi::ReleasesBetaApi.new
project_key = 'project_key_example' # String | The project key
flag_key = 'flag_key_example' # String | The flag key
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField'})] # Array<PatchOperation> | 

begin
  # Patch release for flag
  result = api_instance.patch_release_by_flag_key(project_key, flag_key, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasesBetaApi->patch_release_by_flag_key: #{e}"
end
```

#### Using the patch_release_by_flag_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Release>, Integer, Hash)> patch_release_by_flag_key_with_http_info(project_key, flag_key, patch_operation)

```ruby
begin
  # Patch release for flag
  data, status_code, headers = api_instance.patch_release_by_flag_key_with_http_info(project_key, flag_key, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Release>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasesBetaApi->patch_release_by_flag_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **flag_key** | **String** | The flag key |  |
| **patch_operation** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md) |  |  |

### Return type

[**Release**](Release.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_phase_status

> <Release> update_phase_status(project_key, flag_key, phase_id, update_phase_status_input)

Update phase status for release

Updates the execution status of a phase of a release

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

api_instance = LaunchDarklyApi::ReleasesBetaApi.new
project_key = 'project_key_example' # String | The project key
flag_key = 'flag_key_example' # String | The flag key
phase_id = 'phase_id_example' # String | The phase ID
update_phase_status_input = LaunchDarklyApi::UpdatePhaseStatusInput.new # UpdatePhaseStatusInput | 

begin
  # Update phase status for release
  result = api_instance.update_phase_status(project_key, flag_key, phase_id, update_phase_status_input)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasesBetaApi->update_phase_status: #{e}"
end
```

#### Using the update_phase_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Release>, Integer, Hash)> update_phase_status_with_http_info(project_key, flag_key, phase_id, update_phase_status_input)

```ruby
begin
  # Update phase status for release
  data, status_code, headers = api_instance.update_phase_status_with_http_info(project_key, flag_key, phase_id, update_phase_status_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Release>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasesBetaApi->update_phase_status_with_http_info: #{e}"
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

[**Release**](Release.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

