# LaunchDarklyApi::SegmentsApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_segment**](SegmentsApi.md#delete_segment) | **DELETE** /api/v2/segments/{projKey}/{envKey}/{key} | Delete segment |
| [**get_expiring_user_targets_for_segment**](SegmentsApi.md#get_expiring_user_targets_for_segment) | **GET** /api/v2/segments/{projKey}/{segmentKey}/expiring-user-targets/{envKey} | Get expiring user targets for segment |
| [**get_segment**](SegmentsApi.md#get_segment) | **GET** /api/v2/segments/{projKey}/{envKey}/{key} | Get segment |
| [**get_segment_membership_for_user**](SegmentsApi.md#get_segment_membership_for_user) | **GET** /api/v2/segments/{projKey}/{envKey}/{key}/users/{userKey} | Get Big Segment membership for user |
| [**get_segments**](SegmentsApi.md#get_segments) | **GET** /api/v2/segments/{projKey}/{envKey} | List segments |
| [**patch_expiring_user_targets_for_segment**](SegmentsApi.md#patch_expiring_user_targets_for_segment) | **PATCH** /api/v2/segments/{projKey}/{segmentKey}/expiring-user-targets/{envKey} | Update expiring user targets for segment |
| [**patch_segment**](SegmentsApi.md#patch_segment) | **PATCH** /api/v2/segments/{projKey}/{envKey}/{key} | Patch segment |
| [**post_segment**](SegmentsApi.md#post_segment) | **POST** /api/v2/segments/{projKey}/{envKey} | Create segment |
| [**update_big_segment_targets**](SegmentsApi.md#update_big_segment_targets) | **POST** /api/v2/segments/{projKey}/{envKey}/{key}/users | Update targets on a Big Segment |


## delete_segment

> delete_segment(proj_key, env_key, key)

Delete segment

Delete a user segment.

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

api_instance = LaunchDarklyApi::SegmentsApi.new
proj_key = 'proj_key_example' # String | The project key.
env_key = 'env_key_example' # String | The environment key.
key = 'key_example' # String | The user segment key.

begin
  # Delete segment
  api_instance.delete_segment(proj_key, env_key, key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->delete_segment: #{e}"
end
```

#### Using the delete_segment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_segment_with_http_info(proj_key, env_key, key)

```ruby
begin
  # Delete segment
  data, status_code, headers = api_instance.delete_segment_with_http_info(proj_key, env_key, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->delete_segment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key. |  |
| **env_key** | **String** | The environment key. |  |
| **key** | **String** | The user segment key. |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_expiring_user_targets_for_segment

> <ExpiringUserTargetGetResponse> get_expiring_user_targets_for_segment(proj_key, env_key, segment_key)

Get expiring user targets for segment

Get a list of a segment's user targets that are scheduled for removal

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

api_instance = LaunchDarklyApi::SegmentsApi.new
proj_key = 'proj_key_example' # String | The project key.
env_key = 'env_key_example' # String | The environment key.
segment_key = 'segment_key_example' # String | The segment key.

begin
  # Get expiring user targets for segment
  result = api_instance.get_expiring_user_targets_for_segment(proj_key, env_key, segment_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->get_expiring_user_targets_for_segment: #{e}"
end
```

#### Using the get_expiring_user_targets_for_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpiringUserTargetGetResponse>, Integer, Hash)> get_expiring_user_targets_for_segment_with_http_info(proj_key, env_key, segment_key)

```ruby
begin
  # Get expiring user targets for segment
  data, status_code, headers = api_instance.get_expiring_user_targets_for_segment_with_http_info(proj_key, env_key, segment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExpiringUserTargetGetResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->get_expiring_user_targets_for_segment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key. |  |
| **env_key** | **String** | The environment key. |  |
| **segment_key** | **String** | The segment key. |  |

### Return type

[**ExpiringUserTargetGetResponse**](ExpiringUserTargetGetResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_segment

> <UserSegment> get_segment(proj_key, env_key, key)

Get segment

Get a single user segment by key

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

api_instance = LaunchDarklyApi::SegmentsApi.new
proj_key = 'proj_key_example' # String | The project key.
env_key = 'env_key_example' # String | The environment key.
key = 'key_example' # String | The segment key

begin
  # Get segment
  result = api_instance.get_segment(proj_key, env_key, key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->get_segment: #{e}"
end
```

#### Using the get_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserSegment>, Integer, Hash)> get_segment_with_http_info(proj_key, env_key, key)

```ruby
begin
  # Get segment
  data, status_code, headers = api_instance.get_segment_with_http_info(proj_key, env_key, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserSegment>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->get_segment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key. |  |
| **env_key** | **String** | The environment key. |  |
| **key** | **String** | The segment key |  |

### Return type

[**UserSegment**](UserSegment.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_segment_membership_for_user

> <BigSegmentTarget> get_segment_membership_for_user(proj_key, env_key, key, user_key)

Get Big Segment membership for user

Returns the membership status (included/excluded) for a given user in this segment. This operation does not support basic Segments.

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

api_instance = LaunchDarklyApi::SegmentsApi.new
proj_key = 'proj_key_example' # String | The project key.
env_key = 'env_key_example' # String | The environment key.
key = 'key_example' # String | The segment key.
user_key = 'user_key_example' # String | The user key.

begin
  # Get Big Segment membership for user
  result = api_instance.get_segment_membership_for_user(proj_key, env_key, key, user_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->get_segment_membership_for_user: #{e}"
end
```

#### Using the get_segment_membership_for_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BigSegmentTarget>, Integer, Hash)> get_segment_membership_for_user_with_http_info(proj_key, env_key, key, user_key)

```ruby
begin
  # Get Big Segment membership for user
  data, status_code, headers = api_instance.get_segment_membership_for_user_with_http_info(proj_key, env_key, key, user_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BigSegmentTarget>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->get_segment_membership_for_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key. |  |
| **env_key** | **String** | The environment key. |  |
| **key** | **String** | The segment key. |  |
| **user_key** | **String** | The user key. |  |

### Return type

[**BigSegmentTarget**](BigSegmentTarget.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_segments

> <UserSegments> get_segments(proj_key, env_key)

List segments

Get a list of all user segments in the given project

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

api_instance = LaunchDarklyApi::SegmentsApi.new
proj_key = 'proj_key_example' # String | The project key.
env_key = 'env_key_example' # String | The environment key.

begin
  # List segments
  result = api_instance.get_segments(proj_key, env_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->get_segments: #{e}"
end
```

#### Using the get_segments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserSegments>, Integer, Hash)> get_segments_with_http_info(proj_key, env_key)

```ruby
begin
  # List segments
  data, status_code, headers = api_instance.get_segments_with_http_info(proj_key, env_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserSegments>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->get_segments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key. |  |
| **env_key** | **String** | The environment key. |  |

### Return type

[**UserSegments**](UserSegments.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_expiring_user_targets_for_segment

> <ExpiringUserTargetPatchResponse> patch_expiring_user_targets_for_segment(proj_key, env_key, segment_key, patch_segment_request)

Update expiring user targets for segment

Update the list of a segment's user targets that are scheduled for removal<br /><br />Requires a semantic patch representation of the desired changes to the resource. To learn more about semantic patches, read [Updates](/#section/Updates/Updates-via-semantic-patches).<br /><br />If the request is well-formed but any of its instructions failed to process, this operation returns status code `200`. In this case, the response `errors` array will be non-empty.

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

api_instance = LaunchDarklyApi::SegmentsApi.new
proj_key = 'proj_key_example' # String | The project key.
env_key = 'env_key_example' # String | The environment key.
segment_key = 'segment_key_example' # String | The user segment key.
patch_segment_request = LaunchDarklyApi::PatchSegmentRequest.new({instructions: [{"kind": "updateExpireUserTargetDate", "targetType": "included", "userKey": "userKey", "value": 1587582000000, "version": 0}]}) # PatchSegmentRequest | 

begin
  # Update expiring user targets for segment
  result = api_instance.patch_expiring_user_targets_for_segment(proj_key, env_key, segment_key, patch_segment_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->patch_expiring_user_targets_for_segment: #{e}"
end
```

#### Using the patch_expiring_user_targets_for_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpiringUserTargetPatchResponse>, Integer, Hash)> patch_expiring_user_targets_for_segment_with_http_info(proj_key, env_key, segment_key, patch_segment_request)

```ruby
begin
  # Update expiring user targets for segment
  data, status_code, headers = api_instance.patch_expiring_user_targets_for_segment_with_http_info(proj_key, env_key, segment_key, patch_segment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExpiringUserTargetPatchResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->patch_expiring_user_targets_for_segment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key. |  |
| **env_key** | **String** | The environment key. |  |
| **segment_key** | **String** | The user segment key. |  |
| **patch_segment_request** | [**PatchSegmentRequest**](PatchSegmentRequest.md) |  |  |

### Return type

[**ExpiringUserTargetPatchResponse**](ExpiringUserTargetPatchResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_segment

> <UserSegment> patch_segment(proj_key, env_key, key, patch_with_comment)

Patch segment

Update a user segment. The request body must be a valid JSON patch or JSON merge patch document. To learn more about semantic patches, read [Updates](/#section/Updates).

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

api_instance = LaunchDarklyApi::SegmentsApi.new
proj_key = 'proj_key_example' # String | The project key.
env_key = 'env_key_example' # String | The environment key.
key = 'key_example' # String | The user segment key.
patch_with_comment = LaunchDarklyApi::PatchWithComment.new({patch: [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/biscuits', value: Chocolate Digestive})]}) # PatchWithComment | 

begin
  # Patch segment
  result = api_instance.patch_segment(proj_key, env_key, key, patch_with_comment)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->patch_segment: #{e}"
end
```

#### Using the patch_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserSegment>, Integer, Hash)> patch_segment_with_http_info(proj_key, env_key, key, patch_with_comment)

```ruby
begin
  # Patch segment
  data, status_code, headers = api_instance.patch_segment_with_http_info(proj_key, env_key, key, patch_with_comment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserSegment>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->patch_segment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key. |  |
| **env_key** | **String** | The environment key. |  |
| **key** | **String** | The user segment key. |  |
| **patch_with_comment** | [**PatchWithComment**](PatchWithComment.md) |  |  |

### Return type

[**UserSegment**](UserSegment.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_segment

> <UserSegment> post_segment(proj_key, env_key, segment_body)

Create segment

Create a new user segment

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

api_instance = LaunchDarklyApi::SegmentsApi.new
proj_key = 'proj_key_example' # String | The project key.
env_key = 'env_key_example' # String | The environment key.
segment_body = LaunchDarklyApi::SegmentBody.new({name: 'name_example', key: 'key_example'}) # SegmentBody | 

begin
  # Create segment
  result = api_instance.post_segment(proj_key, env_key, segment_body)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->post_segment: #{e}"
end
```

#### Using the post_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserSegment>, Integer, Hash)> post_segment_with_http_info(proj_key, env_key, segment_body)

```ruby
begin
  # Create segment
  data, status_code, headers = api_instance.post_segment_with_http_info(proj_key, env_key, segment_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserSegment>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->post_segment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key. |  |
| **env_key** | **String** | The environment key. |  |
| **segment_body** | [**SegmentBody**](SegmentBody.md) |  |  |

### Return type

[**UserSegment**](UserSegment.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_big_segment_targets

> update_big_segment_targets(proj_key, env_key, key, segment_user_state)

Update targets on a Big Segment

Update targets included or excluded in a Big Segment

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

api_instance = LaunchDarklyApi::SegmentsApi.new
proj_key = 'proj_key_example' # String | The project key.
env_key = 'env_key_example' # String | The environment key.
key = 'key_example' # String | The segment key.
segment_user_state = LaunchDarklyApi::SegmentUserState.new # SegmentUserState | 

begin
  # Update targets on a Big Segment
  api_instance.update_big_segment_targets(proj_key, env_key, key, segment_user_state)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->update_big_segment_targets: #{e}"
end
```

#### Using the update_big_segment_targets_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_big_segment_targets_with_http_info(proj_key, env_key, key, segment_user_state)

```ruby
begin
  # Update targets on a Big Segment
  data, status_code, headers = api_instance.update_big_segment_targets_with_http_info(proj_key, env_key, key, segment_user_state)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->update_big_segment_targets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_key** | **String** | The project key. |  |
| **env_key** | **String** | The environment key. |  |
| **key** | **String** | The segment key. |  |
| **segment_user_state** | [**SegmentUserState**](SegmentUserState.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

