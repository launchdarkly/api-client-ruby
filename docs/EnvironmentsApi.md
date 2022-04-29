# LaunchDarklyApi::EnvironmentsApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_environment**](EnvironmentsApi.md#delete_environment) | **DELETE** /api/v2/projects/{projectKey}/environments/{environmentKey} | Delete environment |
| [**get_environment**](EnvironmentsApi.md#get_environment) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey} | Get environment |
| [**patch_environment**](EnvironmentsApi.md#patch_environment) | **PATCH** /api/v2/projects/{projectKey}/environments/{environmentKey} | Update environment |
| [**post_environment**](EnvironmentsApi.md#post_environment) | **POST** /api/v2/projects/{projectKey}/environments | Create environment |
| [**reset_environment_mobile_key**](EnvironmentsApi.md#reset_environment_mobile_key) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/mobileKey | Reset environment mobile SDK key |
| [**reset_environment_sdk_key**](EnvironmentsApi.md#reset_environment_sdk_key) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/apiKey | Reset environment SDK key |


## delete_environment

> delete_environment(project_key, environment_key)

Delete environment

Delete a environment by key.

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

api_instance = LaunchDarklyApi::EnvironmentsApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key

begin
  # Delete environment
  api_instance.delete_environment(project_key, environment_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling EnvironmentsApi->delete_environment: #{e}"
end
```

#### Using the delete_environment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_environment_with_http_info(project_key, environment_key)

```ruby
begin
  # Delete environment
  data, status_code, headers = api_instance.delete_environment_with_http_info(project_key, environment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling EnvironmentsApi->delete_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_environment

> <Environment> get_environment(project_key, environment_key)

Get environment

> ### Approval settings > > The `approvalSettings` key is only returned when the Flag Approvals feature is enabled.  Get an environment given a project and key. 

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

api_instance = LaunchDarklyApi::EnvironmentsApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key

begin
  # Get environment
  result = api_instance.get_environment(project_key, environment_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling EnvironmentsApi->get_environment: #{e}"
end
```

#### Using the get_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Environment>, Integer, Hash)> get_environment_with_http_info(project_key, environment_key)

```ruby
begin
  # Get environment
  data, status_code, headers = api_instance.get_environment_with_http_info(project_key, environment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Environment>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling EnvironmentsApi->get_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |

### Return type

[**Environment**](Environment.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_environment

> <Environment> patch_environment(project_key, environment_key, patch_operation)

Update environment

 Update an environment. Requires a [JSON Patch](https://datatracker.ietf.org/doc/html/rfc6902) representation of the desired changes to the environment.  To update fields in the environment object that are arrays, set the `path` to the name of the field and then append `/<array index>`. Using `/0` appends to the beginning of the array.  ### Approval settings  This request only returns the `approvalSettings` key if the [Flag Approvals](https://docs.launchdarkly.com/home/feature-workflows/approvals) feature is enabled.  Only the `canReviewOwnRequest`, `canApplyDeclinedChanges`, `minNumApprovals`, `required` and `requiredApprovalTagsfields` are editable.  If you try to patch the environment by setting both `required` and `requiredApprovalTags`, the request fails and an error appears. You can specify either required approvals for all flags in an environment or those with specific tags, but not both. 

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

api_instance = LaunchDarklyApi::EnvironmentsApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField', value: new example value})] # Array<PatchOperation> | 

begin
  # Update environment
  result = api_instance.patch_environment(project_key, environment_key, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling EnvironmentsApi->patch_environment: #{e}"
end
```

#### Using the patch_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Environment>, Integer, Hash)> patch_environment_with_http_info(project_key, environment_key, patch_operation)

```ruby
begin
  # Update environment
  data, status_code, headers = api_instance.patch_environment_with_http_info(project_key, environment_key, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Environment>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling EnvironmentsApi->patch_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **patch_operation** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md) |  |  |

### Return type

[**Environment**](Environment.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_environment

> <Environment> post_environment(project_key, environment_post)

Create environment

> ### Approval settings > > The `approvalSettings` key is only returned when the Flag Approvals feature is enabled. > > You cannot update approval settings when creating new environments. Update approval settings with the PATCH Environment API.  Create a new environment in a specified project with a given name, key, swatch color, and default TTL. 

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

api_instance = LaunchDarklyApi::EnvironmentsApi.new
project_key = 'project_key_example' # String | The project key
environment_post = LaunchDarklyApi::EnvironmentPost.new({name: 'My Environment', key: 'my-environment', color: 'F5A623'}) # EnvironmentPost | 

begin
  # Create environment
  result = api_instance.post_environment(project_key, environment_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling EnvironmentsApi->post_environment: #{e}"
end
```

#### Using the post_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Environment>, Integer, Hash)> post_environment_with_http_info(project_key, environment_post)

```ruby
begin
  # Create environment
  data, status_code, headers = api_instance.post_environment_with_http_info(project_key, environment_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Environment>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling EnvironmentsApi->post_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_post** | [**EnvironmentPost**](EnvironmentPost.md) |  |  |

### Return type

[**Environment**](Environment.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reset_environment_mobile_key

> <Environment> reset_environment_mobile_key(project_key, environment_key)

Reset environment mobile SDK key

Reset an environment's mobile key. The optional expiry for the old key is deprecated for this endpoint, so the old key will always expire immediately.

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

api_instance = LaunchDarklyApi::EnvironmentsApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key

begin
  # Reset environment mobile SDK key
  result = api_instance.reset_environment_mobile_key(project_key, environment_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling EnvironmentsApi->reset_environment_mobile_key: #{e}"
end
```

#### Using the reset_environment_mobile_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Environment>, Integer, Hash)> reset_environment_mobile_key_with_http_info(project_key, environment_key)

```ruby
begin
  # Reset environment mobile SDK key
  data, status_code, headers = api_instance.reset_environment_mobile_key_with_http_info(project_key, environment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Environment>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling EnvironmentsApi->reset_environment_mobile_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |

### Return type

[**Environment**](Environment.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reset_environment_sdk_key

> <Environment> reset_environment_sdk_key(project_key, environment_key, opts)

Reset environment SDK key

Reset an environment's SDK key with an optional expiry time for the old key.

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

api_instance = LaunchDarklyApi::EnvironmentsApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
opts = {
  expiry: 789 # Integer | The time at which you want the old SDK key to expire, in UNIX milliseconds. By default, the key expires immediately.
}

begin
  # Reset environment SDK key
  result = api_instance.reset_environment_sdk_key(project_key, environment_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling EnvironmentsApi->reset_environment_sdk_key: #{e}"
end
```

#### Using the reset_environment_sdk_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Environment>, Integer, Hash)> reset_environment_sdk_key_with_http_info(project_key, environment_key, opts)

```ruby
begin
  # Reset environment SDK key
  data, status_code, headers = api_instance.reset_environment_sdk_key_with_http_info(project_key, environment_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Environment>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling EnvironmentsApi->reset_environment_sdk_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **expiry** | **Integer** | The time at which you want the old SDK key to expire, in UNIX milliseconds. By default, the key expires immediately. | [optional] |

### Return type

[**Environment**](Environment.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

