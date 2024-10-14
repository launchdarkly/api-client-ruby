# LaunchDarklyApi::FollowFlagsApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_flag_follower**](FollowFlagsApi.md#delete_flag_follower) | **DELETE** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/followers/{memberId} | Remove a member as a follower of a flag in a project and environment |
| [**get_flag_followers**](FollowFlagsApi.md#get_flag_followers) | **GET** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/followers | Get followers of a flag in a project and environment |
| [**get_followers_by_proj_env**](FollowFlagsApi.md#get_followers_by_proj_env) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/followers | Get followers of all flags in a given project and environment |
| [**put_flag_follower**](FollowFlagsApi.md#put_flag_follower) | **PUT** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/followers/{memberId} | Add a member as a follower of a flag in a project and environment |


## delete_flag_follower

> delete_flag_follower(project_key, feature_flag_key, environment_key, member_id)

Remove a member as a follower of a flag in a project and environment

Remove a member as a follower to a flag in a project and environment

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

api_instance = LaunchDarklyApi::FollowFlagsApi.new
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key
environment_key = 'environment_key_example' # String | The environment key
member_id = 'member_id_example' # String | The memberId of the member to remove as a follower of the flag. Reader roles can only remove themselves.

begin
  # Remove a member as a follower of a flag in a project and environment
  api_instance.delete_flag_follower(project_key, feature_flag_key, environment_key, member_id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FollowFlagsApi->delete_flag_follower: #{e}"
end
```

#### Using the delete_flag_follower_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_flag_follower_with_http_info(project_key, feature_flag_key, environment_key, member_id)

```ruby
begin
  # Remove a member as a follower of a flag in a project and environment
  data, status_code, headers = api_instance.delete_flag_follower_with_http_info(project_key, feature_flag_key, environment_key, member_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FollowFlagsApi->delete_flag_follower_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag key |  |
| **environment_key** | **String** | The environment key |  |
| **member_id** | **String** | The memberId of the member to remove as a follower of the flag. Reader roles can only remove themselves. |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_flag_followers

> <FlagFollowersGetRep> get_flag_followers(project_key, feature_flag_key, environment_key)

Get followers of a flag in a project and environment

Get a list of members following a flag in a project and environment

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

api_instance = LaunchDarklyApi::FollowFlagsApi.new
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key
environment_key = 'environment_key_example' # String | The environment key

begin
  # Get followers of a flag in a project and environment
  result = api_instance.get_flag_followers(project_key, feature_flag_key, environment_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FollowFlagsApi->get_flag_followers: #{e}"
end
```

#### Using the get_flag_followers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlagFollowersGetRep>, Integer, Hash)> get_flag_followers_with_http_info(project_key, feature_flag_key, environment_key)

```ruby
begin
  # Get followers of a flag in a project and environment
  data, status_code, headers = api_instance.get_flag_followers_with_http_info(project_key, feature_flag_key, environment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlagFollowersGetRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FollowFlagsApi->get_flag_followers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag key |  |
| **environment_key** | **String** | The environment key |  |

### Return type

[**FlagFollowersGetRep**](FlagFollowersGetRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_followers_by_proj_env

> <FlagFollowersByProjEnvGetRep> get_followers_by_proj_env(project_key, environment_key)

Get followers of all flags in a given project and environment

Get followers of all flags in a given environment and project

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

api_instance = LaunchDarklyApi::FollowFlagsApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key

begin
  # Get followers of all flags in a given project and environment
  result = api_instance.get_followers_by_proj_env(project_key, environment_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FollowFlagsApi->get_followers_by_proj_env: #{e}"
end
```

#### Using the get_followers_by_proj_env_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlagFollowersByProjEnvGetRep>, Integer, Hash)> get_followers_by_proj_env_with_http_info(project_key, environment_key)

```ruby
begin
  # Get followers of all flags in a given project and environment
  data, status_code, headers = api_instance.get_followers_by_proj_env_with_http_info(project_key, environment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlagFollowersByProjEnvGetRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FollowFlagsApi->get_followers_by_proj_env_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |

### Return type

[**FlagFollowersByProjEnvGetRep**](FlagFollowersByProjEnvGetRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_flag_follower

> put_flag_follower(project_key, feature_flag_key, environment_key, member_id)

Add a member as a follower of a flag in a project and environment

Add a member as a follower to a flag in a project and environment

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

api_instance = LaunchDarklyApi::FollowFlagsApi.new
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key
environment_key = 'environment_key_example' # String | The environment key
member_id = 'member_id_example' # String | The memberId of the member to add as a follower of the flag. Reader roles can only add themselves.

begin
  # Add a member as a follower of a flag in a project and environment
  api_instance.put_flag_follower(project_key, feature_flag_key, environment_key, member_id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FollowFlagsApi->put_flag_follower: #{e}"
end
```

#### Using the put_flag_follower_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_flag_follower_with_http_info(project_key, feature_flag_key, environment_key, member_id)

```ruby
begin
  # Add a member as a follower of a flag in a project and environment
  data, status_code, headers = api_instance.put_flag_follower_with_http_info(project_key, feature_flag_key, environment_key, member_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FollowFlagsApi->put_flag_follower_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag key |  |
| **environment_key** | **String** | The environment key |  |
| **member_id** | **String** | The memberId of the member to add as a follower of the flag. Reader roles can only add themselves. |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

