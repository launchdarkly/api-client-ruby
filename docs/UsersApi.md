# LaunchDarklyApi::UsersApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_user**](UsersApi.md#delete_user) | **DELETE** /api/v2/users/{projKey}/{envKey}/{key} | Delete user |
| [**get_search_users**](UsersApi.md#get_search_users) | **GET** /api/v2/user-search/{projKey}/{envKey} | Find users |
| [**get_user**](UsersApi.md#get_user) | **GET** /api/v2/users/{projKey}/{envKey}/{key} | Get user |
| [**get_users**](UsersApi.md#get_users) | **GET** /api/v2/users/{projKey}/{envKey} | List users |


## delete_user

> delete_user(proj_key, env_key, key)

Delete user

Delete a user by key

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
proj_key = 'proj_key_example' # String | The project key
env_key = 'env_key_example' # String | The environment key
key = 'key_example' # String | The user key

begin
  # Delete user
  api_instance.delete_user(proj_key, env_key, key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UsersApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_with_http_info(proj_key, env_key, key)

```ruby
begin
  # Delete user
  data, status_code, headers = api_instance.delete_user_with_http_info(proj_key, env_key, key)
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
| **proj_key** | **String** | The project key |  |
| **env_key** | **String** | The environment key |  |
| **key** | **String** | The user key |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_search_users

> <Users> get_search_users(proj_key, env_key, opts)

Find users

Search users in LaunchDarkly based on their last active date, a user attribute filter set, or a search query. Do not use to list all users in LaunchDarkly. Instead, use the [List users](getUsers) API resource.  An example user attribute filter set is `filter=firstName:Anna,activeTrial:false`. This matches users that have the user attribute `firstName` set to `Anna`, that also have the attribute `activeTrial` set to `false`.  > ### `offset` is deprecated > > `offset` is deprecated and will be removed in a future API version. You can still use `offset` and `limit` for pagination, but we recommend you use `sort` and `searchAfter` instead. `searchAfter` allows you to page through more than 10,000 users, but `offset` and `limit` do not. 

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
proj_key = 'proj_key_example' # String | The project key
env_key = 'env_key_example' # String | The environment key
opts = {
  q: 'q_example', # String | Full-text search for users based on name, first name, last name, e-mail address, or key
  limit: 789, # Integer | Specifies the maximum number of items in the collection to return (max: 50, default: 20)
  offset: 789, # Integer | Specifies the first item to return in the collection
  after: 789, # Integer | A unix epoch time in milliseconds specifying the maximum last time a user requested a feature flag from LaunchDarkly
  sort: 'sort_example', # String | Specifies a field by which to sort. LaunchDarkly supports the `userKey` and `lastSeen` fields. Fields prefixed by a dash ( - ) sort in descending order.
  search_after: 'search_after_example', # String | Limits results to users with sort values after the value you specify. You can use this for pagination, but we recommend using the `next` link we provide instead.
  filter: 'filter_example' # String | A comma-separated list of user attribute filters. Each filter is in the form of attributeKey:attributeValue
}

begin
  # Find users
  result = api_instance.get_search_users(proj_key, env_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UsersApi->get_search_users: #{e}"
end
```

#### Using the get_search_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Users>, Integer, Hash)> get_search_users_with_http_info(proj_key, env_key, opts)

```ruby
begin
  # Find users
  data, status_code, headers = api_instance.get_search_users_with_http_info(proj_key, env_key, opts)
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
| **proj_key** | **String** | The project key |  |
| **env_key** | **String** | The environment key |  |
| **q** | **String** | Full-text search for users based on name, first name, last name, e-mail address, or key | [optional] |
| **limit** | **Integer** | Specifies the maximum number of items in the collection to return (max: 50, default: 20) | [optional] |
| **offset** | **Integer** | Specifies the first item to return in the collection | [optional] |
| **after** | **Integer** | A unix epoch time in milliseconds specifying the maximum last time a user requested a feature flag from LaunchDarkly | [optional] |
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

> <User> get_user(proj_key, env_key, key)

Get user

Get a user by key. The `user` object contains all attributes sent in `variation` calls for that key.

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
proj_key = 'proj_key_example' # String | The project key
env_key = 'env_key_example' # String | The environment key
key = 'key_example' # String | The user key

begin
  # Get user
  result = api_instance.get_user(proj_key, env_key, key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UsersApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> get_user_with_http_info(proj_key, env_key, key)

```ruby
begin
  # Get user
  data, status_code, headers = api_instance.get_user_with_http_info(proj_key, env_key, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UsersApi->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key |  |
| **env_key** | **String** | The environment key |  |
| **key** | **String** | The user key |  |

### Return type

[**User**](User.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users

> <Users> get_users(proj_key, env_key, opts)

List users

List all users in the environment. Includes the total count of users. In each page, there is up to `limit` users returned. The default is 20. This is useful for exporting all users in the system for further analysis. To paginate through, follow the `next` link in the `_links` object, as [described in Representations](/#section/Representations). 

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
proj_key = 'proj_key_example' # String | The project key
env_key = 'env_key_example' # String | The environment key
opts = {
  limit: 789, # Integer | The number of elements to return per page
  search_after: 'search_after_example' # String | Limits results to users with sort values after the value you specify. You can use this for pagination, but we recommend using the `next` link we provide instead.
}

begin
  # List users
  result = api_instance.get_users(proj_key, env_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UsersApi->get_users: #{e}"
end
```

#### Using the get_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Users>, Integer, Hash)> get_users_with_http_info(proj_key, env_key, opts)

```ruby
begin
  # List users
  data, status_code, headers = api_instance.get_users_with_http_info(proj_key, env_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Users>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UsersApi->get_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key |  |
| **env_key** | **String** | The environment key |  |
| **limit** | **Integer** | The number of elements to return per page | [optional] |
| **search_after** | **String** | Limits results to users with sort values after the value you specify. You can use this for pagination, but we recommend using the &#x60;next&#x60; link we provide instead. | [optional] |

### Return type

[**Users**](Users.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

