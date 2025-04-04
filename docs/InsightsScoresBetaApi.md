# LaunchDarklyApi::InsightsScoresBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_insight_group**](InsightsScoresBetaApi.md#create_insight_group) | **POST** /api/v2/engineering-insights/insights/group | Create insight group |
| [**delete_insight_group**](InsightsScoresBetaApi.md#delete_insight_group) | **DELETE** /api/v2/engineering-insights/insights/groups/{insightGroupKey} | Delete insight group |
| [**get_insight_group**](InsightsScoresBetaApi.md#get_insight_group) | **GET** /api/v2/engineering-insights/insights/groups/{insightGroupKey} | Get insight group |
| [**get_insight_groups**](InsightsScoresBetaApi.md#get_insight_groups) | **GET** /api/v2/engineering-insights/insights/groups | List insight groups |
| [**get_insights_scores**](InsightsScoresBetaApi.md#get_insights_scores) | **GET** /api/v2/engineering-insights/insights/scores | Get insight scores |
| [**patch_insight_group**](InsightsScoresBetaApi.md#patch_insight_group) | **PATCH** /api/v2/engineering-insights/insights/groups/{insightGroupKey} | Patch insight group |


## create_insight_group

> <InsightGroup> create_insight_group(post_insight_group_params)

Create insight group

Create insight group

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

api_instance = LaunchDarklyApi::InsightsScoresBetaApi.new
post_insight_group_params = LaunchDarklyApi::PostInsightGroupParams.new({name: 'Production - All Apps', key: 'default-production-all-apps', project_key: 'default', environment_key: 'production'}) # PostInsightGroupParams | 

begin
  # Create insight group
  result = api_instance.create_insight_group(post_insight_group_params)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsScoresBetaApi->create_insight_group: #{e}"
end
```

#### Using the create_insight_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsightGroup>, Integer, Hash)> create_insight_group_with_http_info(post_insight_group_params)

```ruby
begin
  # Create insight group
  data, status_code, headers = api_instance.create_insight_group_with_http_info(post_insight_group_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsightGroup>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsScoresBetaApi->create_insight_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_insight_group_params** | [**PostInsightGroupParams**](PostInsightGroupParams.md) |  |  |

### Return type

[**InsightGroup**](InsightGroup.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_insight_group

> delete_insight_group(insight_group_key)

Delete insight group

Delete insight group

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

api_instance = LaunchDarklyApi::InsightsScoresBetaApi.new
insight_group_key = 'insight_group_key_example' # String | The insight group key

begin
  # Delete insight group
  api_instance.delete_insight_group(insight_group_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsScoresBetaApi->delete_insight_group: #{e}"
end
```

#### Using the delete_insight_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_insight_group_with_http_info(insight_group_key)

```ruby
begin
  # Delete insight group
  data, status_code, headers = api_instance.delete_insight_group_with_http_info(insight_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsScoresBetaApi->delete_insight_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **insight_group_key** | **String** | The insight group key |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_insight_group

> <InsightGroup> get_insight_group(insight_group_key, opts)

Get insight group

Get insight group  ### Expanding the insight group response  LaunchDarkly supports expanding the insight group response to include additional fields.  To expand the response, append the `expand` query parameter and include the following:  * `scores` includes details on all of the scores used in the engineering insights metrics views for this group * `environment` includes details on each environment associated with this group  For example, use `?expand=scores` to include the `scores` field in the response. By default, this field is **not** included in the response. 

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

api_instance = LaunchDarklyApi::InsightsScoresBetaApi.new
insight_group_key = 'insight_group_key_example' # String | The insight group key
opts = {
  expand: 'expand_example' # String | Options: `scores`, `environment`
}

begin
  # Get insight group
  result = api_instance.get_insight_group(insight_group_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsScoresBetaApi->get_insight_group: #{e}"
end
```

#### Using the get_insight_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsightGroup>, Integer, Hash)> get_insight_group_with_http_info(insight_group_key, opts)

```ruby
begin
  # Get insight group
  data, status_code, headers = api_instance.get_insight_group_with_http_info(insight_group_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsightGroup>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsScoresBetaApi->get_insight_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **insight_group_key** | **String** | The insight group key |  |
| **expand** | **String** | Options: &#x60;scores&#x60;, &#x60;environment&#x60; | [optional] |

### Return type

[**InsightGroup**](InsightGroup.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_insight_groups

> <InsightGroupCollection> get_insight_groups(opts)

List insight groups

List groups for which you are collecting insights  ### Expanding the insight groups collection response  LaunchDarkly supports expanding the insight groups collection response to include additional fields.  To expand the response, append the `expand` query parameter and include the following:  * `scores` includes details on all of the scores used in the engineering insights metrics views for each group * `environment` includes details on each environment associated with each group * `metadata` includes counts of the number of insight groups with particular indicators, such as \"excellent,\" \"good,\" \"fair,\" and so on.  For example, use `?expand=scores` to include the `scores` field in the response. By default, this field is **not** included in the response. 

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

api_instance = LaunchDarklyApi::InsightsScoresBetaApi.new
opts = {
  limit: 789, # Integer | The number of insight groups to return. Default is 20. Must be between 1 and 20 inclusive.
  offset: 789, # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
  sort: 'sort_example', # String | Sort flag list by field. Prefix field with <code>-</code> to sort in descending order. Allowed fields: name
  query: 'query_example', # String | Filter list of insights groups by name.
  expand: 'expand_example' # String | Options: `scores`, `environment`, `metadata`
}

begin
  # List insight groups
  result = api_instance.get_insight_groups(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsScoresBetaApi->get_insight_groups: #{e}"
end
```

#### Using the get_insight_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsightGroupCollection>, Integer, Hash)> get_insight_groups_with_http_info(opts)

```ruby
begin
  # List insight groups
  data, status_code, headers = api_instance.get_insight_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsightGroupCollection>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsScoresBetaApi->get_insight_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The number of insight groups to return. Default is 20. Must be between 1 and 20 inclusive. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |
| **sort** | **String** | Sort flag list by field. Prefix field with &lt;code&gt;-&lt;/code&gt; to sort in descending order. Allowed fields: name | [optional] |
| **query** | **String** | Filter list of insights groups by name. | [optional] |
| **expand** | **String** | Options: &#x60;scores&#x60;, &#x60;environment&#x60;, &#x60;metadata&#x60; | [optional] |

### Return type

[**InsightGroupCollection**](InsightGroupCollection.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_insights_scores

> <InsightScores> get_insights_scores(project_key, environment_key, opts)

Get insight scores

Return insights scores, based on the given parameters. This data is also used in engineering insights metrics views.

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

api_instance = LaunchDarklyApi::InsightsScoresBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
opts = {
  application_key: 'application_key_example' # String | Comma separated list of application keys
}

begin
  # Get insight scores
  result = api_instance.get_insights_scores(project_key, environment_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsScoresBetaApi->get_insights_scores: #{e}"
end
```

#### Using the get_insights_scores_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsightScores>, Integer, Hash)> get_insights_scores_with_http_info(project_key, environment_key, opts)

```ruby
begin
  # Get insight scores
  data, status_code, headers = api_instance.get_insights_scores_with_http_info(project_key, environment_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsightScores>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsScoresBetaApi->get_insights_scores_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **application_key** | **String** | Comma separated list of application keys | [optional] |

### Return type

[**InsightScores**](InsightScores.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_insight_group

> <InsightGroup> patch_insight_group(insight_group_key, patch_operation)

Patch insight group

Update an insight group. Updating an insight group uses a [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) representation of the desired changes. To learn more, read [Updates](https://launchdarkly.com/docs/api#updates).

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

api_instance = LaunchDarklyApi::InsightsScoresBetaApi.new
insight_group_key = 'insight_group_key_example' # String | The insight group key
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField'})] # Array<PatchOperation> | 

begin
  # Patch insight group
  result = api_instance.patch_insight_group(insight_group_key, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsScoresBetaApi->patch_insight_group: #{e}"
end
```

#### Using the patch_insight_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsightGroup>, Integer, Hash)> patch_insight_group_with_http_info(insight_group_key, patch_operation)

```ruby
begin
  # Patch insight group
  data, status_code, headers = api_instance.patch_insight_group_with_http_info(insight_group_key, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsightGroup>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsScoresBetaApi->patch_insight_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **insight_group_key** | **String** | The insight group key |  |
| **patch_operation** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md) |  |  |

### Return type

[**InsightGroup**](InsightGroup.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

