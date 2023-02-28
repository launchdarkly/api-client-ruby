# LaunchDarklyApi::TagsApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_tags**](TagsApi.md#get_tags) | **GET** /api/v2/tags | List tags |


## get_tags

> <TagCollection> get_tags(opts)

List tags

Get a list of tags.

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

api_instance = LaunchDarklyApi::TagsApi.new
opts = {
  kind: 'kind_example', # String | Fetch tags associated with the specified resource type. Options are `flag`, `project`, `environment`, `segment`. Returns all types by default.
  pre: 'pre_example', # String | Return tags with the specified prefix
  archived: true # Boolean | Whether or not to return archived flags
}

begin
  # List tags
  result = api_instance.get_tags(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling TagsApi->get_tags: #{e}"
end
```

#### Using the get_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagCollection>, Integer, Hash)> get_tags_with_http_info(opts)

```ruby
begin
  # List tags
  data, status_code, headers = api_instance.get_tags_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagCollection>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling TagsApi->get_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** | Fetch tags associated with the specified resource type. Options are &#x60;flag&#x60;, &#x60;project&#x60;, &#x60;environment&#x60;, &#x60;segment&#x60;. Returns all types by default. | [optional] |
| **pre** | **String** | Return tags with the specified prefix | [optional] |
| **archived** | **Boolean** | Whether or not to return archived flags | [optional] |

### Return type

[**TagCollection**](TagCollection.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

