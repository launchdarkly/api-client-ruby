# LaunchDarklyApi::SegmentsApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_segment**](SegmentsApi.md#delete_segment) | **DELETE** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey} | Delete segment |
| [**get_context_instance_segments_membership_by_env**](SegmentsApi.md#get_context_instance_segments_membership_by_env) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/segments/evaluate | List segment memberships for context instance |
| [**get_expiring_targets_for_segment**](SegmentsApi.md#get_expiring_targets_for_segment) | **GET** /api/v2/segments/{projectKey}/{segmentKey}/expiring-targets/{environmentKey} | Get expiring targets for segment |
| [**get_expiring_user_targets_for_segment**](SegmentsApi.md#get_expiring_user_targets_for_segment) | **GET** /api/v2/segments/{projectKey}/{segmentKey}/expiring-user-targets/{environmentKey} | Get expiring user targets for segment |
| [**get_segment**](SegmentsApi.md#get_segment) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey} | Get segment |
| [**get_segment_membership_for_context**](SegmentsApi.md#get_segment_membership_for_context) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/contexts/{contextKey} | Get big segment membership for context |
| [**get_segment_membership_for_user**](SegmentsApi.md#get_segment_membership_for_user) | **GET** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/users/{userKey} | Get big segment membership for user |
| [**get_segments**](SegmentsApi.md#get_segments) | **GET** /api/v2/segments/{projectKey}/{environmentKey} | List segments |
| [**patch_expiring_targets_for_segment**](SegmentsApi.md#patch_expiring_targets_for_segment) | **PATCH** /api/v2/segments/{projectKey}/{segmentKey}/expiring-targets/{environmentKey} | Update expiring targets for segment |
| [**patch_expiring_user_targets_for_segment**](SegmentsApi.md#patch_expiring_user_targets_for_segment) | **PATCH** /api/v2/segments/{projectKey}/{segmentKey}/expiring-user-targets/{environmentKey} | Update expiring user targets for segment |
| [**patch_segment**](SegmentsApi.md#patch_segment) | **PATCH** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey} | Patch segment |
| [**post_segment**](SegmentsApi.md#post_segment) | **POST** /api/v2/segments/{projectKey}/{environmentKey} | Create segment |
| [**update_big_segment_context_targets**](SegmentsApi.md#update_big_segment_context_targets) | **POST** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/contexts | Update context targets on a big segment |
| [**update_big_segment_targets**](SegmentsApi.md#update_big_segment_targets) | **POST** /api/v2/segments/{projectKey}/{environmentKey}/{segmentKey}/users | Update user context targets on a big segment |


## delete_segment

> delete_segment(project_key, environment_key, segment_key)

Delete segment

Delete a segment.

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


## get_context_instance_segments_membership_by_env

> <ContextInstanceSegmentMemberships> get_context_instance_segments_membership_by_env(project_key, environment_key, request_body)

List segment memberships for context instance

For a given context instance with attributes, get membership details for all segments. In the request body, pass in the context instance.

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
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  # List segment memberships for context instance
  result = api_instance.get_context_instance_segments_membership_by_env(project_key, environment_key, request_body)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->get_context_instance_segments_membership_by_env: #{e}"
end
```

#### Using the get_context_instance_segments_membership_by_env_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContextInstanceSegmentMemberships>, Integer, Hash)> get_context_instance_segments_membership_by_env_with_http_info(project_key, environment_key, request_body)

```ruby
begin
  # List segment memberships for context instance
  data, status_code, headers = api_instance.get_context_instance_segments_membership_by_env_with_http_info(project_key, environment_key, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContextInstanceSegmentMemberships>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->get_context_instance_segments_membership_by_env_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  |  |

### Return type

[**ContextInstanceSegmentMemberships**](ContextInstanceSegmentMemberships.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_expiring_targets_for_segment

> <ExpiringTargetGetResponse> get_expiring_targets_for_segment(project_key, environment_key, segment_key)

Get expiring targets for segment

Get a list of a segment's context targets that are scheduled for removal.

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
  # Get expiring targets for segment
  result = api_instance.get_expiring_targets_for_segment(project_key, environment_key, segment_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->get_expiring_targets_for_segment: #{e}"
end
```

#### Using the get_expiring_targets_for_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpiringTargetGetResponse>, Integer, Hash)> get_expiring_targets_for_segment_with_http_info(project_key, environment_key, segment_key)

```ruby
begin
  # Get expiring targets for segment
  data, status_code, headers = api_instance.get_expiring_targets_for_segment_with_http_info(project_key, environment_key, segment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExpiringTargetGetResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->get_expiring_targets_for_segment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **segment_key** | **String** | The segment key |  |

### Return type

[**ExpiringTargetGetResponse**](ExpiringTargetGetResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_expiring_user_targets_for_segment

> <ExpiringUserTargetGetResponse> get_expiring_user_targets_for_segment(project_key, environment_key, segment_key)

Get expiring user targets for segment

> ### Contexts are now available > > After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should use [Get expiring targets for segment](/tag/Segments#operation/getExpiringTargetsForSegment) instead of this endpoint. To learn more, read [Contexts](https://docs.launchdarkly.com/home/contexts).  Get a list of a segment's user targets that are scheduled for removal. 

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

Get a single segment by key.<br/><br/>Segments can be rule-based, list-based, or synced. Big segments include larger list-based segments and synced segments. Some fields in the response only apply to big segments.

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


## get_segment_membership_for_context

> <BigSegmentTarget> get_segment_membership_for_context(project_key, environment_key, segment_key, context_key)

Get big segment membership for context

Get the membership status (included/excluded) for a given context in this big segment. Big segments include larger list-based segments and synced segments. This operation does not support standard segments.

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
context_key = 'context_key_example' # String | The context key

begin
  # Get big segment membership for context
  result = api_instance.get_segment_membership_for_context(project_key, environment_key, segment_key, context_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->get_segment_membership_for_context: #{e}"
end
```

#### Using the get_segment_membership_for_context_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BigSegmentTarget>, Integer, Hash)> get_segment_membership_for_context_with_http_info(project_key, environment_key, segment_key, context_key)

```ruby
begin
  # Get big segment membership for context
  data, status_code, headers = api_instance.get_segment_membership_for_context_with_http_info(project_key, environment_key, segment_key, context_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BigSegmentTarget>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->get_segment_membership_for_context_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **segment_key** | **String** | The segment key |  |
| **context_key** | **String** | The context key |  |

### Return type

[**BigSegmentTarget**](BigSegmentTarget.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_segment_membership_for_user

> <BigSegmentTarget> get_segment_membership_for_user(project_key, environment_key, segment_key, user_key)

Get big segment membership for user

> ### Contexts are now available > > After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should use [Get expiring targets for segment](/tag/Segments#operation/getExpiringTargetsForSegment) instead of this endpoint. To learn more, read [Contexts](https://docs.launchdarkly.com/home/contexts).  Get the membership status (included/excluded) for a given user in this big segment. This operation does not support standard segments. 

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
  # Get big segment membership for user
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
  # Get big segment membership for user
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

> <UserSegments> get_segments(project_key, environment_key, opts)

List segments

Get a list of all segments in the given project.<br/><br/>Segments can be rule-based, list-based, or synced. Big segments include larger list-based segments and synced segments. Some fields in the response only apply to big segments.

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
opts = {
  limit: 789, # Integer | The number of segments to return. Defaults to 20.
  offset: 789, # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
  sort: 'sort_example', # String | Accepts sorting order and fields. Fields can be comma separated. Possible fields are 'creationDate', 'name', 'lastModified'. Example: `sort=name` sort by names ascending or `sort=-name,creationDate` sort by names descending and creationDate ascending.
  filter: 'filter_example' # String | Accepts filter by kind, query, tags, unbounded, or external. To filter by kind or query, use the `equals` operator. To filter by tags, use the `anyOf` operator. Query is a 'fuzzy' search across segment key, name, and description. Example: `filter=tags anyOf ['enterprise', 'beta'],query equals 'toggle'` returns segments with 'toggle' in their key, name, or description that also have 'enterprise' or 'beta' as a tag. To filter by unbounded, use the `equals` operator. Example: `filter=unbounded equals true`. To filter by external, use the `exists` operator. Example: `filter=external exists true`.
}

begin
  # List segments
  result = api_instance.get_segments(project_key, environment_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->get_segments: #{e}"
end
```

#### Using the get_segments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserSegments>, Integer, Hash)> get_segments_with_http_info(project_key, environment_key, opts)

```ruby
begin
  # List segments
  data, status_code, headers = api_instance.get_segments_with_http_info(project_key, environment_key, opts)
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
| **limit** | **Integer** | The number of segments to return. Defaults to 20. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |
| **sort** | **String** | Accepts sorting order and fields. Fields can be comma separated. Possible fields are &#39;creationDate&#39;, &#39;name&#39;, &#39;lastModified&#39;. Example: &#x60;sort&#x3D;name&#x60; sort by names ascending or &#x60;sort&#x3D;-name,creationDate&#x60; sort by names descending and creationDate ascending. | [optional] |
| **filter** | **String** | Accepts filter by kind, query, tags, unbounded, or external. To filter by kind or query, use the &#x60;equals&#x60; operator. To filter by tags, use the &#x60;anyOf&#x60; operator. Query is a &#39;fuzzy&#39; search across segment key, name, and description. Example: &#x60;filter&#x3D;tags anyOf [&#39;enterprise&#39;, &#39;beta&#39;],query equals &#39;toggle&#39;&#x60; returns segments with &#39;toggle&#39; in their key, name, or description that also have &#39;enterprise&#39; or &#39;beta&#39; as a tag. To filter by unbounded, use the &#x60;equals&#x60; operator. Example: &#x60;filter&#x3D;unbounded equals true&#x60;. To filter by external, use the &#x60;exists&#x60; operator. Example: &#x60;filter&#x3D;external exists true&#x60;. | [optional] |

### Return type

[**UserSegments**](UserSegments.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_expiring_targets_for_segment

> <ExpiringTargetPatchResponse> patch_expiring_targets_for_segment(project_key, environment_key, segment_key, patch_segment_expiring_target_input_rep)

Update expiring targets for segment

 Update expiring context targets for a segment. Updating a context target expiration uses the semantic patch format.  To make a semantic patch request, you must append `domain-model=launchdarkly.semanticpatch` to your `Content-Type` header. To learn more, read [Updates using semantic patch](/reference#updates-using-semantic-patch).  If the request is well-formed but any of its instructions failed to process, this operation returns status code `200`. In this case, the response `errors` array will be non-empty.  ### Instructions  Semantic patch requests support the following `kind` instructions for updating expiring context targets.  <details> <summary>Click to expand instructions for <strong>updating expiring context targets</strong></summary>  #### addExpiringTarget  Schedules a date and time when LaunchDarkly will remove a context from segment targeting. The segment must already have the context as an individual target.  ##### Parameters  - `targetType`: The type of individual target for this context. Must be either `included` or `excluded`. - `contextKey`: The context key. - `contextKind`: The kind of context being targeted. - `value`: The date when the context should expire from the segment targeting, in Unix milliseconds.  Here's an example:  ```json {   \"instructions\": [{     \"kind\": \"addExpiringTarget\",     \"targetType\": \"included\",     \"contextKey\": \"user-key-123abc\",     \"contextKind\": \"user\",     \"value\": 1754092860000   }] } ```  #### updateExpiringTarget  Updates the date and time when LaunchDarkly will remove a context from segment targeting.  ##### Parameters  - `targetType`: The type of individual target for this context. Must be either `included` or `excluded`. - `contextKey`: The context key. - `contextKind`: The kind of context being targeted. - `value`: The new date when the context should expire from the segment targeting, in Unix milliseconds. - `version`: (Optional) The version of the expiring target to update. If included, update will fail if version doesn't match current version of the expiring target.  Here's an example:  ```json {   \"instructions\": [{     \"kind\": \"updateExpiringTarget\",     \"targetType\": \"included\",     \"contextKey\": \"user-key-123abc\",     \"contextKind\": \"user\",     \"value\": 1754179260000   }] } ```  #### removeExpiringTarget  Removes the scheduled expiration for the context in the segment.  ##### Parameters  - `targetType`: The type of individual target for this context. Must be either `included` or `excluded`. - `contextKey`: The context key. - `contextKind`: The kind of context being targeted.  Here's an example:  ```json {   \"instructions\": [{     \"kind\": \"removeExpiringTarget\",     \"targetType\": \"included\",     \"contextKey\": \"user-key-123abc\",     \"contextKind\": \"user\",   }] } ```  </details> 

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
patch_segment_expiring_target_input_rep = LaunchDarklyApi::PatchSegmentExpiringTargetInputRep.new({instructions: [{"contextKey": "user@email.com", "contextKind": "user", "kind": "updateExpiringTarget", "targetType": "included", "value": 1587582000000, "version": 0}]}) # PatchSegmentExpiringTargetInputRep | 

begin
  # Update expiring targets for segment
  result = api_instance.patch_expiring_targets_for_segment(project_key, environment_key, segment_key, patch_segment_expiring_target_input_rep)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->patch_expiring_targets_for_segment: #{e}"
end
```

#### Using the patch_expiring_targets_for_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpiringTargetPatchResponse>, Integer, Hash)> patch_expiring_targets_for_segment_with_http_info(project_key, environment_key, segment_key, patch_segment_expiring_target_input_rep)

```ruby
begin
  # Update expiring targets for segment
  data, status_code, headers = api_instance.patch_expiring_targets_for_segment_with_http_info(project_key, environment_key, segment_key, patch_segment_expiring_target_input_rep)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExpiringTargetPatchResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->patch_expiring_targets_for_segment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **segment_key** | **String** | The segment key |  |
| **patch_segment_expiring_target_input_rep** | [**PatchSegmentExpiringTargetInputRep**](PatchSegmentExpiringTargetInputRep.md) |  |  |

### Return type

[**ExpiringTargetPatchResponse**](ExpiringTargetPatchResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_expiring_user_targets_for_segment

> <ExpiringUserTargetPatchResponse> patch_expiring_user_targets_for_segment(project_key, environment_key, segment_key, patch_segment_request)

Update expiring user targets for segment

 > ### Contexts are now available > > After you have upgraded your LaunchDarkly SDK to use contexts instead of users, you should use [Update expiring targets for segment](/tag/Segments#operation/patchExpiringTargetsForSegment) instead of this endpoint. To learn more, read [Contexts](https://docs.launchdarkly.com/home/contexts).  Update expiring user targets for a segment. Updating a user target expiration uses the semantic patch format.  To make a semantic patch request, you must append `domain-model=launchdarkly.semanticpatch` to your `Content-Type` header. To learn more, read [Updates using semantic patch](/reference#updates-using-semantic-patch).  If the request is well-formed but any of its instructions failed to process, this operation returns status code `200`. In this case, the response `errors` array will be non-empty.  ### Instructions  Semantic patch requests support the following `kind` instructions for updating expiring user targets.  <details> <summary>Click to expand instructions for <strong>updating expiring user targets</strong></summary>  #### addExpireUserTargetDate  Schedules a date and time when LaunchDarkly will remove a user from segment targeting.  ##### Parameters  - `targetType`: A segment's target type, must be either `included` or `excluded`. - `userKey`: The user key. - `value`: The date when the user should expire from the segment targeting, in Unix milliseconds.  #### updateExpireUserTargetDate  Updates the date and time when LaunchDarkly will remove a user from segment targeting.  ##### Parameters  - `targetType`: A segment's target type, must be either `included` or `excluded`. - `userKey`: The user key. - `value`: The new date when the user should expire from the segment targeting, in Unix milliseconds. - `version`: The segment version.  #### removeExpireUserTargetDate  Removes the scheduled expiration for the user in the segment.  ##### Parameters  - `targetType`: A segment's target type, must be either `included` or `excluded`. - `userKey`: The user key.  </details> 

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
patch_segment_request = LaunchDarklyApi::PatchSegmentRequest.new({instructions: [{"contextKey": "contextKey", "contextKind": "user", "kind": "updateExpiringTarget", "targetType": "included", "value": 1587582000000, "version": 0}]}) # PatchSegmentRequest | 

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

Update a segment. The request body must be a valid semantic patch, JSON patch, or JSON merge patch. To learn more the different formats, read [Updates](/#section/Overview/Updates).  ### Using semantic patches on a segment  To make a semantic patch request, you must append `domain-model=launchdarkly.semanticpatch` to your `Content-Type` header. To learn more, read [Updates using semantic patch](/reference#updates-using-semantic-patch).  The body of a semantic patch request for updating segments requires an `environmentKey` in addition to `instructions` and an optional `comment`. The body of the request takes the following properties:  * `comment` (string): (Optional) A description of the update. * `environmentKey` (string): (Required) The key of the LaunchDarkly environment. * `instructions` (array): (Required) A list of actions the update should perform. Each action in the list must be an object with a `kind` property that indicates the instruction. If the action requires parameters, you must include those parameters as additional fields in the object.  ### Instructions  Semantic patch requests support the following `kind` instructions for updating segments.  <details> <summary>Click to expand instructions for <strong>updating segments</strong></summary>  #### addIncludedTargets  Adds context keys to the individual context targets included in the segment for the specified `contextKind`. Returns an error if this causes the same context key to be both included and excluded.  ##### Parameters  - `contextKind`: The context kind the targets should be added to. - `values`: List of keys.  Here's an example:  ```json {   \"instructions\": [{     \"kind\": \"addIncludedTargets\",     \"contextKind\": \"org\",     \"values\": [ \"org-key-123abc\", \"org-key-456def\" ]   }] } ```  #### addIncludedUsers  Adds user keys to the individual user targets included in the segment. Returns an error if this causes the same user key to be both included and excluded. If you are working with contexts, use `addIncludedTargets` instead of this instruction.  ##### Parameters  - `values`: List of user keys.  Here's an example:  ```json {   \"instructions\": [{     \"kind\": \"addIncludedUsers\",     \"values\": [ \"user-key-123abc\", \"user-key-456def\" ]   }] } ```  #### addExcludedTargets  Adds context keys to the individual context targets excluded in the segment for the specified `contextKind`. Returns an error if this causes the same context key to be both included and excluded.  ##### Parameters  - `contextKind`: The context kind the targets should be added to. - `values`: List of keys.  Here's an example:  ```json {   \"instructions\": [{     \"kind\": \"addExcludedTargets\",     \"contextKind\": \"org\",     \"values\": [ \"org-key-123abc\", \"org-key-456def\" ]   }] } ```  #### addExcludedUsers  Adds user keys to the individual user targets excluded from the segment. Returns an error if this causes the same user key to be both included and excluded. If you are working with contexts, use `addExcludedTargets` instead of this instruction.  ##### Parameters  - `values`: List of user keys.  Here's an example:  ```json {   \"instructions\": [{     \"kind\": \"addExcludedUsers\",     \"values\": [ \"user-key-123abc\", \"user-key-456def\" ]   }] } ```  #### removeIncludedTargets  Removes context keys from the individual context targets included in the segment for the specified `contextKind`.  ##### Parameters  - `contextKind`: The context kind the targets should be removed from. - `values`: List of keys.  Here's an example:  ```json {   \"instructions\": [{     \"kind\": \"removeIncludedTargets\",     \"contextKind\": \"org\",     \"values\": [ \"org-key-123abc\", \"org-key-456def\" ]   }] } ```  #### removeIncludedUsers  Removes user keys from the individual user targets included in the segment. If you are working with contexts, use `removeIncludedTargets` instead of this instruction.  ##### Parameters  - `values`: List of user keys.  Here's an example:  ```json {   \"instructions\": [{     \"kind\": \"removeIncludedUsers\",     \"values\": [ \"user-key-123abc\", \"user-key-456def\" ]   }] } ```  #### removeExcludedTargets  Removes context keys from the individual context targets excluded from the segment for the specified `contextKind`.  ##### Parameters  - `contextKind`: The context kind the targets should be removed from. - `values`: List of keys.  Here's an example:  ```json {   \"instructions\": [{     \"kind\": \"removeExcludedTargets\",     \"contextKind\": \"org\",     \"values\": [ \"org-key-123abc\", \"org-key-456def\" ]   }] } ```  #### removeExcludedUsers  Removes user keys from the individual user targets excluded from the segment. If you are working with contexts, use `removeExcludedTargets` instead of this instruction.  ##### Parameters  - `values`: List of user keys.  Here's an example:  ```json {   \"instructions\": [{     \"kind\": \"removeExcludedUsers\",     \"values\": [ \"user-key-123abc\", \"user-key-456def\" ]   }] } ```  #### updateName  Updates the name of the segment.  ##### Parameters  - `value`: Name of the segment.  Here's an example:  ```json {   \"instructions\": [{     \"kind\": \"updateName\",     \"value\": \"Updated segment name\"   }] } ```  </details>  ## Using JSON patches on a segment  If you do not include the header described above, you can use a [JSON patch](/reference#updates-using-json-patch) or [JSON merge patch](https://datatracker.ietf.org/doc/html/rfc7386) representation of the desired changes.  For example, to update the description for a segment with a JSON patch, use the following request body:  ```json {   \"patch\": [     {       \"op\": \"replace\",       \"path\": \"/description\",       \"value\": \"new description\"     }   ] } ```  To update fields in the segment that are arrays, set the `path` to the name of the field and then append `/<array index>`. Use `/0` to add the new entry to the beginning of the array. Use `/-` to add the new entry to the end of the array.  For example, to add a rule to a segment, use the following request body:  ```json {   \"patch\":[     {       \"op\": \"add\",       \"path\": \"/rules/0\",       \"value\": {         \"clauses\": [{ \"contextKind\": \"user\", \"attribute\": \"email\", \"op\": \"endsWith\", \"values\": [\".edu\"], \"negate\": false }]       }     }   ] } ```  To add or remove targets from segments, we recommend using semantic patch. Semantic patch for segments includes specific instructions for adding and removing both included and excluded targets. 

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

Create a new segment.

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
segment_body = LaunchDarklyApi::SegmentBody.new({name: 'Example segment', key: 'segment-key-123abc'}) # SegmentBody | 

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


## update_big_segment_context_targets

> update_big_segment_context_targets(project_key, environment_key, segment_key, segment_user_state)

Update context targets on a big segment

Update context targets included or excluded in a big segment. Big segments include larger list-based segments and synced segments. This operation does not support standard segments.

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
  # Update context targets on a big segment
  api_instance.update_big_segment_context_targets(project_key, environment_key, segment_key, segment_user_state)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->update_big_segment_context_targets: #{e}"
end
```

#### Using the update_big_segment_context_targets_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_big_segment_context_targets_with_http_info(project_key, environment_key, segment_key, segment_user_state)

```ruby
begin
  # Update context targets on a big segment
  data, status_code, headers = api_instance.update_big_segment_context_targets_with_http_info(project_key, environment_key, segment_key, segment_user_state)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling SegmentsApi->update_big_segment_context_targets_with_http_info: #{e}"
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


## update_big_segment_targets

> update_big_segment_targets(project_key, environment_key, segment_key, segment_user_state)

Update user context targets on a big segment

Update user context targets included or excluded in a big segment. Big segments include larger list-based segments and synced segments. This operation does not support standard segments.

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
  # Update user context targets on a big segment
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
  # Update user context targets on a big segment
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

