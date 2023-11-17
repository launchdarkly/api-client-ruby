# LaunchDarklyApi::UsersApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_user**](UsersApi.md#delete_user) | **DELETE** /api/v2/users/{projectKey}/{environmentKey}/{userKey} | Delete user |
| [**get_search_users**](UsersApi.md#get_search_users) | **GET** /api/v2/user-search/{projectKey}/{environmentKey} | Find users |
| [**get_user**](UsersApi.md#get_user) | **GET** /api/v2/users/{projectKey}/{environmentKey}/{userKey} | Get user |
| [**get_users**](UsersApi.md#get_users) | **GET** /api/v2/users/{projectKey}/{environmentKey} | List users |


## delete_user

> delete_user(project_key, environment_key, user_key)

Delete user

> ### Use contexts instead > > After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should use [Delete context instances](/tag/Contexts#operation/deleteContextInstances) instead of this endpoint.  Delete a user by key. 

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

api_instance = LaunchDarklyApi::UsersApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
user_key = 'user_key_example' # String | The user key

begin
  # Delete user
  api_instance.delete_user(project_key, environment_key, user_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UsersApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_with_http_info(project_key, environment_key, user_key)

```ruby
begin
  # Delete user
  data, status_code, headers = api_instance.delete_user_with_http_info(project_key, environment_key, user_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UsersApi->delete_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **user_key** | **String** | The user key |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_search_users

> <Users> get_search_users(project_key, environment_key, opts)

Find users

> ### Use contexts instead > > After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should use [Search for context instances](/tag/Contexts#operation/searchContextInstances) instead of this endpoint.  Search users in LaunchDarkly based on their last active date, a user attribute filter set, or a search query.  An example user attribute filter set is `filter=firstName:Anna,activeTrial:false`. This matches users that have the user attribute `firstName` set to `Anna`, that also have the attribute `activeTrial` set to `false`.  To paginate through results, follow the `next` link in the `_links` object. To learn more, read [Representations](/#section/Representations). 

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

api_instance = LaunchDarklyApi::UsersApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
opts = {
  q: 'q_example', # String | Full-text search for users based on name, first name, last name, e-mail address, or key
  limit: 789, # Integer | Specifies the maximum number of items in the collection to return (max: 50, default: 20)
  offset: 789, # Integer | Deprecated, use `searchAfter` instead. Specifies the first item to return in the collection.
  after: 789, # Integer | A Unix epoch time in milliseconds specifying the maximum last time a user requested a feature flag from LaunchDarkly
  sort: 'sort_example', # String | Specifies a field by which to sort. LaunchDarkly supports the `userKey` and `lastSeen` fields. Fields prefixed by a dash ( - ) sort in descending order.
  search_after: 'search_after_example', # String | Limits results to users with sort values after the value you specify. You can use this for pagination, but we recommend using the `next` link we provide instead.
  filter: 'filter_example' # String | A comma-separated list of user attribute filters. Each filter is in the form of attributeKey:attributeValue
}

begin
  # Find users
  result = api_instance.get_search_users(project_key, environment_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UsersApi->get_search_users: #{e}"
end
```

#### Using the get_search_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Users>, Integer, Hash)> get_search_users_with_http_info(project_key, environment_key, opts)

```ruby
begin
  # Find users
  data, status_code, headers = api_instance.get_search_users_with_http_info(project_key, environment_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Users>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UsersApi->get_search_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **q** | **String** | Full-text search for users based on name, first name, last name, e-mail address, or key | [optional] |
| **limit** | **Integer** | Specifies the maximum number of items in the collection to return (max: 50, default: 20) | [optional] |
| **offset** | **Integer** | Deprecated, use &#x60;searchAfter&#x60; instead. Specifies the first item to return in the collection. | [optional] |
| **after** | **Integer** | A Unix epoch time in milliseconds specifying the maximum last time a user requested a feature flag from LaunchDarkly | [optional] |
| **sort** | **String** | Specifies a field by which to sort. LaunchDarkly supports the &#x60;userKey&#x60; and &#x60;lastSeen&#x60; fields. Fields prefixed by a dash ( - ) sort in descending order. | [optional] |
| **search_after** | **String** | Limits results to users with sort values after the value you specify. You can use this for pagination, but we recommend using the &#x60;next&#x60; link we provide instead. | [optional] |
| **filter** | **String** | A comma-separated list of user attribute filters. Each filter is in the form of attributeKey:attributeValue | [optional] |

### Return type

[**Users**](Users.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> <UserRecord> get_user(project_key, environment_key, user_key)

Get user

> ### Use contexts instead > > After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should use [Get context instances](/tag/Contexts#operation/getContextInstances) instead of this endpoint.  Get a user by key. The `user` object contains all attributes sent in `variation` calls for that key. 

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

api_instance = LaunchDarklyApi::UsersApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
user_key = 'user_key_example' # String | The user key

begin
  # Get user
  result = api_instance.get_user(project_key, environment_key, user_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UsersApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserRecord>, Integer, Hash)> get_user_with_http_info(project_key, environment_key, user_key)

```ruby
begin
  # Get user
  data, status_code, headers = api_instance.get_user_with_http_info(project_key, environment_key, user_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserRecord>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UsersApi->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **user_key** | **String** | The user key |  |

### Return type

[**UserRecord**](UserRecord.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users

> <UsersRep> get_users(project_key, environment_key, opts)

List users

> ### Use contexts instead > > After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should use [Search for contexts](/tag/Contexts#operation/searchContexts) instead of this endpoint.  List all users in the environment. Includes the total count of users. This is useful for exporting all users in the system for further analysis.  Each page displays users up to a set `limit`. The default is 20. To page through, follow the `next` link in the `_links` object. To learn more, read [Representations](/#section/Representations). 

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

api_instance = LaunchDarklyApi::UsersApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
opts = {
  limit: 789, # Integer | The number of elements to return per page
  search_after: 'search_after_example' # String | Limits results to users with sort values after the value you specify. You can use this for pagination, but we recommend using the `next` link we provide instead.
}

begin
  # List users
  result = api_instance.get_users(project_key, environment_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UsersApi->get_users: #{e}"
end
```

#### Using the get_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersRep>, Integer, Hash)> get_users_with_http_info(project_key, environment_key, opts)

```ruby
begin
  # List users
  data, status_code, headers = api_instance.get_users_with_http_info(project_key, environment_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UsersApi->get_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **limit** | **Integer** | The number of elements to return per page | [optional] |
| **search_after** | **String** | Limits results to users with sort values after the value you specify. You can use this for pagination, but we recommend using the &#x60;next&#x60; link we provide instead. | [optional] |

### Return type

[**UsersRep**](UsersRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

