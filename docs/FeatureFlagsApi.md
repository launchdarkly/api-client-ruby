# LaunchDarklyApi::FeatureFlagsApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**copy_feature_flag**](FeatureFlagsApi.md#copy_feature_flag) | **POST** /api/v2/flags/{projKey}/{featureFlagKey}/copy | Copy feature flag |
| [**delete_feature_flag**](FeatureFlagsApi.md#delete_feature_flag) | **DELETE** /api/v2/flags/{projKey}/{key} | Delete feature flag |
| [**get_expiring_user_targets**](FeatureFlagsApi.md#get_expiring_user_targets) | **GET** /api/v2/flags/{projKey}/{flagKey}/expiring-user-targets/{envKey} | Get expiring user targets for feature flag |
| [**get_feature_flag**](FeatureFlagsApi.md#get_feature_flag) | **GET** /api/v2/flags/{projKey}/{key} | Get feature flag |
| [**get_feature_flag_status**](FeatureFlagsApi.md#get_feature_flag_status) | **GET** /api/v2/flag-statuses/{projKey}/{envKey}/{key} | Get feature flag status |
| [**get_feature_flag_status_across_environments**](FeatureFlagsApi.md#get_feature_flag_status_across_environments) | **GET** /api/v2/flag-status/{projKey}/{key} | Get flag status across environments |
| [**get_feature_flag_statuses**](FeatureFlagsApi.md#get_feature_flag_statuses) | **GET** /api/v2/flag-statuses/{projKey}/{envKey} | List feature flag statuses |
| [**get_feature_flags**](FeatureFlagsApi.md#get_feature_flags) | **GET** /api/v2/flags/{projKey} | List feature flags |
| [**patch_expiring_user_targets**](FeatureFlagsApi.md#patch_expiring_user_targets) | **PATCH** /api/v2/flags/{projKey}/{flagKey}/expiring-user-targets/{envKey} | Update expiring user targets on feature flag |
| [**patch_feature_flag**](FeatureFlagsApi.md#patch_feature_flag) | **PATCH** /api/v2/flags/{projKey}/{key} | Update feature flag |
| [**post_feature_flag**](FeatureFlagsApi.md#post_feature_flag) | **POST** /api/v2/flags/{projKey} | Create a feature flag |


## copy_feature_flag

> <FeatureFlag> copy_feature_flag(proj_key, feature_flag_key, flag_copy_config_post)

Copy feature flag

The includedActions and excludedActions define the parts of the flag configuration that are copied or not copied. By default, the entire flag configuration is copied.  You can have either `includedActions` or `excludedActions` but not both.  Valid `includedActions` and `excludedActions` include:  - `updateOn` - `updatePrerequisites` - `updateTargets` - `updateRules` - `updateFallthrough` - `updateOffVariation`    The `source` and `target` must be JSON objects if using curl, specifying the environment key and (optional) current flag configuration version in that environment. For example:  ```json {   \"key\": \"production\",   \"currentVersion\": 3 } ```  If target is specified as above, the API will test to ensure that the current flag version in the `production` environment is `3`, and reject attempts to copy settings to `production` otherwise. You can use this to enforce optimistic locking on copy attempts. 

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

api_instance = LaunchDarklyApi::FeatureFlagsApi.new
proj_key = 'proj_key_example' # String | The project key.
feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.
flag_copy_config_post = LaunchDarklyApi::FlagCopyConfigPost.new({source: LaunchDarklyApi::FlagCopyConfigEnvironment.new({key: 'key_example'}), target: LaunchDarklyApi::FlagCopyConfigEnvironment.new({key: 'key_example'})}) # FlagCopyConfigPost | 

begin
  # Copy feature flag
  result = api_instance.copy_feature_flag(proj_key, feature_flag_key, flag_copy_config_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->copy_feature_flag: #{e}"
end
```

#### Using the copy_feature_flag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureFlag>, Integer, Hash)> copy_feature_flag_with_http_info(proj_key, feature_flag_key, flag_copy_config_post)

```ruby
begin
  # Copy feature flag
  data, status_code, headers = api_instance.copy_feature_flag_with_http_info(proj_key, feature_flag_key, flag_copy_config_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureFlag>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->copy_feature_flag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key. |  |
| **feature_flag_key** | **String** | The feature flag&#39;s key. The key identifies the flag in your code. |  |
| **flag_copy_config_post** | [**FlagCopyConfigPost**](FlagCopyConfigPost.md) |  |  |

### Return type

[**FeatureFlag**](FeatureFlag.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_feature_flag

> delete_feature_flag(proj_key, key)

Delete feature flag

Delete a feature flag in all environments. Use with caution: only delete feature flags your application no longer uses.

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

api_instance = LaunchDarklyApi::FeatureFlagsApi.new
proj_key = 'proj_key_example' # String | The project key.
key = 'key_example' # String | The feature flag's key. The key identifies the flag in your code.

begin
  # Delete feature flag
  api_instance.delete_feature_flag(proj_key, key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->delete_feature_flag: #{e}"
end
```

#### Using the delete_feature_flag_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_feature_flag_with_http_info(proj_key, key)

```ruby
begin
  # Delete feature flag
  data, status_code, headers = api_instance.delete_feature_flag_with_http_info(proj_key, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->delete_feature_flag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key. |  |
| **key** | **String** | The feature flag&#39;s key. The key identifies the flag in your code. |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_expiring_user_targets

> <ExpiringUserTargetGetResponse> get_expiring_user_targets(proj_key, env_key, flag_key)

Get expiring user targets for feature flag

Get a list of user targets on a feature flag that are scheduled for removal.

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

api_instance = LaunchDarklyApi::FeatureFlagsApi.new
proj_key = 'proj_key_example' # String | The project key.
env_key = 'env_key_example' # String | The environment key.
flag_key = 'flag_key_example' # String | The feature flag key.

begin
  # Get expiring user targets for feature flag
  result = api_instance.get_expiring_user_targets(proj_key, env_key, flag_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->get_expiring_user_targets: #{e}"
end
```

#### Using the get_expiring_user_targets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpiringUserTargetGetResponse>, Integer, Hash)> get_expiring_user_targets_with_http_info(proj_key, env_key, flag_key)

```ruby
begin
  # Get expiring user targets for feature flag
  data, status_code, headers = api_instance.get_expiring_user_targets_with_http_info(proj_key, env_key, flag_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExpiringUserTargetGetResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->get_expiring_user_targets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key. |  |
| **env_key** | **String** | The environment key. |  |
| **flag_key** | **String** | The feature flag key. |  |

### Return type

[**ExpiringUserTargetGetResponse**](ExpiringUserTargetGetResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_feature_flag

> <FeatureFlag> get_feature_flag(proj_key, key, opts)

Get feature flag

Get a single feature flag by key. By default, this returns the configurations for all environments. You can filter environments with the `env` query parameter. For example, setting `env=production` restricts the returned configurations to just the `production` environment.

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

api_instance = LaunchDarklyApi::FeatureFlagsApi.new
proj_key = 'proj_key_example' # String | The project key
key = 'key_example' # String | The feature flag key
opts = {
  env: 'env_example' # String | Filter configurations by environment
}

begin
  # Get feature flag
  result = api_instance.get_feature_flag(proj_key, key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->get_feature_flag: #{e}"
end
```

#### Using the get_feature_flag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureFlag>, Integer, Hash)> get_feature_flag_with_http_info(proj_key, key, opts)

```ruby
begin
  # Get feature flag
  data, status_code, headers = api_instance.get_feature_flag_with_http_info(proj_key, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureFlag>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->get_feature_flag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key |  |
| **key** | **String** | The feature flag key |  |
| **env** | **String** | Filter configurations by environment | [optional] |

### Return type

[**FeatureFlag**](FeatureFlag.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_feature_flag_status

> <FlagStatusRep> get_feature_flag_status(proj_key, env_key, key)

Get feature flag status

Get the status for a particular feature flag.

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

api_instance = LaunchDarklyApi::FeatureFlagsApi.new
proj_key = 'proj_key_example' # String | The project key
env_key = 'env_key_example' # String | The environment key
key = 'key_example' # String | The feature flag key

begin
  # Get feature flag status
  result = api_instance.get_feature_flag_status(proj_key, env_key, key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->get_feature_flag_status: #{e}"
end
```

#### Using the get_feature_flag_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlagStatusRep>, Integer, Hash)> get_feature_flag_status_with_http_info(proj_key, env_key, key)

```ruby
begin
  # Get feature flag status
  data, status_code, headers = api_instance.get_feature_flag_status_with_http_info(proj_key, env_key, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlagStatusRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->get_feature_flag_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key |  |
| **env_key** | **String** | The environment key |  |
| **key** | **String** | The feature flag key |  |

### Return type

[**FlagStatusRep**](FlagStatusRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_feature_flag_status_across_environments

> <FeatureFlagStatusAcrossEnvironments> get_feature_flag_status_across_environments(proj_key, key, opts)

Get flag status across environments

Get the status for a particular feature flag across environments.

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

api_instance = LaunchDarklyApi::FeatureFlagsApi.new
proj_key = 'proj_key_example' # String | The project key
key = 'key_example' # String | The feature flag key
opts = {
  env: 'env_example' # String | Optional environment filter
}

begin
  # Get flag status across environments
  result = api_instance.get_feature_flag_status_across_environments(proj_key, key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->get_feature_flag_status_across_environments: #{e}"
end
```

#### Using the get_feature_flag_status_across_environments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureFlagStatusAcrossEnvironments>, Integer, Hash)> get_feature_flag_status_across_environments_with_http_info(proj_key, key, opts)

```ruby
begin
  # Get flag status across environments
  data, status_code, headers = api_instance.get_feature_flag_status_across_environments_with_http_info(proj_key, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureFlagStatusAcrossEnvironments>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->get_feature_flag_status_across_environments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key |  |
| **key** | **String** | The feature flag key |  |
| **env** | **String** | Optional environment filter | [optional] |

### Return type

[**FeatureFlagStatusAcrossEnvironments**](FeatureFlagStatusAcrossEnvironments.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_feature_flag_statuses

> <FeatureFlagStatuses> get_feature_flag_statuses(proj_key, env_key)

List feature flag statuses

Get a list of statuses for all feature flags. The status includes the last time the feature flag was requested, as well as a state, which is one of the following:  - `new`: the feature flag was created within the last seven days, and has not been requested yet - `active`: the feature flag was requested by your servers or clients within the last seven days - `inactive`: the feature flag was created more than seven days ago, and hasn't been requested by your servers or clients within the past seven days - `launched`: one variation of the feature flag has been rolled out to all your users for at least 7 days 

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

api_instance = LaunchDarklyApi::FeatureFlagsApi.new
proj_key = 'proj_key_example' # String | The project key
env_key = 'env_key_example' # String | Filter configurations by environment

begin
  # List feature flag statuses
  result = api_instance.get_feature_flag_statuses(proj_key, env_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->get_feature_flag_statuses: #{e}"
end
```

#### Using the get_feature_flag_statuses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureFlagStatuses>, Integer, Hash)> get_feature_flag_statuses_with_http_info(proj_key, env_key)

```ruby
begin
  # List feature flag statuses
  data, status_code, headers = api_instance.get_feature_flag_statuses_with_http_info(proj_key, env_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureFlagStatuses>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->get_feature_flag_statuses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key |  |
| **env_key** | **String** | Filter configurations by environment |  |

### Return type

[**FeatureFlagStatuses**](FeatureFlagStatuses.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_feature_flags

> <FeatureFlags> get_feature_flags(proj_key, opts)

List feature flags

Get a list of all features in the given project. By default, each feature includes configurations for each environment. You can filter environments with the env query parameter. For example, setting `env=production` restricts the returned configurations to just your production environment. You can also filter feature flags by tag with the tag query parameter.  We support the following fields for filters:  - `query` is a string that matches against the flags' keys and names. It is not case sensitive. - `archived` is a boolean to filter the list to archived flags. When this is absent, only unarchived flags are returned. - `type` is a string allowing filtering to `temporary` or `permanent` flags. - `status` is a string allowing filtering to `new`, `inactive`, `active`, or `launched` flags in the specified environment. This filter also requires a `filterEnv` field to be set to a valid environment. For example: `filter=status:active,filterEnv:production`. - `tags` is a + separated list of tags. It filters the list to members who have all of the tags in the list. - `hasExperiment` is a boolean with values of true or false and returns any flags that have an attached metric. - `hasDataExport` is a boolean with values of true or false and returns any flags that are currently exporting data in the specified environment. This includes flags that are exporting data via Experimentation. This filter also requires a `filterEnv` field to be set to a valid environment key. e.g. `filter=hasExperiment:true,filterEnv:production` - `evaluated` is an object that contains a key of `after` and a value in Unix time in milliseconds. This returns all flags that have been evaluated since the time you specify in the environment provided. This filter also requires a `filterEnv` field to be set to a valid environment. For example: `filter=evaluated:{\"after\": 1590768455282},filterEnv:production`. - `filterEnv` is a string with the key of a valid environment. The filterEnv field is used for filters that are environment specific. If there are multiple environment specific filters you should only declare this parameter once. For example: `filter=evaluated:{\"after\": 1590768455282},filterEnv:production,status:active`.  An example filter is `query:abc,tags:foo+bar`. This matches flags with the string `abc` in their key or name, ignoring case, which also have the tags `foo` and `bar`.  By default, this returns all flags. You can page through the list with the `limit` parameter and by following the `first`, `prev`, `next`, and `last` links in the returned `_links` field. These links will not be present if the pages they refer to don't exist. For example, the `first` and `prev` links will be missing from the response on the first page. 

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

api_instance = LaunchDarklyApi::FeatureFlagsApi.new
proj_key = 'proj_key_example' # String | The project key
opts = {
  env: 'env_example', # String | Filter configurations by environment
  tag: 'tag_example', # String | Filter feature flags by tag
  limit: 789, # Integer | The number of feature flags to return. Defaults to -1, which returns all flags
  offset: 789, # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next limit items
  query: 'query_example', # String | A string that matches against the flags' keys and names. It is not case sensitive
  archived: true, # Boolean | A boolean to filter the list to archived flags. When this is absent, only unarchived flags will be returned
  summary: true, # Boolean | By default in API version >= 1, flags will _not_ include their list of prerequisites, targets or rules.  Set summary=0 to include these fields for each flag returned
  filter: 'filter_example', # String | A comma-separated list of filters. Each filter is of the form field:value
  sort: 'sort_example' # String | A comma-separated list of fields to sort by. Fields prefixed by a dash ( - ) sort in descending order
}

begin
  # List feature flags
  result = api_instance.get_feature_flags(proj_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->get_feature_flags: #{e}"
end
```

#### Using the get_feature_flags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureFlags>, Integer, Hash)> get_feature_flags_with_http_info(proj_key, opts)

```ruby
begin
  # List feature flags
  data, status_code, headers = api_instance.get_feature_flags_with_http_info(proj_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureFlags>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->get_feature_flags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key |  |
| **env** | **String** | Filter configurations by environment | [optional] |
| **tag** | **String** | Filter feature flags by tag | [optional] |
| **limit** | **Integer** | The number of feature flags to return. Defaults to -1, which returns all flags | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next limit items | [optional] |
| **query** | **String** | A string that matches against the flags&#39; keys and names. It is not case sensitive | [optional] |
| **archived** | **Boolean** | A boolean to filter the list to archived flags. When this is absent, only unarchived flags will be returned | [optional] |
| **summary** | **Boolean** | By default in API version &gt;&#x3D; 1, flags will _not_ include their list of prerequisites, targets or rules.  Set summary&#x3D;0 to include these fields for each flag returned | [optional] |
| **filter** | **String** | A comma-separated list of filters. Each filter is of the form field:value | [optional] |
| **sort** | **String** | A comma-separated list of fields to sort by. Fields prefixed by a dash ( - ) sort in descending order | [optional] |

### Return type

[**FeatureFlags**](FeatureFlags.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_expiring_user_targets

> <ExpiringUserTargetPatchResponse> patch_expiring_user_targets(proj_key, env_key, flag_key, patch_with_comment)

Update expiring user targets on feature flag

Update the list of user targets on a feature flag that are scheduled for removal.

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

api_instance = LaunchDarklyApi::FeatureFlagsApi.new
proj_key = 'proj_key_example' # String | The project key.
env_key = 'env_key_example' # String | The environment key.
flag_key = 'flag_key_example' # String | The feature flag key.
patch_with_comment = LaunchDarklyApi::PatchWithComment.new({patch: [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/biscuits', value: Chocolate Digestive})]}) # PatchWithComment | 

begin
  # Update expiring user targets on feature flag
  result = api_instance.patch_expiring_user_targets(proj_key, env_key, flag_key, patch_with_comment)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->patch_expiring_user_targets: #{e}"
end
```

#### Using the patch_expiring_user_targets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpiringUserTargetPatchResponse>, Integer, Hash)> patch_expiring_user_targets_with_http_info(proj_key, env_key, flag_key, patch_with_comment)

```ruby
begin
  # Update expiring user targets on feature flag
  data, status_code, headers = api_instance.patch_expiring_user_targets_with_http_info(proj_key, env_key, flag_key, patch_with_comment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExpiringUserTargetPatchResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->patch_expiring_user_targets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key. |  |
| **env_key** | **String** | The environment key. |  |
| **flag_key** | **String** | The feature flag key. |  |
| **patch_with_comment** | [**PatchWithComment**](PatchWithComment.md) |  |  |

### Return type

[**ExpiringUserTargetPatchResponse**](ExpiringUserTargetPatchResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_feature_flag

> <FeatureFlag> patch_feature_flag(proj_key, key, patch_with_comment)

Update feature flag

Perform a partial update to a feature

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

api_instance = LaunchDarklyApi::FeatureFlagsApi.new
proj_key = 'proj_key_example' # String | The project key.
key = 'key_example' # String | The feature flag's key. The key identifies the flag in your code.
patch_with_comment = LaunchDarklyApi::PatchWithComment.new({patch: [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/biscuits', value: Chocolate Digestive})]}) # PatchWithComment | 

begin
  # Update feature flag
  result = api_instance.patch_feature_flag(proj_key, key, patch_with_comment)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->patch_feature_flag: #{e}"
end
```

#### Using the patch_feature_flag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureFlag>, Integer, Hash)> patch_feature_flag_with_http_info(proj_key, key, patch_with_comment)

```ruby
begin
  # Update feature flag
  data, status_code, headers = api_instance.patch_feature_flag_with_http_info(proj_key, key, patch_with_comment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureFlag>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->patch_feature_flag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key. |  |
| **key** | **String** | The feature flag&#39;s key. The key identifies the flag in your code. |  |
| **patch_with_comment** | [**PatchWithComment**](PatchWithComment.md) |  |  |

### Return type

[**FeatureFlag**](FeatureFlag.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_feature_flag

> <FeatureFlag> post_feature_flag(proj_key, feature_flag_body, opts)

Create a feature flag

Create a feature flag with the given name, key, and variations

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

api_instance = LaunchDarklyApi::FeatureFlagsApi.new
proj_key = 'proj_key_example' # String | The project key.
feature_flag_body = LaunchDarklyApi::FeatureFlagBody.new({name: 'name_example', key: 'key_example'}) # FeatureFlagBody | 
opts = {
  clone: 'clone_example' # String | The key of the feature flag to be cloned. The key identifies the flag in your code. For example, setting `clone=flagKey` copies the full targeting configuration for all environments, including `on/off` state, from the original flag to the new flag.
}

begin
  # Create a feature flag
  result = api_instance.post_feature_flag(proj_key, feature_flag_body, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->post_feature_flag: #{e}"
end
```

#### Using the post_feature_flag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureFlag>, Integer, Hash)> post_feature_flag_with_http_info(proj_key, feature_flag_body, opts)

```ruby
begin
  # Create a feature flag
  data, status_code, headers = api_instance.post_feature_flag_with_http_info(proj_key, feature_flag_body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureFlag>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsApi->post_feature_flag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key. |  |
| **feature_flag_body** | [**FeatureFlagBody**](FeatureFlagBody.md) |  |  |
| **clone** | **String** | The key of the feature flag to be cloned. The key identifies the flag in your code. For example, setting &#x60;clone&#x3D;flagKey&#x60; copies the full targeting configuration for all environments, including &#x60;on/off&#x60; state, from the original flag to the new flag. | [optional] |

### Return type

[**FeatureFlag**](FeatureFlag.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

