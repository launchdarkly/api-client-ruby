# LaunchDarklyApi::UserSettingsApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_expiring_user_targets_for_user**](UserSettingsApi.md#get_expiring_user_targets_for_user) | **GET** /users/{projectKey}/{userKey}/expiring-user-targets/{environmentKey} | Get expiring dates on flags for user
[**get_user_flag_setting**](UserSettingsApi.md#get_user_flag_setting) | **GET** /users/{projectKey}/{environmentKey}/{userKey}/flags/{featureFlagKey} | Fetch a single flag setting for a user by key.
[**get_user_flag_settings**](UserSettingsApi.md#get_user_flag_settings) | **GET** /users/{projectKey}/{environmentKey}/{userKey}/flags | Fetch a single flag setting for a user by key.
[**patch_expiring_user_targets_for_flags**](UserSettingsApi.md#patch_expiring_user_targets_for_flags) | **PATCH** /users/{projectKey}/{userKey}/expiring-user-targets/{environmentKey} | Update, add, or delete expiring user targets for a single user on all flags
[**put_flag_setting**](UserSettingsApi.md#put_flag_setting) | **PUT** /users/{projectKey}/{environmentKey}/{userKey}/flags/{featureFlagKey} | Specifically enable or disable a feature flag for a user based on their key.


# **get_expiring_user_targets_for_user**
> UserTargetingExpirationOnFlagsForUser get_expiring_user_targets_for_user(project_key, environment_key, user_key, )

Get expiring dates on flags for user

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::UserSettingsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

user_key = 'user_key_example' # String | The user's key.


begin
  #Get expiring dates on flags for user
  result = api_instance.get_expiring_user_targets_for_user(project_key, environment_key, user_key, )
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling UserSettingsApi->get_expiring_user_targets_for_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **user_key** | **String**| The user&#39;s key. | 

### Return type

[**UserTargetingExpirationOnFlagsForUser**](UserTargetingExpirationOnFlagsForUser.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_flag_setting**
> UserFlagSetting get_user_flag_setting(project_key, environment_key, user_key, feature_flag_key, )

Fetch a single flag setting for a user by key.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::UserSettingsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

user_key = 'user_key_example' # String | The user's key.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.


begin
  #Fetch a single flag setting for a user by key.
  result = api_instance.get_user_flag_setting(project_key, environment_key, user_key, feature_flag_key, )
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling UserSettingsApi->get_user_flag_setting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **user_key** | **String**| The user&#39;s key. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 

### Return type

[**UserFlagSetting**](UserFlagSetting.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_flag_settings**
> UserFlagSettings get_user_flag_settings(project_key, environment_key, user_key, )

Fetch a single flag setting for a user by key.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::UserSettingsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

user_key = 'user_key_example' # String | The user's key.


begin
  #Fetch a single flag setting for a user by key.
  result = api_instance.get_user_flag_settings(project_key, environment_key, user_key, )
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling UserSettingsApi->get_user_flag_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **user_key** | **String**| The user&#39;s key. | 

### Return type

[**UserFlagSettings**](UserFlagSettings.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_expiring_user_targets_for_flags**
> UserTargetingExpirationOnFlagsForUser patch_expiring_user_targets_for_flags(project_key, environment_key, user_key, semantic_patch_with_comment)

Update, add, or delete expiring user targets for a single user on all flags

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::UserSettingsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

user_key = 'user_key_example' # String | The user's key.

semantic_patch_with_comment = nil # Object | Requires a Semantic Patch representation of the desired changes to the resource. 'https://apidocs.launchdarkly.com/reference#updates-via-semantic-patches'. The addition of comments is also supported.


begin
  #Update, add, or delete expiring user targets for a single user on all flags
  result = api_instance.patch_expiring_user_targets_for_flags(project_key, environment_key, user_key, semantic_patch_with_comment)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling UserSettingsApi->patch_expiring_user_targets_for_flags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **user_key** | **String**| The user&#39;s key. | 
 **semantic_patch_with_comment** | **Object**| Requires a Semantic Patch representation of the desired changes to the resource. &#39;https://apidocs.launchdarkly.com/reference#updates-via-semantic-patches&#39;. The addition of comments is also supported. | 

### Return type

[**UserTargetingExpirationOnFlagsForUser**](UserTargetingExpirationOnFlagsForUser.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_flag_setting**
> put_flag_setting(project_key, environment_key, user_key, feature_flag_key, user_settings_body)

Specifically enable or disable a feature flag for a user based on their key.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::UserSettingsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

user_key = 'user_key_example' # String | The user's key.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.

user_settings_body = LaunchDarklyApi::UserSettingsBody.new # UserSettingsBody | 


begin
  #Specifically enable or disable a feature flag for a user based on their key.
  api_instance.put_flag_setting(project_key, environment_key, user_key, feature_flag_key, user_settings_body)
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling UserSettingsApi->put_flag_setting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **user_key** | **String**| The user&#39;s key. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **user_settings_body** | [**UserSettingsBody**](UserSettingsBody.md)|  | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



