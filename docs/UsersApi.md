# LaunchDarklyApi::UsersApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_user**](UsersApi.md#delete_user) | **DELETE** /users/{projectKey}/{environmentKey}/{userKey} | Delete a user by ID.
[**get_search_users**](UsersApi.md#get_search_users) | **GET** /user-search/{projectKey}/{environmentKey} | Search users in LaunchDarkly based on their last active date, or a search query. It should not be used to enumerate all users in LaunchDarkly-- use the List users API resource.
[**get_user**](UsersApi.md#get_user) | **GET** /users/{projectKey}/{environmentKey}/{userKey} | Get a user by key.
[**get_users**](UsersApi.md#get_users) | **GET** /users/{projectKey}/{environmentKey} | List all users in the environment. Includes the total count of users. In each page, there will be up to &#39;limit&#39; users returned (default 20). This is useful for exporting all users in the system for further analysis. Paginated collections will include a next link containing a URL with the next set of elements in the collection.


# **delete_user**
> delete_user(project_key, environment_key, user_key, )

Delete a user by ID.

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

api_instance = LaunchDarklyApi::UsersApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = "environment_key_example" # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

user_key = "user_key_example" # String | The user's key.


begin
  #Delete a user by ID.
  api_instance.delete_user(project_key, environment_key, user_key, )
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling UsersApi->delete_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **user_key** | **String**| The user&#39;s key. | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_search_users**
> Users get_search_users(project_key, environment_key, , opts)

Search users in LaunchDarkly based on their last active date, or a search query. It should not be used to enumerate all users in LaunchDarkly-- use the List users API resource.

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

api_instance = LaunchDarklyApi::UsersApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = "environment_key_example" # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

opts = { 
  q: "q_example", # String | Search query.
  limit: 56, # Integer | Pagination limit.
  offset: 56, # Integer | Specifies the first item to return in the collection.
  after: 8.14, # Float | A timestamp filter, expressed as a Unix epoch time in milliseconds. All entries returned will have occured after this timestamp.
}

begin
  #Search users in LaunchDarkly based on their last active date, or a search query. It should not be used to enumerate all users in LaunchDarkly-- use the List users API resource.
  result = api_instance.get_search_users(project_key, environment_key, , opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling UsersApi->get_search_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **q** | **String**| Search query. | [optional] 
 **limit** | **Integer**| Pagination limit. | [optional] 
 **offset** | **Integer**| Specifies the first item to return in the collection. | [optional] 
 **after** | **Float**| A timestamp filter, expressed as a Unix epoch time in milliseconds. All entries returned will have occured after this timestamp. | [optional] 

### Return type

[**Users**](Users.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user**
> User get_user(project_key, environment_key, user_key, )

Get a user by key.

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

api_instance = LaunchDarklyApi::UsersApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = "environment_key_example" # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

user_key = "user_key_example" # String | The user's key.


begin
  #Get a user by key.
  result = api_instance.get_user(project_key, environment_key, user_key, )
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling UsersApi->get_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **user_key** | **String**| The user&#39;s key. | 

### Return type

[**User**](User.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_users**
> Users get_users(project_key, environment_key, , opts)

List all users in the environment. Includes the total count of users. In each page, there will be up to 'limit' users returned (default 20). This is useful for exporting all users in the system for further analysis. Paginated collections will include a next link containing a URL with the next set of elements in the collection.

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

api_instance = LaunchDarklyApi::UsersApi.new

project_key = "project_key_example" # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = "environment_key_example" # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

opts = { 
  limit: 56, # Integer | Pagination limit.
  h: "h_example", # String | This parameter is required when following \"next\" links.
  scroll_id: "scroll_id_example" # String | This parameter is required when following \"next\" links.
}

begin
  #List all users in the environment. Includes the total count of users. In each page, there will be up to 'limit' users returned (default 20). This is useful for exporting all users in the system for further analysis. Paginated collections will include a next link containing a URL with the next set of elements in the collection.
  result = api_instance.get_users(project_key, environment_key, , opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling UsersApi->get_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **limit** | **Integer**| Pagination limit. | [optional] 
 **h** | **String**| This parameter is required when following \&quot;next\&quot; links. | [optional] 
 **scroll_id** | **String**| This parameter is required when following \&quot;next\&quot; links. | [optional] 

### Return type

[**Users**](Users.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



