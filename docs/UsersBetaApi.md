# LaunchDarklyApi::UsersBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_user_attribute_names**](UsersBetaApi.md#get_user_attribute_names) | **GET** /api/v2/user-attributes/{projectKey}/{environmentKey} | Get user attribute names |


## get_user_attribute_names

> <UserAttributeNamesRep> get_user_attribute_names(project_key, environment_key)

Get user attribute names

> ### Use contexts instead > > After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should use [Get context attribute names ](https://launchdarkly.com/docs/ld-docs/api/contexts/get-context-attribute-names) instead of this endpoint.  Get all in-use user attributes in the specified environment. The set of in-use attributes typically consists of all attributes seen within the past 30 days. 

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

api_instance = LaunchDarklyApi::UsersBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key

begin
  # Get user attribute names
  result = api_instance.get_user_attribute_names(project_key, environment_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UsersBetaApi->get_user_attribute_names: #{e}"
end
```

#### Using the get_user_attribute_names_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserAttributeNamesRep>, Integer, Hash)> get_user_attribute_names_with_http_info(project_key, environment_key)

```ruby
begin
  # Get user attribute names
  data, status_code, headers = api_instance.get_user_attribute_names_with_http_info(project_key, environment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserAttributeNamesRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling UsersBetaApi->get_user_attribute_names_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |

### Return type

[**UserAttributeNamesRep**](UserAttributeNamesRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

