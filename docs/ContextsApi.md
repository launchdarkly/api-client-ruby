# LaunchDarklyApi::ContextsApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**evaluate_context_instance**](ContextsApi.md#evaluate_context_instance) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/flags/evaluate | Evaluate flags for context instance |
| [**get_context_attribute_names**](ContextsApi.md#get_context_attribute_names) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/context-attributes | Get context attribute names |
| [**get_context_attribute_values**](ContextsApi.md#get_context_attribute_values) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/context-attributes/{attributeName} | Get context attribute values |
| [**get_context_kinds_by_project_key**](ContextsApi.md#get_context_kinds_by_project_key) | **GET** /api/v2/projects/{projectKey}/context-kinds | Get context kinds |
| [**get_contexts**](ContextsApi.md#get_contexts) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/contexts/{kind}/{key} | Get contexts |
| [**put_context_kind**](ContextsApi.md#put_context_kind) | **PUT** /api/v2/projects/{projectKey}/context-kinds/{key} | Create or update context kind |
| [**search_contexts**](ContextsApi.md#search_contexts) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/contexts/search | Search for contexts |


## evaluate_context_instance

> <ContextInstanceEvaluations> evaluate_context_instance(project_key, environment_key, request_body, opts)

Evaluate flags for context instance

Evaluate flags for a context instance, for example, to determine the expected flag variation. **Do not use this API instead of an SDK.** The LaunchDarkly SDKs are specialized for the tasks of evaluating feature flags in your application at scale and generating analytics events based on those evaluations. This API is not designed for that use case. Any evaluations you perform with this API will not be reflected in features such as flag statuses and flag insights. Context instances evaluated by this API will not appear in the Contexts list. To learn more, read [Comparing LaunchDarkly's SDKs and REST API](https://launchdarkly.com/docs/guides/api/comparing-sdk-rest-api).  ### Filtering  LaunchDarkly supports the `filter` query param for filtering, with the following fields:  - `query` filters for a string that matches against the flags' keys and names. It is not case sensitive. For example: `filter=query equals dark-mode`. - `tags` filters the list to flags that have all of the tags in the list. For example: `filter=tags contains [\"beta\",\"q1\"]`.  You can also apply multiple filters at once. For example, setting `filter=query equals dark-mode, tags contains [\"beta\",\"q1\"]` matches flags which match the key or name `dark-mode` and are tagged `beta` and `q1`. 

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

api_instance = LaunchDarklyApi::ContextsApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
request_body = { key: 3.56} # Hash<String, Object> | 
opts = {
  limit: 789, # Integer | The number of feature flags to return. Defaults to -1, which returns all flags
  offset: 789, # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
  sort: 'sort_example', # String | A comma-separated list of fields to sort by. Fields prefixed by a dash ( - ) sort in descending order
  filter: 'filter_example' # String | A comma-separated list of filters. Each filter is of the form `field operator value`. Supported fields are explained above.
}

begin
  # Evaluate flags for context instance
  result = api_instance.evaluate_context_instance(project_key, environment_key, request_body, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ContextsApi->evaluate_context_instance: #{e}"
end
```

#### Using the evaluate_context_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContextInstanceEvaluations>, Integer, Hash)> evaluate_context_instance_with_http_info(project_key, environment_key, request_body, opts)

```ruby
begin
  # Evaluate flags for context instance
  data, status_code, headers = api_instance.evaluate_context_instance_with_http_info(project_key, environment_key, request_body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContextInstanceEvaluations>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ContextsApi->evaluate_context_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  |  |
| **limit** | **Integer** | The number of feature flags to return. Defaults to -1, which returns all flags | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |
| **sort** | **String** | A comma-separated list of fields to sort by. Fields prefixed by a dash ( - ) sort in descending order | [optional] |
| **filter** | **String** | A comma-separated list of filters. Each filter is of the form &#x60;field operator value&#x60;. Supported fields are explained above. | [optional] |

### Return type

[**ContextInstanceEvaluations**](ContextInstanceEvaluations.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_context_attribute_names

> <ContextAttributeNamesCollection> get_context_attribute_names(project_key, environment_key, opts)

Get context attribute names

Get context attribute names.

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

api_instance = LaunchDarklyApi::ContextsApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
opts = {
  filter: 'filter_example', # String | A comma-separated list of context filters. This endpoint only accepts `kind` filters, with the `equals` operator, and `name` filters, with the `startsWith` operator. To learn more about the filter syntax, read [Filtering contexts](https://launchdarkly.com/docs/ld-docs/api/contexts#filtering-contexts).
  limit: 789 # Integer | Specifies the maximum number of items in the collection to return (max: 100, default: 100)
}

begin
  # Get context attribute names
  result = api_instance.get_context_attribute_names(project_key, environment_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ContextsApi->get_context_attribute_names: #{e}"
end
```

#### Using the get_context_attribute_names_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContextAttributeNamesCollection>, Integer, Hash)> get_context_attribute_names_with_http_info(project_key, environment_key, opts)

```ruby
begin
  # Get context attribute names
  data, status_code, headers = api_instance.get_context_attribute_names_with_http_info(project_key, environment_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContextAttributeNamesCollection>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ContextsApi->get_context_attribute_names_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **filter** | **String** | A comma-separated list of context filters. This endpoint only accepts &#x60;kind&#x60; filters, with the &#x60;equals&#x60; operator, and &#x60;name&#x60; filters, with the &#x60;startsWith&#x60; operator. To learn more about the filter syntax, read [Filtering contexts](https://launchdarkly.com/docs/ld-docs/api/contexts#filtering-contexts). | [optional] |
| **limit** | **Integer** | Specifies the maximum number of items in the collection to return (max: 100, default: 100) | [optional] |

### Return type

[**ContextAttributeNamesCollection**](ContextAttributeNamesCollection.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_context_attribute_values

> <ContextAttributeValuesCollection> get_context_attribute_values(project_key, environment_key, attribute_name, opts)

Get context attribute values

Get context attribute values.

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

api_instance = LaunchDarklyApi::ContextsApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
attribute_name = 'attribute_name_example' # String | The attribute name
opts = {
  filter: 'filter_example', # String | A comma-separated list of context filters. This endpoint requires a `kind` filter, with the `equals` operator, and also accepts a `value` filter, with the `startsWith` operator. To learn more about the filter syntax, read [Filtering contexts](https://launchdarkly.com/docs/ld-docs/api/contexts#filtering-contexts).
  limit: 789 # Integer | Specifies the maximum number of items in the collection to return (max: 100, default: 50)
}

begin
  # Get context attribute values
  result = api_instance.get_context_attribute_values(project_key, environment_key, attribute_name, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ContextsApi->get_context_attribute_values: #{e}"
end
```

#### Using the get_context_attribute_values_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContextAttributeValuesCollection>, Integer, Hash)> get_context_attribute_values_with_http_info(project_key, environment_key, attribute_name, opts)

```ruby
begin
  # Get context attribute values
  data, status_code, headers = api_instance.get_context_attribute_values_with_http_info(project_key, environment_key, attribute_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContextAttributeValuesCollection>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ContextsApi->get_context_attribute_values_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **attribute_name** | **String** | The attribute name |  |
| **filter** | **String** | A comma-separated list of context filters. This endpoint requires a &#x60;kind&#x60; filter, with the &#x60;equals&#x60; operator, and also accepts a &#x60;value&#x60; filter, with the &#x60;startsWith&#x60; operator. To learn more about the filter syntax, read [Filtering contexts](https://launchdarkly.com/docs/ld-docs/api/contexts#filtering-contexts). | [optional] |
| **limit** | **Integer** | Specifies the maximum number of items in the collection to return (max: 100, default: 50) | [optional] |

### Return type

[**ContextAttributeValuesCollection**](ContextAttributeValuesCollection.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_context_kinds_by_project_key

> <ContextKindsCollectionRep> get_context_kinds_by_project_key(project_key, opts)

Get context kinds

Get all context kinds for a given project.

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

api_instance = LaunchDarklyApi::ContextsApi.new
project_key = 'project_key_example' # String | The project key
opts = {
  expand: 'expand_example' # String | A comma-separated list of properties that can reveal additional information in the response. Options: `environmentObservations`.
}

begin
  # Get context kinds
  result = api_instance.get_context_kinds_by_project_key(project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ContextsApi->get_context_kinds_by_project_key: #{e}"
end
```

#### Using the get_context_kinds_by_project_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContextKindsCollectionRep>, Integer, Hash)> get_context_kinds_by_project_key_with_http_info(project_key, opts)

```ruby
begin
  # Get context kinds
  data, status_code, headers = api_instance.get_context_kinds_by_project_key_with_http_info(project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContextKindsCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ContextsApi->get_context_kinds_by_project_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **expand** | **String** | A comma-separated list of properties that can reveal additional information in the response. Options: &#x60;environmentObservations&#x60;. | [optional] |

### Return type

[**ContextKindsCollectionRep**](ContextKindsCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contexts

> <Contexts> get_contexts(project_key, environment_key, kind, key, opts)

Get contexts

Get contexts based on kind and key. Returns one item for each application from which LaunchDarkly has received the context, with the `applicationId` field populated.

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

api_instance = LaunchDarklyApi::ContextsApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
kind = 'kind_example' # String | The context kind
key = 'key_example' # String | The context key
opts = {
  limit: 789, # Integer | Specifies the maximum number of items in the collection to return (max: 50, default: 20)
  continuation_token: 'continuation_token_example', # String | An opaque cursor that identifies the next page of results. You can use this for pagination, however, we recommend using the `next` link we provide instead.
  sort: 'sort_example', # String | Deprecated. This endpoint does not support sorting. Requests that include this parameter are rejected with a `400` response, so omit it. Results are always sorted by context kind and key.
  filter: 'filter_example', # String | A comma-separated list of context filters. This endpoint only accepts an `applicationId` filter. To learn more about the filter syntax, read [Filtering contexts](https://launchdarkly.com/docs/ld-docs/api/contexts#filtering-contexts).
  include_total_count: true # Boolean | Specifies whether to include or omit the total count of matching contexts. Defaults to true.
}

begin
  # Get contexts
  result = api_instance.get_contexts(project_key, environment_key, kind, key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ContextsApi->get_contexts: #{e}"
end
```

#### Using the get_contexts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Contexts>, Integer, Hash)> get_contexts_with_http_info(project_key, environment_key, kind, key, opts)

```ruby
begin
  # Get contexts
  data, status_code, headers = api_instance.get_contexts_with_http_info(project_key, environment_key, kind, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Contexts>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ContextsApi->get_contexts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **kind** | **String** | The context kind |  |
| **key** | **String** | The context key |  |
| **limit** | **Integer** | Specifies the maximum number of items in the collection to return (max: 50, default: 20) | [optional] |
| **continuation_token** | **String** | An opaque cursor that identifies the next page of results. You can use this for pagination, however, we recommend using the &#x60;next&#x60; link we provide instead. | [optional] |
| **sort** | **String** | Deprecated. This endpoint does not support sorting. Requests that include this parameter are rejected with a &#x60;400&#x60; response, so omit it. Results are always sorted by context kind and key. | [optional] |
| **filter** | **String** | A comma-separated list of context filters. This endpoint only accepts an &#x60;applicationId&#x60; filter. To learn more about the filter syntax, read [Filtering contexts](https://launchdarkly.com/docs/ld-docs/api/contexts#filtering-contexts). | [optional] |
| **include_total_count** | **Boolean** | Specifies whether to include or omit the total count of matching contexts. Defaults to true. | [optional] |

### Return type

[**Contexts**](Contexts.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_context_kind

> <UpsertResponseRep> put_context_kind(project_key, key, upsert_context_kind_payload)

Create or update context kind

Create or update a context kind by key. Only the included fields will be updated.

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

api_instance = LaunchDarklyApi::ContextsApi.new
project_key = 'project_key_example' # String | The project key
key = 'key_example' # String | The context kind key
upsert_context_kind_payload = LaunchDarklyApi::UpsertContextKindPayload.new({name: 'organization'}) # UpsertContextKindPayload | 

begin
  # Create or update context kind
  result = api_instance.put_context_kind(project_key, key, upsert_context_kind_payload)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ContextsApi->put_context_kind: #{e}"
end
```

#### Using the put_context_kind_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpsertResponseRep>, Integer, Hash)> put_context_kind_with_http_info(project_key, key, upsert_context_kind_payload)

```ruby
begin
  # Create or update context kind
  data, status_code, headers = api_instance.put_context_kind_with_http_info(project_key, key, upsert_context_kind_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpsertResponseRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ContextsApi->put_context_kind_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **key** | **String** | The context kind key |  |
| **upsert_context_kind_payload** | [**UpsertContextKindPayload**](UpsertContextKindPayload.md) |  |  |

### Return type

[**UpsertResponseRep**](UpsertResponseRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## search_contexts

> <Contexts> search_contexts(project_key, environment_key, context_search, opts)

Search for contexts

 Search for contexts.  You can use either the query parameters or the request body parameters. If both are provided, there is an error.  Results are sorted by context kind and key. Each context appears once, with its most recently reported attributes. Results include contexts that LaunchDarkly has received within the last 30 days.  To learn more about the filter syntax, read [Filtering contexts](https://launchdarkly.com/docs/api/contexts#filtering-contexts). To learn more about contexts, read [Contexts](https://launchdarkly.com/docs/home/flags/contexts). 

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

api_instance = LaunchDarklyApi::ContextsApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
context_search = LaunchDarklyApi::ContextSearch.new # ContextSearch | 
opts = {
  limit: 789, # Integer | Specifies the maximum number of items in the collection to return (max: 50, default: 20)
  continuation_token: 'continuation_token_example', # String | An opaque cursor that identifies the next page of results. You can use this for pagination, however, we recommend using the `next` link we provide instead.
  sort: 'sort_example', # String | Deprecated. This endpoint does not support sorting. Requests that include this parameter are rejected with a `400` response, so omit it. Results are always sorted by context kind and key.
  filter: 'filter_example', # String | A comma-separated list of context filters. To learn more about the filter syntax, read [Filtering contexts](https://launchdarkly.com/docs/ld-docs/api/contexts#filtering-contexts).
  include_total_count: true # Boolean | Specifies whether to include or omit the total count of matching contexts. Defaults to true. The total count is approximate and may be omitted if it is unavailable.
}

begin
  # Search for contexts
  result = api_instance.search_contexts(project_key, environment_key, context_search, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ContextsApi->search_contexts: #{e}"
end
```

#### Using the search_contexts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Contexts>, Integer, Hash)> search_contexts_with_http_info(project_key, environment_key, context_search, opts)

```ruby
begin
  # Search for contexts
  data, status_code, headers = api_instance.search_contexts_with_http_info(project_key, environment_key, context_search, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Contexts>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ContextsApi->search_contexts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **context_search** | [**ContextSearch**](ContextSearch.md) |  |  |
| **limit** | **Integer** | Specifies the maximum number of items in the collection to return (max: 50, default: 20) | [optional] |
| **continuation_token** | **String** | An opaque cursor that identifies the next page of results. You can use this for pagination, however, we recommend using the &#x60;next&#x60; link we provide instead. | [optional] |
| **sort** | **String** | Deprecated. This endpoint does not support sorting. Requests that include this parameter are rejected with a &#x60;400&#x60; response, so omit it. Results are always sorted by context kind and key. | [optional] |
| **filter** | **String** | A comma-separated list of context filters. To learn more about the filter syntax, read [Filtering contexts](https://launchdarkly.com/docs/ld-docs/api/contexts#filtering-contexts). | [optional] |
| **include_total_count** | **Boolean** | Specifies whether to include or omit the total count of matching contexts. Defaults to true. The total count is approximate and may be omitted if it is unavailable. | [optional] |

### Return type

[**Contexts**](Contexts.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

