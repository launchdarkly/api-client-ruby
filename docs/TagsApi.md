# LaunchDarklyApi::TagsApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_tags**](TagsApi.md#get_tags) | **GET** /api/v2/tags | List tags |


## get_tags

> <TagsCollection> get_tags(opts)

List tags

Get a list of tags.

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::TagsApi.new
opts = {
  kind: ['inner_example'], # Array<String> | Fetch tags associated with the specified resource type. Options are `flag`, `project`, `environment`, `segment`, `metric`, `metric-data-source`, `aiconfig`, and `view`. Returns all types by default.
  pre: 'pre_example', # String | Return tags with the specified prefix
  archived: true, # Boolean | Whether or not to return archived flags
  limit: 56, # Integer | The number of tags to return. Maximum is 1000.
  offset: 56, # Integer | The index of the first tag to return. Default is 0.
  as_of: 'as_of_example' # String | The time to retrieve tags as of. Default is the current time.
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

> <Array(<TagsCollection>, Integer, Hash)> get_tags_with_http_info(opts)

```ruby
begin
  # List tags
  data, status_code, headers = api_instance.get_tags_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagsCollection>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling TagsApi->get_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | [**Array&lt;String&gt;**](String.md) | Fetch tags associated with the specified resource type. Options are &#x60;flag&#x60;, &#x60;project&#x60;, &#x60;environment&#x60;, &#x60;segment&#x60;, &#x60;metric&#x60;, &#x60;metric-data-source&#x60;, &#x60;aiconfig&#x60;, and &#x60;view&#x60;. Returns all types by default. | [optional] |
| **pre** | **String** | Return tags with the specified prefix | [optional] |
| **archived** | **Boolean** | Whether or not to return archived flags | [optional] |
| **limit** | **Integer** | The number of tags to return. Maximum is 1000. | [optional] |
| **offset** | **Integer** | The index of the first tag to return. Default is 0. | [optional] |
| **as_of** | **String** | The time to retrieve tags as of. Default is the current time. | [optional] |

### Return type

[**TagsCollection**](TagsCollection.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

