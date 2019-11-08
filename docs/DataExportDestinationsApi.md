# LaunchDarklyApi::DataExportDestinationsApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_destination**](DataExportDestinationsApi.md#delete_destination) | **DELETE** /destinations/{projectKey}/{environmentKey}/{destinationId} | Get a single data export destination by ID
[**get_destination**](DataExportDestinationsApi.md#get_destination) | **GET** /destinations/{projectKey}/{environmentKey}/{destinationId} | Get a single data export destination by ID
[**get_destinations**](DataExportDestinationsApi.md#get_destinations) | **GET** /destinations | Returns a list of all data export destinations.
[**patch_destination**](DataExportDestinationsApi.md#patch_destination) | **PATCH** /destinations/{projectKey}/{environmentKey}/{destinationId} | Perform a partial update to a data export destination.
[**post_destination**](DataExportDestinationsApi.md#post_destination) | **POST** /destinations/{projectKey}/{environmentKey} | Create a new data export destination


# **delete_destination**
> delete_destination(project_key, environment_key, destination_id, )

Get a single data export destination by ID

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

api_instance = LaunchDarklyApi::DataExportDestinationsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

destination_id = 'destination_id_example' # String | The data export destination ID.


begin
  #Get a single data export destination by ID
  api_instance.delete_destination(project_key, environment_key, destination_id, )
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling DataExportDestinationsApi->delete_destination: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **destination_id** | **String**| The data export destination ID. | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_destination**
> Destination get_destination(project_key, environment_key, destination_id, )

Get a single data export destination by ID

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

api_instance = LaunchDarklyApi::DataExportDestinationsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

destination_id = 'destination_id_example' # String | The data export destination ID.


begin
  #Get a single data export destination by ID
  result = api_instance.get_destination(project_key, environment_key, destination_id, )
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling DataExportDestinationsApi->get_destination: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **destination_id** | **String**| The data export destination ID. | 

### Return type

[**Destination**](Destination.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_destinations**
> Destinations get_destinations

Returns a list of all data export destinations.

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

api_instance = LaunchDarklyApi::DataExportDestinationsApi.new

begin
  #Returns a list of all data export destinations.
  result = api_instance.get_destinations
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling DataExportDestinationsApi->get_destinations: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Destinations**](Destinations.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_destination**
> Destination patch_destination(project_key, environment_key, destination_id, patch_only)

Perform a partial update to a data export destination.

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

api_instance = LaunchDarklyApi::DataExportDestinationsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

destination_id = 'destination_id_example' # String | The data export destination ID.

patch_only = [LaunchDarklyApi::PatchOperation.new] # Array<PatchOperation> | Requires a JSON Patch representation of the desired changes to the project. 'http://jsonpatch.com/' Feature flag patches also support JSON Merge Patch format. 'https://tools.ietf.org/html/rfc7386' The addition of comments is also supported.


begin
  #Perform a partial update to a data export destination.
  result = api_instance.patch_destination(project_key, environment_key, destination_id, patch_only)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling DataExportDestinationsApi->patch_destination: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **destination_id** | **String**| The data export destination ID. | 
 **patch_only** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)| Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39; Feature flag patches also support JSON Merge Patch format. &#39;https://tools.ietf.org/html/rfc7386&#39; The addition of comments is also supported. | 

### Return type

[**Destination**](Destination.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_destination**
> Destination post_destination(project_key, environment_key, destination_body)

Create a new data export destination

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

api_instance = LaunchDarklyApi::DataExportDestinationsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

destination_body = LaunchDarklyApi::DestinationBody.new # DestinationBody | Create a new data export destination.


begin
  #Create a new data export destination
  result = api_instance.post_destination(project_key, environment_key, destination_body)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling DataExportDestinationsApi->post_destination: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **destination_body** | [**DestinationBody**](DestinationBody.md)| Create a new data export destination. | 

### Return type

[**Destination**](Destination.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



