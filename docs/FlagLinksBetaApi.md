# LaunchDarklyApi::FlagLinksBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_flag_link**](FlagLinksBetaApi.md#create_flag_link) | **POST** /api/v2/flag-links/projects/{projectKey}/flags/{featureFlagKey} | Create flag link |
| [**delete_flag_link**](FlagLinksBetaApi.md#delete_flag_link) | **DELETE** /api/v2/flag-links/projects/{projectKey}/flags/{featureFlagKey}/{id} | Delete flag link |
| [**get_flag_links**](FlagLinksBetaApi.md#get_flag_links) | **GET** /api/v2/flag-links/projects/{projectKey}/flags/{featureFlagKey} | List flag links |
| [**update_flag_link**](FlagLinksBetaApi.md#update_flag_link) | **PATCH** /api/v2/flag-links/projects/{projectKey}/flags/{featureFlagKey}/{id} | Update flag link |


## create_flag_link

> <FlagLinkRep> create_flag_link(project_key, feature_flag_key, flag_link_post)

Create flag link

Create a new flag link. Flag links let you reference external resources and associate them with your flags.

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

api_instance = LaunchDarklyApi::FlagLinksBetaApi.new
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key
flag_link_post = LaunchDarklyApi::FlagLinkPost.new # FlagLinkPost | 

begin
  # Create flag link
  result = api_instance.create_flag_link(project_key, feature_flag_key, flag_link_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FlagLinksBetaApi->create_flag_link: #{e}"
end
```

#### Using the create_flag_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlagLinkRep>, Integer, Hash)> create_flag_link_with_http_info(project_key, feature_flag_key, flag_link_post)

```ruby
begin
  # Create flag link
  data, status_code, headers = api_instance.create_flag_link_with_http_info(project_key, feature_flag_key, flag_link_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlagLinkRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FlagLinksBetaApi->create_flag_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag key |  |
| **flag_link_post** | [**FlagLinkPost**](FlagLinkPost.md) |  |  |

### Return type

[**FlagLinkRep**](FlagLinkRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_flag_link

> delete_flag_link(project_key, feature_flag_key, id)

Delete flag link

Delete a flag link by ID or key.

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

api_instance = LaunchDarklyApi::FlagLinksBetaApi.new
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key
id = 'id_example' # String | The flag link ID or Key

begin
  # Delete flag link
  api_instance.delete_flag_link(project_key, feature_flag_key, id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FlagLinksBetaApi->delete_flag_link: #{e}"
end
```

#### Using the delete_flag_link_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_flag_link_with_http_info(project_key, feature_flag_key, id)

```ruby
begin
  # Delete flag link
  data, status_code, headers = api_instance.delete_flag_link_with_http_info(project_key, feature_flag_key, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FlagLinksBetaApi->delete_flag_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag key |  |
| **id** | **String** | The flag link ID or Key |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_flag_links

> <FlagLinkCollectionRep> get_flag_links(project_key, feature_flag_key)

List flag links

Get a list of all flag links.

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

api_instance = LaunchDarklyApi::FlagLinksBetaApi.new
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key

begin
  # List flag links
  result = api_instance.get_flag_links(project_key, feature_flag_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FlagLinksBetaApi->get_flag_links: #{e}"
end
```

#### Using the get_flag_links_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlagLinkCollectionRep>, Integer, Hash)> get_flag_links_with_http_info(project_key, feature_flag_key)

```ruby
begin
  # List flag links
  data, status_code, headers = api_instance.get_flag_links_with_http_info(project_key, feature_flag_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlagLinkCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FlagLinksBetaApi->get_flag_links_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag key |  |

### Return type

[**FlagLinkCollectionRep**](FlagLinkCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_flag_link

> <FlagLinkRep> update_flag_link(project_key, feature_flag_key, id, patch_operation)

Update flag link

Update a flag link. Updating a flag link uses a [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) representation of the desired changes. To learn more, read [Updates](/#section/Overview/Updates).

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

api_instance = LaunchDarklyApi::FlagLinksBetaApi.new
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key
id = 'id_example' # String | The flag link ID
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField', value: new example value})] # Array<PatchOperation> | 

begin
  # Update flag link
  result = api_instance.update_flag_link(project_key, feature_flag_key, id, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FlagLinksBetaApi->update_flag_link: #{e}"
end
```

#### Using the update_flag_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlagLinkRep>, Integer, Hash)> update_flag_link_with_http_info(project_key, feature_flag_key, id, patch_operation)

```ruby
begin
  # Update flag link
  data, status_code, headers = api_instance.update_flag_link_with_http_info(project_key, feature_flag_key, id, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlagLinkRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FlagLinksBetaApi->update_flag_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag key |  |
| **id** | **String** | The flag link ID |  |
| **patch_operation** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md) |  |  |

### Return type

[**FlagLinkRep**](FlagLinkRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

