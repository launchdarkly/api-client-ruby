# LaunchDarklyApi::FeatureFlagsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_dependent_flags**](FeatureFlagsBetaApi.md#get_dependent_flags) | **GET** /api/v2/flags/{projKey}/{flagKey}/dependent-flags | List dependent feature flags |
| [**get_dependent_flags_by_env**](FeatureFlagsBetaApi.md#get_dependent_flags_by_env) | **GET** /api/v2/flags/{projKey}/{envKey}/{flagKey}/dependent-flags | List dependent feature flags by environment |


## get_dependent_flags

> <MultiEnvironmentDependentFlags> get_dependent_flags(proj_key, flag_key)

List dependent feature flags

List dependent flags across all environments for the flag specified in the path parameters. A dependent flag is a flag that uses another flag as a prerequisite.

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

api_instance = LaunchDarklyApi::FeatureFlagsBetaApi.new
proj_key = 'proj_key_example' # String | The project key
flag_key = 'flag_key_example' # String | The flag key

begin
  # List dependent feature flags
  result = api_instance.get_dependent_flags(proj_key, flag_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsBetaApi->get_dependent_flags: #{e}"
end
```

#### Using the get_dependent_flags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiEnvironmentDependentFlags>, Integer, Hash)> get_dependent_flags_with_http_info(proj_key, flag_key)

```ruby
begin
  # List dependent feature flags
  data, status_code, headers = api_instance.get_dependent_flags_with_http_info(proj_key, flag_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiEnvironmentDependentFlags>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsBetaApi->get_dependent_flags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key |  |
| **flag_key** | **String** | The flag key |  |

### Return type

[**MultiEnvironmentDependentFlags**](MultiEnvironmentDependentFlags.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dependent_flags_by_env

> <DependentFlagsByEnvironment> get_dependent_flags_by_env(proj_key, env_key, flag_key)

List dependent feature flags by environment

List dependent flags across all environments for the flag specified in the path parameters. A dependent flag is a flag that uses another flag as a prerequisite.

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

api_instance = LaunchDarklyApi::FeatureFlagsBetaApi.new
proj_key = 'proj_key_example' # String | The project key
env_key = 'env_key_example' # String | The environment key
flag_key = 'flag_key_example' # String | The flag key

begin
  # List dependent feature flags by environment
  result = api_instance.get_dependent_flags_by_env(proj_key, env_key, flag_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsBetaApi->get_dependent_flags_by_env: #{e}"
end
```

#### Using the get_dependent_flags_by_env_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DependentFlagsByEnvironment>, Integer, Hash)> get_dependent_flags_by_env_with_http_info(proj_key, env_key, flag_key)

```ruby
begin
  # List dependent feature flags by environment
  data, status_code, headers = api_instance.get_dependent_flags_by_env_with_http_info(proj_key, env_key, flag_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DependentFlagsByEnvironment>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsBetaApi->get_dependent_flags_by_env_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key |  |
| **env_key** | **String** | The environment key |  |
| **flag_key** | **String** | The flag key |  |

### Return type

[**DependentFlagsByEnvironment**](DependentFlagsByEnvironment.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

