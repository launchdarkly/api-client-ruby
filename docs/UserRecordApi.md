# LaunchDarklyApi::UserRecordApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_user**](UserRecordApi.md#get_user) | **GET** /users/{projectKey}/{environmentKey}/{userKey} | Get a user by key.


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

api_instance = LaunchDarklyApi::UserRecordApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

user_key = 'user_key_example' # String | The user's key.


begin
  #Get a user by key.
  result = api_instance.get_user(project_key, environment_key, user_key, )
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling UserRecordApi->get_user: #{e}"
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



