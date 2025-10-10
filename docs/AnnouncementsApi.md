# LaunchDarklyApi::AnnouncementsApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_announcement_public**](AnnouncementsApi.md#create_announcement_public) | **POST** /api/v2/announcements | Create an announcement |
| [**delete_announcement_public**](AnnouncementsApi.md#delete_announcement_public) | **DELETE** /api/v2/announcements/{announcementId} | Delete an announcement |
| [**get_announcements_public**](AnnouncementsApi.md#get_announcements_public) | **GET** /api/v2/announcements | Get announcements |
| [**update_announcement_public**](AnnouncementsApi.md#update_announcement_public) | **PATCH** /api/v2/announcements/{announcementId} | Update an announcement |


## create_announcement_public

> <AnnouncementResponse> create_announcement_public(create_announcement_body)

Create an announcement

Create an announcement

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

api_instance = LaunchDarklyApi::AnnouncementsApi.new
create_announcement_body = LaunchDarklyApi::CreateAnnouncementBody.new({is_dismissible: true, title: 'System Maintenance Notice', message: '**Important Update:**

Please be aware of the upcoming maintenance scheduled for *October 31st, 2024*. The system will be unavailable from **12:00 AM** to **4:00 AM**.', start_time: 1731439812, severity: 'info'}) # CreateAnnouncementBody | Announcement request body

begin
  # Create an announcement
  result = api_instance.create_announcement_public(create_announcement_body)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AnnouncementsApi->create_announcement_public: #{e}"
end
```

#### Using the create_announcement_public_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnnouncementResponse>, Integer, Hash)> create_announcement_public_with_http_info(create_announcement_body)

```ruby
begin
  # Create an announcement
  data, status_code, headers = api_instance.create_announcement_public_with_http_info(create_announcement_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnnouncementResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AnnouncementsApi->create_announcement_public_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_announcement_body** | [**CreateAnnouncementBody**](CreateAnnouncementBody.md) | Announcement request body |  |

### Return type

[**AnnouncementResponse**](AnnouncementResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_announcement_public

> delete_announcement_public(announcement_id)

Delete an announcement

Delete an announcement

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

api_instance = LaunchDarklyApi::AnnouncementsApi.new
announcement_id = '1234567890' # String | 

begin
  # Delete an announcement
  api_instance.delete_announcement_public(announcement_id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AnnouncementsApi->delete_announcement_public: #{e}"
end
```

#### Using the delete_announcement_public_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_announcement_public_with_http_info(announcement_id)

```ruby
begin
  # Delete an announcement
  data, status_code, headers = api_instance.delete_announcement_public_with_http_info(announcement_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AnnouncementsApi->delete_announcement_public_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **announcement_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_announcements_public

> <GetAnnouncementsPublic200Response> get_announcements_public(opts)

Get announcements

Get announcements

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

api_instance = LaunchDarklyApi::AnnouncementsApi.new
opts = {
  status: 'active', # String | Filter announcements by status.
  limit: 56, # Integer | The number of announcements to return.
  offset: 56 # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
}

begin
  # Get announcements
  result = api_instance.get_announcements_public(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AnnouncementsApi->get_announcements_public: #{e}"
end
```

#### Using the get_announcements_public_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnnouncementsPublic200Response>, Integer, Hash)> get_announcements_public_with_http_info(opts)

```ruby
begin
  # Get announcements
  data, status_code, headers = api_instance.get_announcements_public_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnnouncementsPublic200Response>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AnnouncementsApi->get_announcements_public_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Filter announcements by status. | [optional] |
| **limit** | **Integer** | The number of announcements to return. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |

### Return type

[**GetAnnouncementsPublic200Response**](GetAnnouncementsPublic200Response.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_announcement_public

> <AnnouncementResponse> update_announcement_public(announcement_id, announcement_patch_operation)

Update an announcement

Update an announcement

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

api_instance = LaunchDarklyApi::AnnouncementsApi.new
announcement_id = '1234567890' # String | 
announcement_patch_operation = [LaunchDarklyApi::AnnouncementPatchOperation.new({op: 'replace', path: '/exampleField'})] # Array<AnnouncementPatchOperation> | Update announcement request body

begin
  # Update an announcement
  result = api_instance.update_announcement_public(announcement_id, announcement_patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AnnouncementsApi->update_announcement_public: #{e}"
end
```

#### Using the update_announcement_public_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnnouncementResponse>, Integer, Hash)> update_announcement_public_with_http_info(announcement_id, announcement_patch_operation)

```ruby
begin
  # Update an announcement
  data, status_code, headers = api_instance.update_announcement_public_with_http_info(announcement_id, announcement_patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnnouncementResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AnnouncementsApi->update_announcement_public_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **announcement_id** | **String** |  |  |
| **announcement_patch_operation** | [**Array&lt;AnnouncementPatchOperation&gt;**](AnnouncementPatchOperation.md) | Update announcement request body |  |

### Return type

[**AnnouncementResponse**](AnnouncementResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

