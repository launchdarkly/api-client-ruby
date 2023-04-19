# LaunchDarklyApi::ContextSettingsApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**put_context_flag_setting**](ContextSettingsApi.md#put_context_flag_setting) | **PUT** /api/v2/projects/{projectKey}/environments/{environmentKey}/contexts/{contextKind}/{contextKey}/flags/{featureFlagKey} | Update flag settings for context |


## put_context_flag_setting

> put_context_flag_setting(project_key, environment_key, context_kind, context_key, feature_flag_key, value_put)

Update flag settings for context

 Enable or disable a feature flag for a context based on its context kind and key.  Omitting the `setting` attribute from the request body, or including a `setting` of `null`, erases the current setting for a context.  If you previously patched the flag, and the patch included the context's data, LaunchDarkly continues to use that data. If LaunchDarkly has never encountered the combination of the context's key and kind before, it calculates the flag values based on the context kind and key. 

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

api_instance = LaunchDarklyApi::ContextSettingsApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
context_kind = 'context_kind_example' # String | The context kind
context_key = 'context_key_example' # String | The context key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key
value_put = LaunchDarklyApi::ValuePut.new # ValuePut | 

begin
  # Update flag settings for context
  api_instance.put_context_flag_setting(project_key, environment_key, context_kind, context_key, feature_flag_key, value_put)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ContextSettingsApi->put_context_flag_setting: #{e}"
end
```

#### Using the put_context_flag_setting_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_context_flag_setting_with_http_info(project_key, environment_key, context_kind, context_key, feature_flag_key, value_put)

```ruby
begin
  # Update flag settings for context
  data, status_code, headers = api_instance.put_context_flag_setting_with_http_info(project_key, environment_key, context_kind, context_key, feature_flag_key, value_put)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ContextSettingsApi->put_context_flag_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **context_kind** | **String** | The context kind |  |
| **context_key** | **String** | The context key |  |
| **feature_flag_key** | **String** | The feature flag key |  |
| **value_put** | [**ValuePut**](ValuePut.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

