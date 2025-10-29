# LaunchDarklyApi::MetricsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_metric_group**](MetricsBetaApi.md#create_metric_group) | **POST** /api/v2/projects/{projectKey}/metric-groups | Create metric group |
| [**delete_metric_group**](MetricsBetaApi.md#delete_metric_group) | **DELETE** /api/v2/projects/{projectKey}/metric-groups/{metricGroupKey} | Delete metric group |
| [**get_metric_group**](MetricsBetaApi.md#get_metric_group) | **GET** /api/v2/projects/{projectKey}/metric-groups/{metricGroupKey} | Get metric group |
| [**get_metric_groups**](MetricsBetaApi.md#get_metric_groups) | **GET** /api/v2/projects/{projectKey}/metric-groups | List metric groups |
| [**patch_metric_group**](MetricsBetaApi.md#patch_metric_group) | **PATCH** /api/v2/projects/{projectKey}/metric-groups/{metricGroupKey} | Patch metric group |


## create_metric_group

> <MetricGroupRep> create_metric_group(project_key, metric_group_post)

Create metric group

Create a new metric group in the specified project

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

api_instance = LaunchDarklyApi::MetricsBetaApi.new
project_key = 'project_key_example' # String | The project key
metric_group_post = LaunchDarklyApi::MetricGroupPost.new({name: 'My metric group', kind: 'funnel', maintainer_id: '569fdeadbeef1644facecafe', tags: ["ops"], metrics: [LaunchDarklyApi::MetricInMetricGroupInput.new({key: 'metric-key-123abc', name_in_group: 'Step 1'})]}) # MetricGroupPost | 

begin
  # Create metric group
  result = api_instance.create_metric_group(project_key, metric_group_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling MetricsBetaApi->create_metric_group: #{e}"
end
```

#### Using the create_metric_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricGroupRep>, Integer, Hash)> create_metric_group_with_http_info(project_key, metric_group_post)

```ruby
begin
  # Create metric group
  data, status_code, headers = api_instance.create_metric_group_with_http_info(project_key, metric_group_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricGroupRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling MetricsBetaApi->create_metric_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **metric_group_post** | [**MetricGroupPost**](MetricGroupPost.md) |  |  |

### Return type

[**MetricGroupRep**](MetricGroupRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_metric_group

> delete_metric_group(project_key, metric_group_key)

Delete metric group

Delete a metric group by key.

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

api_instance = LaunchDarklyApi::MetricsBetaApi.new
project_key = 'project_key_example' # String | The project key
metric_group_key = 'metric_group_key_example' # String | The metric group key

begin
  # Delete metric group
  api_instance.delete_metric_group(project_key, metric_group_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling MetricsBetaApi->delete_metric_group: #{e}"
end
```

#### Using the delete_metric_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_metric_group_with_http_info(project_key, metric_group_key)

```ruby
begin
  # Delete metric group
  data, status_code, headers = api_instance.delete_metric_group_with_http_info(project_key, metric_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling MetricsBetaApi->delete_metric_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **metric_group_key** | **String** | The metric group key |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_metric_group

> <MetricGroupRep> get_metric_group(project_key, metric_group_key, opts)

Get metric group

Get information for a single metric group from the specific project.  ### Expanding the metric group response LaunchDarkly supports two fields for expanding the \"Get metric group\" response. By default, these fields are **not** included in the response.  To expand the response, append the `expand` query parameter and add a comma-separated list with either or both of the following fields:  - `experiments` includes all experiments from the specific project that use the metric group - `experimentCount` includes the number of experiments from the specific project that use the metric group  For example, `expand=experiments` includes the `experiments` field in the response. 

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

api_instance = LaunchDarklyApi::MetricsBetaApi.new
project_key = 'project_key_example' # String | The project key
metric_group_key = 'metric_group_key_example' # String | The metric group key
opts = {
  expand: 'expand_example' # String | A comma-separated list of properties that can reveal additional information in the response.
}

begin
  # Get metric group
  result = api_instance.get_metric_group(project_key, metric_group_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling MetricsBetaApi->get_metric_group: #{e}"
end
```

#### Using the get_metric_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricGroupRep>, Integer, Hash)> get_metric_group_with_http_info(project_key, metric_group_key, opts)

```ruby
begin
  # Get metric group
  data, status_code, headers = api_instance.get_metric_group_with_http_info(project_key, metric_group_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricGroupRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling MetricsBetaApi->get_metric_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **metric_group_key** | **String** | The metric group key |  |
| **expand** | **String** | A comma-separated list of properties that can reveal additional information in the response. | [optional] |

### Return type

[**MetricGroupRep**](MetricGroupRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_metric_groups

> <MetricGroupCollectionRep> get_metric_groups(project_key, opts)

List metric groups

Get a list of all metric groups for the specified project.  ### Expanding the metric groups response  This endpoint does not support response expansion.  Although the API accepts an `expand` query parameter for compatibility reasons, it does not currently modify the response. The parameter is reserved for future use.  ### Filtering metric groups  The `filter` parameter supports the following operators: `contains`, `equals`, `anyOf`.  #### Supported fields and operators  You can only filter certain fields in metrics when using the `filter` parameter. Additionally, you can only filter some fields with certain operators.  When you search for metrics, the `filter` parameter supports the following fields and operators:  |<div style=\"width:120px\">Field</div> |Description |Supported operators | |---|---|---| | `experimentStatus` | The experiment's status. One of `not_started`, `running`, `stopped`, `started`. | `equals` | | `hasConnections` | Whether the metric group has connections to experiments or guarded rollouts. One of `true`, `false`. | `equals` | | `kind` | The metric group kind. One of `funnel`, `standard`. | `equals` | | `maintainerIds` | The metric maintainer IDs. | `anyOf` | | `maintainerTeamKey` | The metric maintainer team key. | `equals` | | `query` | A \"fuzzy\" search across metric group key and name. Supply a string or list of strings to the operator. | `equals` |  ### Sorting metric groups  LaunchDarkly supports the following fields for sorting:  - `name` sorts by metric group name. - `createdAt` sorts by the creation date of the metric group. - `connectionCount` sorts by the number of connections to experiments the metric group has.  By default, the sort is in ascending order. Use `-` to sort in descending order. For example, `?sort=name` sorts the response by metric group name in ascending order, and `?sort=-name` sorts in descending order.  #### Sample query  `filter=experimentStatus equals 'not_started' and query equals 'metric name'` 

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

api_instance = LaunchDarklyApi::MetricsBetaApi.new
project_key = 'project_key_example' # String | The project key
opts = {
  filter: 'filter_example', # String | Accepts filter by `experimentStatus`, `query`, `kind`, `hasConnections`, `maintainerIds`, and `maintainerTeamKey`. Example: `filter=experimentStatus equals 'running' and query equals 'test'`.
  sort: 'sort_example', # String | A comma-separated list of fields to sort by. Fields prefixed by a dash ( - ) sort in descending order. Read the endpoint description for a full list of available sort fields.
  expand: 'expand_example', # String | This parameter is reserved for future use and is not currently supported on this endpoint.
  limit: 789, # Integer | The number of metric groups to return in the response. Defaults to 20. Maximum limit is 50.
  offset: 789 # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and returns the next `limit` items.
}

begin
  # List metric groups
  result = api_instance.get_metric_groups(project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling MetricsBetaApi->get_metric_groups: #{e}"
end
```

#### Using the get_metric_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricGroupCollectionRep>, Integer, Hash)> get_metric_groups_with_http_info(project_key, opts)

```ruby
begin
  # List metric groups
  data, status_code, headers = api_instance.get_metric_groups_with_http_info(project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricGroupCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling MetricsBetaApi->get_metric_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **filter** | **String** | Accepts filter by &#x60;experimentStatus&#x60;, &#x60;query&#x60;, &#x60;kind&#x60;, &#x60;hasConnections&#x60;, &#x60;maintainerIds&#x60;, and &#x60;maintainerTeamKey&#x60;. Example: &#x60;filter&#x3D;experimentStatus equals &#39;running&#39; and query equals &#39;test&#39;&#x60;. | [optional] |
| **sort** | **String** | A comma-separated list of fields to sort by. Fields prefixed by a dash ( - ) sort in descending order. Read the endpoint description for a full list of available sort fields. | [optional] |
| **expand** | **String** | This parameter is reserved for future use and is not currently supported on this endpoint. | [optional] |
| **limit** | **Integer** | The number of metric groups to return in the response. Defaults to 20. Maximum limit is 50. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and returns the next &#x60;limit&#x60; items. | [optional] |

### Return type

[**MetricGroupCollectionRep**](MetricGroupCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_metric_group

> <MetricGroupRep> patch_metric_group(project_key, metric_group_key, patch_operation)

Patch metric group

Patch a metric group by key. Updating a metric group uses a [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) representation of the desired changes.

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

api_instance = LaunchDarklyApi::MetricsBetaApi.new
project_key = 'project_key_example' # String | The project key
metric_group_key = 'metric_group_key_example' # String | The metric group key
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField'})] # Array<PatchOperation> | 

begin
  # Patch metric group
  result = api_instance.patch_metric_group(project_key, metric_group_key, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling MetricsBetaApi->patch_metric_group: #{e}"
end
```

#### Using the patch_metric_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricGroupRep>, Integer, Hash)> patch_metric_group_with_http_info(project_key, metric_group_key, patch_operation)

```ruby
begin
  # Patch metric group
  data, status_code, headers = api_instance.patch_metric_group_with_http_info(project_key, metric_group_key, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricGroupRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling MetricsBetaApi->patch_metric_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **metric_group_key** | **String** | The metric group key |  |
| **patch_operation** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md) |  |  |

### Return type

[**MetricGroupRep**](MetricGroupRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

