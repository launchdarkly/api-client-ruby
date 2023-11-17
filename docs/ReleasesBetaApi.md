# LaunchDarklyApi::ReleasesBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_release_by_flag_key**](ReleasesBetaApi.md#get_release_by_flag_key) | **GET** /api/v2/flags/{projectKey}/{flagKey}/release | Get release for flag |
| [**patch_release_by_flag_key**](ReleasesBetaApi.md#patch_release_by_flag_key) | **PATCH** /api/v2/flags/{projectKey}/{flagKey}/release | Patch release for flag |


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

> patch_release_by_flag_key(project_key, flag_key, patch_operation)

Patch release for flag

Update currently active release for a flag. Updating releases requires the [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) format. To learn more, read [Updates](/#section/Overview/Updates).  You can only use this endpoint to mark a release phase complete or incomplete. To indicate which phase to update, use the array index in the `path`. For example, to mark the first phase of a release as complete, use the following request body:  ```   [     {       \"op\": \"replace\",       \"path\": \"/phase/0/complete\",       \"value\": true     }   ] ``` 

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
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField', value: new example value})] # Array<PatchOperation> | 

begin
  # Patch release for flag
  api_instance.patch_release_by_flag_key(project_key, flag_key, patch_operation)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasesBetaApi->patch_release_by_flag_key: #{e}"
end
```

#### Using the patch_release_by_flag_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> patch_release_by_flag_key_with_http_info(project_key, flag_key, patch_operation)

```ruby
begin
  # Patch release for flag
  data, status_code, headers = api_instance.patch_release_by_flag_key_with_http_info(project_key, flag_key, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

