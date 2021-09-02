# LaunchDarklyApi::UserSettingsApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_expiring_flags_for_user**](UserSettingsApi.md#get_expiring_flags_for_user) | **GET** /api/v2/users/{projKey}/{userKey}/expiring-user-targets/{envKey} | Get expiring dates on flags for user |
| [**get_user_flag_setting**](UserSettingsApi.md#get_user_flag_setting) | **GET** /api/v2/users/{projKey}/{envKey}/{key}/flags/{featureKey} | Get flag setting for user |
| [**get_user_flag_settings**](UserSettingsApi.md#get_user_flag_settings) | **GET** /api/v2/users/{projKey}/{envKey}/{key}/flags | List flag settings for user |
| [**patch_expiring_flags_for_user**](UserSettingsApi.md#patch_expiring_flags_for_user) | **PATCH** /api/v2/users/{projKey}/{userKey}/expiring-user-targets/{envKey} | Update expiring user target for flags |
| [**put_flag_setting**](UserSettingsApi.md#put_flag_setting) | **PUT** /api/v2/users/{projKey}/{envKey}/{key}/flags/{featureKey} | Update flag settings for user |


## get_expiring_flags_for_user

> <ExpiringUserTargetGetResponse> get_expiring_flags_for_user(proj_key, user_key, env_key)

Get expiring dates on flags for user

Get a list of flags for which the given user is scheduled for removal.

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

api_instance = LaunchDarklyApi::UserSettingsApi.new
proj_key = 'proj_key_example' # String | The project key.
user_key = 'user_key_example' # String | The user key.
env_key = 'env_key_example' # String | The environment key.

begin
  # Get expiring dates on flags for user
  result = api_instance.get_expiring_flags_for_user(proj_key, user_key, env_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UserSettingsApi->get_expiring_flags_for_user: #{e}"
end
```

#### Using the get_expiring_flags_for_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpiringUserTargetGetResponse>, Integer, Hash)> get_expiring_flags_for_user_with_http_info(proj_key, user_key, env_key)

```ruby
begin
  # Get expiring dates on flags for user
  data, status_code, headers = api_instance.get_expiring_flags_for_user_with_http_info(proj_key, user_key, env_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExpiringUserTargetGetResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UserSettingsApi->get_expiring_flags_for_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key. |  |
| **user_key** | **String** | The user key. |  |
| **env_key** | **String** | The environment key. |  |

### Return type

[**ExpiringUserTargetGetResponse**](ExpiringUserTargetGetResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_flag_setting

> <UserFlagSetting> get_user_flag_setting(proj_key, env_key, key, feature_key)

Get flag setting for user

Get a single flag setting for a user by key. The most important attribute in the response is the `_value`. The `_value` is the current setting that the user sees. For a boolean feature toggle, this is `true`, `false`, or `null`. `null` returns if there is no defined fallback value. The example response indicates that the user `Abbie_Braun` has the `sort.order` flag enabled.<br /><br />The setting attribute indicates whether you've explicitly targeted a user to receive a particular variation. For example, if you have turned off a feature flag for a user, this setting will be `false`. A setting of `null` means that you haven't assigned that user to a specific variation.

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

api_instance = LaunchDarklyApi::UserSettingsApi.new
proj_key = 'proj_key_example' # String | The project key
env_key = 'env_key_example' # String | The environment key
key = 'key_example' # String | The user key
feature_key = 'feature_key_example' # String | The feature flag key

begin
  # Get flag setting for user
  result = api_instance.get_user_flag_setting(proj_key, env_key, key, feature_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UserSettingsApi->get_user_flag_setting: #{e}"
end
```

#### Using the get_user_flag_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserFlagSetting>, Integer, Hash)> get_user_flag_setting_with_http_info(proj_key, env_key, key, feature_key)

```ruby
begin
  # Get flag setting for user
  data, status_code, headers = api_instance.get_user_flag_setting_with_http_info(proj_key, env_key, key, feature_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserFlagSetting>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UserSettingsApi->get_user_flag_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key |  |
| **env_key** | **String** | The environment key |  |
| **key** | **String** | The user key |  |
| **feature_key** | **String** | The feature flag key |  |

### Return type

[**UserFlagSetting**](UserFlagSetting.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_flag_settings

> <UserFlagSettings> get_user_flag_settings(proj_key, env_key, key)

List flag settings for user

Get the current flag settings for a given user. The most important attribute in the response is the `_value`. The `_value` is the setting that the user sees. For a boolean feature toggle, this is `true`, `false`, or `null`. `null` returns if there is no defined fallthrough value. The example response indicates that the user `Abbie_Braun` has the `sort.order` flag enabled and the `alternate.page` flag disabled.<br /><br />The setting attribute indicates whether you've explicitly targeted a user to receive a particular variation. For example, if you have turned off a feature flag for a user, this setting will be `false`. A setting of `null` means that you haven't assigned that user to a specific variation.

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

api_instance = LaunchDarklyApi::UserSettingsApi.new
proj_key = 'proj_key_example' # String | The project key
env_key = 'env_key_example' # String | The environment key
key = 'key_example' # String | The user key

begin
  # List flag settings for user
  result = api_instance.get_user_flag_settings(proj_key, env_key, key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UserSettingsApi->get_user_flag_settings: #{e}"
end
```

#### Using the get_user_flag_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserFlagSettings>, Integer, Hash)> get_user_flag_settings_with_http_info(proj_key, env_key, key)

```ruby
begin
  # List flag settings for user
  data, status_code, headers = api_instance.get_user_flag_settings_with_http_info(proj_key, env_key, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserFlagSettings>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UserSettingsApi->get_user_flag_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key |  |
| **env_key** | **String** | The environment key |  |
| **key** | **String** | The user key |  |

### Return type

[**UserFlagSettings**](UserFlagSettings.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_expiring_flags_for_user

> <ExpiringUserTargetPatchResponse> patch_expiring_flags_for_user(proj_key, user_key, env_key, patch_with_comment)

Update expiring user target for flags

Schedule the specified user for removal from individual user targeting on one or more flags. You can only schedule a user for removal on a single variation per flag.  To learn more about semantic patches, read [Updates](/#section/Updates).  If you previously patched the flag, and the patch included the user's data, LaunchDarkly continues to use that data. If LaunchDarkly has never encountered the user's key before, it calculates the flag values based on the user key alone. 

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

api_instance = LaunchDarklyApi::UserSettingsApi.new
proj_key = 'proj_key_example' # String | The project key.
user_key = 'user_key_example' # String | The user key.
env_key = 'env_key_example' # String | The environment key.
patch_with_comment = LaunchDarklyApi::PatchWithComment.new({patch: [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/biscuits', value: Chocolate Digestive})]}) # PatchWithComment | 

begin
  # Update expiring user target for flags
  result = api_instance.patch_expiring_flags_for_user(proj_key, user_key, env_key, patch_with_comment)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UserSettingsApi->patch_expiring_flags_for_user: #{e}"
end
```

#### Using the patch_expiring_flags_for_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpiringUserTargetPatchResponse>, Integer, Hash)> patch_expiring_flags_for_user_with_http_info(proj_key, user_key, env_key, patch_with_comment)

```ruby
begin
  # Update expiring user target for flags
  data, status_code, headers = api_instance.patch_expiring_flags_for_user_with_http_info(proj_key, user_key, env_key, patch_with_comment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExpiringUserTargetPatchResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UserSettingsApi->patch_expiring_flags_for_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key. |  |
| **user_key** | **String** | The user key. |  |
| **env_key** | **String** | The environment key. |  |
| **patch_with_comment** | [**PatchWithComment**](PatchWithComment.md) |  |  |

### Return type

[**ExpiringUserTargetPatchResponse**](ExpiringUserTargetPatchResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_flag_setting

> put_flag_setting(proj_key, env_key, key, feature_key, value_put)

Update flag settings for user

Enable or disable a feature flag for a user based on their key.  To change the setting, send a `PUT` request to this URL with a request body containing the flag value. For example, to disable the sort.order flag for the user `test@test.com`, send a `PUT` to `https://app.launchdarkly.com/api/v2/users/default/production/test@test.com/flags/sort.order` with the following body:  ```json {   \"setting\": false } ```  Omitting the setting attribute, or a setting of null, in your `PUT` \"clears\" the current setting for a user.  If you previously patched the flag, and the patch included the user's data, LaunchDarkly continues to use that data. If LaunchDarkly has never encountered the user's key before, it calculates the flag values based on the user key alone. 

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

api_instance = LaunchDarklyApi::UserSettingsApi.new
proj_key = 'proj_key_example' # String | The project key
env_key = 'env_key_example' # String | The environment key
key = 'key_example' # String | The user key
feature_key = 'feature_key_example' # String | The feature flag key
value_put = LaunchDarklyApi::ValuePut.new # ValuePut | 

begin
  # Update flag settings for user
  api_instance.put_flag_setting(proj_key, env_key, key, feature_key, value_put)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UserSettingsApi->put_flag_setting: #{e}"
end
```

#### Using the put_flag_setting_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_flag_setting_with_http_info(proj_key, env_key, key, feature_key, value_put)

```ruby
begin
  # Update flag settings for user
  data, status_code, headers = api_instance.put_flag_setting_with_http_info(proj_key, env_key, key, feature_key, value_put)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UserSettingsApi->put_flag_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key |  |
| **env_key** | **String** | The environment key |  |
| **key** | **String** | The user key |  |
| **feature_key** | **String** | The feature flag key |  |
| **value_put** | [**ValuePut**](ValuePut.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

