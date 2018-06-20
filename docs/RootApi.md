# LaunchDarklyApi::RootApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_root**](RootApi.md#get_root) | **GET** / | 


# **get_root**
> Links get_root



You can issue a GET request to the root resource to find all of the resource categories supported by the API.

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

api_instance = LaunchDarklyApi::RootApi.new

begin
  result = api_instance.get_root
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling RootApi->get_root: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Links**](Links.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



