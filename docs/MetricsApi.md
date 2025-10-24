# LaunchDarklyApi::MetricsApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_metric**](MetricsApi.md#delete_metric) | **DELETE** /api/v2/metrics/{projectKey}/{metricKey} | Delete metric |
| [**get_metric**](MetricsApi.md#get_metric) | **GET** /api/v2/metrics/{projectKey}/{metricKey} | Get metric |
| [**get_metrics**](MetricsApi.md#get_metrics) | **GET** /api/v2/metrics/{projectKey} | List metrics |
| [**patch_metric**](MetricsApi.md#patch_metric) | **PATCH** /api/v2/metrics/{projectKey}/{metricKey} | Update metric |
| [**post_metric**](MetricsApi.md#post_metric) | **POST** /api/v2/metrics/{projectKey} | Create metric |


## delete_metric

> delete_metric(project_key, metric_key)

Delete metric

Delete a metric by key.

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

api_instance = LaunchDarklyApi::MetricsApi.new
project_key = 'project_key_example' # String | The project key
metric_key = 'metric_key_example' # String | The metric key

begin
  # Delete metric
  api_instance.delete_metric(project_key, metric_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling MetricsApi->delete_metric: #{e}"
end
```

#### Using the delete_metric_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_metric_with_http_info(project_key, metric_key)

```ruby
begin
  # Delete metric
  data, status_code, headers = api_instance.delete_metric_with_http_info(project_key, metric_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling MetricsApi->delete_metric_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **metric_key** | **String** | The metric key |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_metric

> <MetricRep> get_metric(project_key, metric_key, opts)

Get metric

Get information for a single metric from the specific project.  ### Expanding the metric response LaunchDarkly supports four fields for expanding the \"Get metric\" response. By default, these fields are **not** included in the response.  To expand the response, append the `expand` query parameter and add a comma-separated list with any of the following fields:  - `experiments` includes all experiments from the specific project that use the metric - `experimentCount` includes the number of experiments from the specific project that use the metric - `metricGroups` includes all metric groups from the specific project that use the metric - `metricGroupCount` includes the number of metric groups from the specific project that use the metric  For example, `expand=experiments` includes the `experiments` field in the response. 

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

api_instance = LaunchDarklyApi::MetricsApi.new
project_key = 'project_key_example' # String | The project key
metric_key = 'metric_key_example' # String | The metric key
opts = {
  expand: 'expand_example', # String | A comma-separated list of properties that can reveal additional information in the response. Supported fields are `experiments`, `experimentCount`, `metricGroups`, `metricGroupCount`, `eventSources`, `guardedRollouts`, `guardedRolloutCount`, `lastUsedInExperiment`, and `lastUsedInGuardedRollout`.
  version_id: 'version_id_example' # String | The specific version ID of the metric
}

begin
  # Get metric
  result = api_instance.get_metric(project_key, metric_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling MetricsApi->get_metric: #{e}"
end
```

#### Using the get_metric_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricRep>, Integer, Hash)> get_metric_with_http_info(project_key, metric_key, opts)

```ruby
begin
  # Get metric
  data, status_code, headers = api_instance.get_metric_with_http_info(project_key, metric_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling MetricsApi->get_metric_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **metric_key** | **String** | The metric key |  |
| **expand** | **String** | A comma-separated list of properties that can reveal additional information in the response. Supported fields are &#x60;experiments&#x60;, &#x60;experimentCount&#x60;, &#x60;metricGroups&#x60;, &#x60;metricGroupCount&#x60;, &#x60;eventSources&#x60;, &#x60;guardedRollouts&#x60;, &#x60;guardedRolloutCount&#x60;, &#x60;lastUsedInExperiment&#x60;, and &#x60;lastUsedInGuardedRollout&#x60;. | [optional] |
| **version_id** | **String** | The specific version ID of the metric | [optional] |

### Return type

[**MetricRep**](MetricRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_metrics

> <MetricCollectionRep> get_metrics(project_key, opts)

List metrics

Get a list of all metrics for the specified project.  ### Filtering metrics  The `filter` parameter supports the following operators: `contains`, `equals`, `anyOf`.  #### Supported fields and operators  You can only filter certain fields in metrics when using the `filter` parameter. Additionally, you can only filter some fields with certain operators.  When you search for metrics, the `filter` parameter supports the following fields and operators:  |<div style=\"width:120px\">Field</div> |Description |Supported operators | |---|---|---| | `eventKind` | The metric event kind. One of `custom`, `pageview`, `click`. | `equals` | | `hasConnections` | Whether the metric has connections to experiments or guarded rollouts. One of `true`, `false`. | `equals` | | `isNumeric` | Whether the metric is numeric. One of `true`, `false`. | `equals` | | `maintainerIds` | A comma-separated list of metric maintainer IDs. | `anyOf` | | `maintainerTeamKey` | The metric maintainer team key. | `equals` | | `query` | A \"fuzzy\" search across metric key and name. Supply a string or list of strings to the operator. | `equals` | | `tags` | The metric tags. | `contains` | | `unitAggregationType` | The metric's unit aggregation type. One of `sum`, `average`. | `equals` |  For example, the filter `?filter=tags contains [\"tag1\", \"tag2\", \"tag3\"]` matches metrics that have all three tags.  The documented values for `filter` query parameters are prior to URL encoding. For example, the `[` in `?filter=tags contains [\"tag1\", \"tag2\", \"tag3\"]` must be encoded to `%5B`.  ### Expanding the metric list response  LaunchDarkly supports expanding the \"List metrics\" response. By default, the expandable field is **not** included in the response.  To expand the response, append the `expand` query parameter and add the following supported field:  - `experimentCount` includes the number of experiments from the specific project that use the metric  For example, `expand=experimentCount` includes the `experimentCount` field for each metric in the response. 

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

api_instance = LaunchDarklyApi::MetricsApi.new
project_key = 'project_key_example' # String | The project key
opts = {
  expand: 'expand_example', # String | A comma-separated list of properties that can reveal additional information in the response.
  limit: 789, # Integer | The number of metrics to return in the response. Defaults to 20. Maximum limit is 50.
  offset: 789, # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and returns the next `limit` items.
  sort: 'sort_example', # String | A field to sort the items by. Prefix field by a dash ( - ) to sort in descending order. This endpoint supports sorting by `createdAt` or `name`.
  filter: 'filter_example' # String | A comma-separated list of filters. This endpoint accepts filtering by `query`, `tags`, 'eventKind', 'isNumeric', 'unitAggregationType`, `hasConnections`, `maintainerIds`, `maintainerTeamKey`, `view`, and `dataSourceKeys`. To learn more about the filter syntax, read the 'Filtering metrics' section above.
}

begin
  # List metrics
  result = api_instance.get_metrics(project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling MetricsApi->get_metrics: #{e}"
end
```

#### Using the get_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricCollectionRep>, Integer, Hash)> get_metrics_with_http_info(project_key, opts)

```ruby
begin
  # List metrics
  data, status_code, headers = api_instance.get_metrics_with_http_info(project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling MetricsApi->get_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **expand** | **String** | A comma-separated list of properties that can reveal additional information in the response. | [optional] |
| **limit** | **Integer** | The number of metrics to return in the response. Defaults to 20. Maximum limit is 50. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and returns the next &#x60;limit&#x60; items. | [optional] |
| **sort** | **String** | A field to sort the items by. Prefix field by a dash ( - ) to sort in descending order. This endpoint supports sorting by &#x60;createdAt&#x60; or &#x60;name&#x60;. | [optional] |
| **filter** | **String** | A comma-separated list of filters. This endpoint accepts filtering by &#x60;query&#x60;, &#x60;tags&#x60;, &#39;eventKind&#39;, &#39;isNumeric&#39;, &#39;unitAggregationType&#x60;, &#x60;hasConnections&#x60;, &#x60;maintainerIds&#x60;, &#x60;maintainerTeamKey&#x60;, &#x60;view&#x60;, and &#x60;dataSourceKeys&#x60;. To learn more about the filter syntax, read the &#39;Filtering metrics&#39; section above. | [optional] |

### Return type

[**MetricCollectionRep**](MetricCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_metric

> <MetricRep> patch_metric(project_key, metric_key, patch_operation)

Update metric

Patch a metric by key. Updating a metric uses a [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) representation of the desired changes. To learn more, read [Updates](https://launchdarkly.com/docs/api#updates).

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

api_instance = LaunchDarklyApi::MetricsApi.new
project_key = 'project_key_example' # String | The project key
metric_key = 'metric_key_example' # String | The metric key
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField'})] # Array<PatchOperation> | 

begin
  # Update metric
  result = api_instance.patch_metric(project_key, metric_key, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling MetricsApi->patch_metric: #{e}"
end
```

#### Using the patch_metric_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricRep>, Integer, Hash)> patch_metric_with_http_info(project_key, metric_key, patch_operation)

```ruby
begin
  # Update metric
  data, status_code, headers = api_instance.patch_metric_with_http_info(project_key, metric_key, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling MetricsApi->patch_metric_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **metric_key** | **String** | The metric key |  |
| **patch_operation** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md) |  |  |

### Return type

[**MetricRep**](MetricRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_metric

> <MetricRep> post_metric(project_key, metric_post)

Create metric

Create a new metric in the specified project. The expected `POST` body differs depending on the specified `kind` property.

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

api_instance = LaunchDarklyApi::MetricsApi.new
project_key = 'project_key_example' # String | The project key
metric_post = LaunchDarklyApi::MetricPost.new({key: 'metric-key-123abc', kind: 'pageview'}) # MetricPost | 

begin
  # Create metric
  result = api_instance.post_metric(project_key, metric_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling MetricsApi->post_metric: #{e}"
end
```

#### Using the post_metric_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricRep>, Integer, Hash)> post_metric_with_http_info(project_key, metric_post)

```ruby
begin
  # Create metric
  data, status_code, headers = api_instance.post_metric_with_http_info(project_key, metric_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling MetricsApi->post_metric_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **metric_post** | [**MetricPost**](MetricPost.md) |  |  |

### Return type

[**MetricRep**](MetricRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

