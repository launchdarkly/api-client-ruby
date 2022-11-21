# LaunchDarklyApi::SegmentsApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_segment**](SegmentsApi.md#delete_segment) | **DELETE** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey} | Delete segment |
| [**get_expiring_user_targets_for_segment**](SegmentsApi.md#get_expiring_user_targets_for_segment) | **GET** /api/v2/segments/{projectKey}/{segmentKey}/expiring-user-targets/{environmentKey} | Get expiring user targets for segment |
| [**get_segment**](SegmentsApi.md#get_segment) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey} | Get segment |
| [**get_segment_membership_for_user**](SegmentsApi.md#get_segment_membership_for_user) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/users/{userKey} | Get Big Segment membership for user |
| [**get_segments**](SegmentsApi.md#get_segments) | **GET** /api/v2/segments/{projectKey}/{environmentKey} | List segments |
| [**patch_expiring_user_targets_for_segment**](SegmentsApi.md#patch_expiring_user_targets_for_segment) | **PATCH** /api/v2/segments/{projectKey}/{segmentKey}/expiring-user-targets/{environmentKey} | Update expiring user targets for segment |
| [**patch_segment**](SegmentsApi.md#patch_segment) | **PATCH** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey} | Patch segment |
| [**post_segment**](SegmentsApi.md#post_segment) | **POST** /api/v2/segments/{projectKey}/{environmentKey} | Create segment |
| [**update_big_segment_targets**](SegmentsApi.md#update_big_segment_targets) | **POST** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/users | Update targets on a Big Segment |


## delete_segment

> delete_segment(project_key, environment_key, segment_key)

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
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
segment_key = 'segment_key_example' # String | The segment key

begin
  # Delete segment
  api_instance.delete_segment(project_key, environment_key, segment_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->delete_segment: #{e}"
end
```

#### Using the delete_segment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_segment_with_http_info(project_key, environment_key, segment_key)

```ruby
begin
  # Delete segment
  data, status_code, headers = api_instance.delete_segment_with_http_info(project_key, environment_key, segment_key)
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
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **segment_key** | **String** | The segment key |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_expiring_user_targets_for_segment

> <ExpiringUserTargetGetResponse> get_expiring_user_targets_for_segment(project_key, environment_key, segment_key)

Get expiring user targets for segment

Get a list of a segment's user targets that are scheduled for removal.

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
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
segment_key = 'segment_key_example' # String | The segment key

begin
  # Get expiring user targets for segment
  result = api_instance.get_expiring_user_targets_for_segment(project_key, environment_key, segment_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->get_expiring_user_targets_for_segment: #{e}"
end
```

#### Using the get_expiring_user_targets_for_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpiringUserTargetGetResponse>, Integer, Hash)> get_expiring_user_targets_for_segment_with_http_info(project_key, environment_key, segment_key)

```ruby
begin
  # Get expiring user targets for segment
  data, status_code, headers = api_instance.get_expiring_user_targets_for_segment_with_http_info(project_key, environment_key, segment_key)
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
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **segment_key** | **String** | The segment key |  |

### Return type

[**ExpiringUserTargetGetResponse**](ExpiringUserTargetGetResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_segment

> <UserSegment> get_segment(project_key, environment_key, segment_key)

Get segment

Get a single user segment by key.

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
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
segment_key = 'segment_key_example' # String | The segment key

begin
  # Get segment
  result = api_instance.get_segment(project_key, environment_key, segment_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->get_segment: #{e}"
end
```

#### Using the get_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserSegment>, Integer, Hash)> get_segment_with_http_info(project_key, environment_key, segment_key)

```ruby
begin
  # Get segment
  data, status_code, headers = api_instance.get_segment_with_http_info(project_key, environment_key, segment_key)
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
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **segment_key** | **String** | The segment key |  |

### Return type

[**UserSegment**](UserSegment.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_segment_membership_for_user

> <BigSegmentTarget> get_segment_membership_for_user(project_key, environment_key, segment_key, user_key)

Get Big Segment membership for user

Get the membership status (included/excluded) for a given user in this Big Segment. This operation does not support standard segments.

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
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
segment_key = 'segment_key_example' # String | The segment key
user_key = 'user_key_example' # String | The user key

begin
  # Get Big Segment membership for user
  result = api_instance.get_segment_membership_for_user(project_key, environment_key, segment_key, user_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->get_segment_membership_for_user: #{e}"
end
```

#### Using the get_segment_membership_for_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BigSegmentTarget>, Integer, Hash)> get_segment_membership_for_user_with_http_info(project_key, environment_key, segment_key, user_key)

```ruby
begin
  # Get Big Segment membership for user
  data, status_code, headers = api_instance.get_segment_membership_for_user_with_http_info(project_key, environment_key, segment_key, user_key)
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
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **segment_key** | **String** | The segment key |  |
| **user_key** | **String** | The user key |  |

### Return type

[**BigSegmentTarget**](BigSegmentTarget.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_segments

> <UserSegments> get_segments(project_key, environment_key)

List segments

Get a list of all user segments in the given project.

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
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key

begin
  # List segments
  result = api_instance.get_segments(project_key, environment_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->get_segments: #{e}"
end
```

#### Using the get_segments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserSegments>, Integer, Hash)> get_segments_with_http_info(project_key, environment_key)

```ruby
begin
  # List segments
  data, status_code, headers = api_instance.get_segments_with_http_info(project_key, environment_key)
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
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |

### Return type

[**UserSegments**](UserSegments.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_expiring_user_targets_for_segment

> <ExpiringUserTargetPatchResponse> patch_expiring_user_targets_for_segment(project_key, environment_key, segment_key, patch_segment_request)

Update expiring user targets for segment

 Update expiring user targets for a segment. Updating a user target expiration uses the semantic patch format.  To make a semantic patch request, you must append `domain-model=launchdarkly.semanticpatch` to your `Content-Type` header. To learn more, read [Updates using semantic patch](/reference#updates-using-semantic-patch).  If the request is well-formed but any of its instructions failed to process, this operation returns status code `200`. In this case, the response `errors` array will be non-empty.  ### Instructions  Semantic patch requests support the following `kind` instructions for updating user targets.  #### addExpireUserTargetDate  Schedules a date and time when LaunchDarkly will remove a user from segment targeting.  ##### Parameters  - `targetType`: A segment's target type, must be either `included` or `excluded`. - `userKey`: The user key. - `value`: The date when the user should expire from the segment targeting, in Unix milliseconds.  #### updateExpireUserTargetDate  Updates the date and time when LaunchDarkly will remove a user from segment targeting.  ##### Parameters  - `targetType`: A segment's target type, must be either `included` or `excluded`. - `userKey`: The user key. - `value`: The new date when the user should expire from the segment targeting, in Unix milliseconds. - `version`: The segment version.  #### removeExpireUserTargetDate  Removes the scheduled expiration for the user in the segment.  ##### Parameters  - `targetType`: A segment's target type, must be either `included` or `excluded`. - `userKey`: The user key. 

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
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
segment_key = 'segment_key_example' # String | The segment key
patch_segment_request = LaunchDarklyApi::PatchSegmentRequest.new({instructions: [{"kind": "updateExpireUserTargetDate", "targetType": "included", "userKey": "userKey", "value": 1587582000000, "version": 0}]}) # PatchSegmentRequest | 

begin
  # Update expiring user targets for segment
  result = api_instance.patch_expiring_user_targets_for_segment(project_key, environment_key, segment_key, patch_segment_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->patch_expiring_user_targets_for_segment: #{e}"
end
```

#### Using the patch_expiring_user_targets_for_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpiringUserTargetPatchResponse>, Integer, Hash)> patch_expiring_user_targets_for_segment_with_http_info(project_key, environment_key, segment_key, patch_segment_request)

```ruby
begin
  # Update expiring user targets for segment
  data, status_code, headers = api_instance.patch_expiring_user_targets_for_segment_with_http_info(project_key, environment_key, segment_key, patch_segment_request)
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
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **segment_key** | **String** | The segment key |  |
| **patch_segment_request** | [**PatchSegmentRequest**](PatchSegmentRequest.md) |  |  |

### Return type

[**ExpiringUserTargetPatchResponse**](ExpiringUserTargetPatchResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_segment

> <UserSegment> patch_segment(project_key, environment_key, segment_key, patch_with_comment)

Patch segment

Update a user segment. The request body must be a valid semantic patch, JSON patch, or JSON merge patch.  ### Using semantic patches on a segment  To make a semantic patch request, you must append `domain-model=launchdarkly.semanticpatch` to your `Content-Type` header. To learn more, read [Updates using semantic patch](/reference#updates-using-semantic-patch).  The body of a semantic patch request for updating segments requires an `environmentKey` in addition to `instructions` and an optional `comment`. The body of the request takes the following properties:  * `comment` (string): (Optional) A description of the update. * `environmentKey` (string): (Required) The key of the LaunchDarkly environment. * `instructions` (array): (Required) A list of actions the update should perform. Each action in the list must be an object with a `kind` property that indicates the instruction. If the action requires parameters, you must include those parameters as additional fields in the object.  ### Instructions  Semantic patch requests support the following `kind` instructions for updating segments.  #### addIncludedUsers  Adds user keys to the individual user targets included in the segment. Returns an error if this causes the same user key to be both included and excluded.  ##### Parameters  - `values`: List of user keys.  #### addExcludedUsers  Adds user keys to the individual user targets excluded from the segment. Returns an error if this causes the same user key to be both included and excluded.  ##### Parameters  - `values`: List of user keys.  #### removeIncludedUsers  Removes user keys from the individual user targets included in the segment.  ##### Parameters  - `values`: List of user keys.  #### removeExcludedUsers  Removes user keys from the individual user targets excluded from the segment.  ##### Parameters  - `values`: List of user keys.  #### updateName  Updates the name of the segment.  ##### Parameters  - `value`: Name of the segment.  ## Using JSON patches on a segment  You can also use JSON patch. To learn more, read [Updates using JSON patches](/reference#updates-using-json-patch).  For example, to update the description for a segment, use the following request body:  ```json {   \"patch\": [     {       \"op\": \"replace\",       \"path\": \"/description\",       \"value\": \"new description\"     }   ] } ```  To update fields in the segment that are arrays, set the `path` to the name of the field and then append `/<array index>`. Using `/0` adds the new entry to the beginning of the array.  For example, to add a rule to a segment, use the following request body:  ```json {   \"patch\":[     {       \"op\": \"add\",       \"path\": \"/rules/0\",       \"value\": {         \"clauses\": [{ \"attribute\": \"email\", \"op\": \"endsWith\", \"values\": [\".edu\"], \"negate\": false }]       }     }   ] } ```  To add or remove users from segments, we recommend using semantic patch. Semantic patch for segments includes specific `instructions` for adding and removing both included and excluded users. 

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
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
segment_key = 'segment_key_example' # String | The segment key
patch_with_comment = LaunchDarklyApi::PatchWithComment.new({patch: [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField', value: new example value})]}) # PatchWithComment | 

begin
  # Patch segment
  result = api_instance.patch_segment(project_key, environment_key, segment_key, patch_with_comment)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->patch_segment: #{e}"
end
```

#### Using the patch_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserSegment>, Integer, Hash)> patch_segment_with_http_info(project_key, environment_key, segment_key, patch_with_comment)

```ruby
begin
  # Patch segment
  data, status_code, headers = api_instance.patch_segment_with_http_info(project_key, environment_key, segment_key, patch_with_comment)
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
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **segment_key** | **String** | The segment key |  |
| **patch_with_comment** | [**PatchWithComment**](PatchWithComment.md) |  |  |

### Return type

[**UserSegment**](UserSegment.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_segment

> <UserSegment> post_segment(project_key, environment_key, segment_body)

Create segment

Create a new user segment.

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
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
segment_body = LaunchDarklyApi::SegmentBody.new({name: 'Example segment', key: 'example-segment'}) # SegmentBody | 

begin
  # Create segment
  result = api_instance.post_segment(project_key, environment_key, segment_body)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->post_segment: #{e}"
end
```

#### Using the post_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserSegment>, Integer, Hash)> post_segment_with_http_info(project_key, environment_key, segment_body)

```ruby
begin
  # Create segment
  data, status_code, headers = api_instance.post_segment_with_http_info(project_key, environment_key, segment_body)
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
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **segment_body** | [**SegmentBody**](SegmentBody.md) |  |  |

### Return type

[**UserSegment**](UserSegment.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_big_segment_targets

> update_big_segment_targets(project_key, environment_key, segment_key, segment_user_state)

Update targets on a Big Segment

Update targets included or excluded in a Big Segment.

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
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
segment_key = 'segment_key_example' # String | The segment key
segment_user_state = LaunchDarklyApi::SegmentUserState.new # SegmentUserState | 

begin
  # Update targets on a Big Segment
  api_instance.update_big_segment_targets(project_key, environment_key, segment_key, segment_user_state)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->update_big_segment_targets: #{e}"
end
```

#### Using the update_big_segment_targets_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_big_segment_targets_with_http_info(project_key, environment_key, segment_key, segment_user_state)

```ruby
begin
  # Update targets on a Big Segment
  data, status_code, headers = api_instance.update_big_segment_targets_with_http_info(project_key, environment_key, segment_key, segment_user_state)
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
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **segment_key** | **String** | The segment key |  |
| **segment_user_state** | [**SegmentUserState**](SegmentUserState.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

