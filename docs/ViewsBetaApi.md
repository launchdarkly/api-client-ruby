# LaunchDarklyApi::ViewsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_view**](ViewsBetaApi.md#create_view) | **POST** /api/v2/projects/{projectKey}/views | Create view |
| [**delete_view**](ViewsBetaApi.md#delete_view) | **DELETE** /api/v2/projects/{projectKey}/views/{viewKey} | Delete view |
| [**get_linked_resources**](ViewsBetaApi.md#get_linked_resources) | **GET** /api/v2/projects/{projectKey}/views/{viewKey}/linked/{resourceType} | Get linked resources |
| [**get_linked_views**](ViewsBetaApi.md#get_linked_views) | **GET** /api/v2/projects/{projectKey}/view-associations/{resourceType}/{resourceKey} | Get linked views for a given resource |
| [**get_view**](ViewsBetaApi.md#get_view) | **GET** /api/v2/projects/{projectKey}/views/{viewKey} | Get view |
| [**get_views**](ViewsBetaApi.md#get_views) | **GET** /api/v2/projects/{projectKey}/views | List views |
| [**link_resource**](ViewsBetaApi.md#link_resource) | **POST** /api/v2/projects/{projectKey}/views/{viewKey}/link/{resourceType} | Link resource |
| [**unlink_resource**](ViewsBetaApi.md#unlink_resource) | **DELETE** /api/v2/projects/{projectKey}/views/{viewKey}/link/{resourceType} | Unlink resource |
| [**update_view**](ViewsBetaApi.md#update_view) | **PATCH** /api/v2/projects/{projectKey}/views/{viewKey} | Update view |


## create_view

> <View> create_view(ld_api_version, project_key, view_post)

Create view

Create a new view in the given project.

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

api_instance = LaunchDarklyApi::ViewsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
view_post = LaunchDarklyApi::ViewPost.new({key: 'key_example', name: 'name_example'}) # ViewPost | View object to create

begin
  # Create view
  result = api_instance.create_view(ld_api_version, project_key, view_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ViewsBetaApi->create_view: #{e}"
end
```

#### Using the create_view_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<View>, Integer, Hash)> create_view_with_http_info(ld_api_version, project_key, view_post)

```ruby
begin
  # Create view
  data, status_code, headers = api_instance.create_view_with_http_info(ld_api_version, project_key, view_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <View>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ViewsBetaApi->create_view_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **view_post** | [**ViewPost**](ViewPost.md) | View object to create |  |

### Return type

[**View**](View.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_view

> delete_view(ld_api_version, project_key, view_key)

Delete view

Delete a specific view by its key.

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

api_instance = LaunchDarklyApi::ViewsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
view_key = 'my-view' # String | 

begin
  # Delete view
  api_instance.delete_view(ld_api_version, project_key, view_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ViewsBetaApi->delete_view: #{e}"
end
```

#### Using the delete_view_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_view_with_http_info(ld_api_version, project_key, view_key)

```ruby
begin
  # Delete view
  data, status_code, headers = api_instance.delete_view_with_http_info(ld_api_version, project_key, view_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ViewsBetaApi->delete_view_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **view_key** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linked_resources

> <ViewLinkedResources> get_linked_resources(ld_api_version, project_key, view_key, resource_type, opts)

Get linked resources

Get a list of all linked resources for a given view.

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

api_instance = LaunchDarklyApi::ViewsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
view_key = 'my-view' # String | 
resource_type = 'flags' # String | 
opts = {
  limit: 56, # Integer | The number of views to return.
  offset: 56, # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
  sort: 'linkedAt' # String | Field to sort by. Default field is `linkedAt`, default order is ascending.
}

begin
  # Get linked resources
  result = api_instance.get_linked_resources(ld_api_version, project_key, view_key, resource_type, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ViewsBetaApi->get_linked_resources: #{e}"
end
```

#### Using the get_linked_resources_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ViewLinkedResources>, Integer, Hash)> get_linked_resources_with_http_info(ld_api_version, project_key, view_key, resource_type, opts)

```ruby
begin
  # Get linked resources
  data, status_code, headers = api_instance.get_linked_resources_with_http_info(ld_api_version, project_key, view_key, resource_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ViewLinkedResources>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ViewsBetaApi->get_linked_resources_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **view_key** | **String** |  |  |
| **resource_type** | **String** |  |  |
| **limit** | **Integer** | The number of views to return. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |
| **sort** | **String** | Field to sort by. Default field is &#x60;linkedAt&#x60;, default order is ascending. | [optional][default to &#39;linkedAt&#39;] |

### Return type

[**ViewLinkedResources**](ViewLinkedResources.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linked_views

> <Views> get_linked_views(ld_api_version, project_key, resource_type, resource_key, opts)

Get linked views for a given resource

Get a list of all linked views for a resource. Flags, AI configs and metrics are identified by key. Segments are identified by segment ID.

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

api_instance = LaunchDarklyApi::ViewsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
resource_type = 'flags' # String | 
resource_key = 'my-flag' # String | 
opts = {
  environment_id: '6890ff25c3e3830ba1a352e4', # String | Environment ID. Required when resourceType is 'segments'
  limit: 56, # Integer | The number of views to return.
  offset: 56 # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
}

begin
  # Get linked views for a given resource
  result = api_instance.get_linked_views(ld_api_version, project_key, resource_type, resource_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ViewsBetaApi->get_linked_views: #{e}"
end
```

#### Using the get_linked_views_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Views>, Integer, Hash)> get_linked_views_with_http_info(ld_api_version, project_key, resource_type, resource_key, opts)

```ruby
begin
  # Get linked views for a given resource
  data, status_code, headers = api_instance.get_linked_views_with_http_info(ld_api_version, project_key, resource_type, resource_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Views>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ViewsBetaApi->get_linked_views_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **resource_type** | **String** |  |  |
| **resource_key** | **String** |  |  |
| **environment_id** | **String** | Environment ID. Required when resourceType is &#39;segments&#39; | [optional] |
| **limit** | **Integer** | The number of views to return. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |

### Return type

[**Views**](Views.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_view

> <View> get_view(ld_api_version, project_key, view_key, opts)

Get view

Retrieve a specific view by its key.

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

api_instance = LaunchDarklyApi::ViewsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
view_key = 'my-view' # String | 
opts = {
  sort: 'key', # String | A sort to apply to the list of views.
  limit: 56, # Integer | The number of views to return.
  offset: 56, # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
  filter: 'filter_example', # String | A filter to apply to the list of views.
  expand: ['allFlags'] # Array<String> | A comma-separated list of fields to expand.
}

begin
  # Get view
  result = api_instance.get_view(ld_api_version, project_key, view_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ViewsBetaApi->get_view: #{e}"
end
```

#### Using the get_view_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<View>, Integer, Hash)> get_view_with_http_info(ld_api_version, project_key, view_key, opts)

```ruby
begin
  # Get view
  data, status_code, headers = api_instance.get_view_with_http_info(ld_api_version, project_key, view_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <View>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ViewsBetaApi->get_view_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **view_key** | **String** |  |  |
| **sort** | **String** | A sort to apply to the list of views. | [optional] |
| **limit** | **Integer** | The number of views to return. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |
| **filter** | **String** | A filter to apply to the list of views. | [optional] |
| **expand** | [**Array&lt;String&gt;**](String.md) | A comma-separated list of fields to expand. | [optional] |

### Return type

[**View**](View.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_views

> <Views> get_views(ld_api_version, project_key, opts)

List views

Get a list of all views in the given project.

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

api_instance = LaunchDarklyApi::ViewsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
opts = {
  sort: 'key', # String | A sort to apply to the list of views.
  limit: 56, # Integer | The number of views to return.
  offset: 56, # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
  filter: 'filter_example', # String | A filter to apply to the list of views.
  expand: ['flagsSummary'] # Array<String> | A comma-separated list of fields to expand.
}

begin
  # List views
  result = api_instance.get_views(ld_api_version, project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ViewsBetaApi->get_views: #{e}"
end
```

#### Using the get_views_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Views>, Integer, Hash)> get_views_with_http_info(ld_api_version, project_key, opts)

```ruby
begin
  # List views
  data, status_code, headers = api_instance.get_views_with_http_info(ld_api_version, project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Views>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ViewsBetaApi->get_views_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **sort** | **String** | A sort to apply to the list of views. | [optional] |
| **limit** | **Integer** | The number of views to return. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |
| **filter** | **String** | A filter to apply to the list of views. | [optional] |
| **expand** | [**Array&lt;String&gt;**](String.md) | A comma-separated list of fields to expand. | [optional] |

### Return type

[**Views**](Views.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## link_resource

> <LinkResourceSuccessResponse> link_resource(ld_api_version, project_key, view_key, resource_type, view_link_request)

Link resource

Link one or multiple resources to a view: - Link flags using flag keys - Link AI configs using AI config keys - Link metrics using metric keys - Link segments using segment IDs 

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

api_instance = LaunchDarklyApi::ViewsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
view_key = 'my-view' # String | 
resource_type = 'flags' # String | 
view_link_request = LaunchDarklyApi::ViewLinkRequestKeys.new({keys: ['keys_example']}) # ViewLinkRequest | The resource to link to the view. Flags are identified by key. Segments are identified by segment ID.

begin
  # Link resource
  result = api_instance.link_resource(ld_api_version, project_key, view_key, resource_type, view_link_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ViewsBetaApi->link_resource: #{e}"
end
```

#### Using the link_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LinkResourceSuccessResponse>, Integer, Hash)> link_resource_with_http_info(ld_api_version, project_key, view_key, resource_type, view_link_request)

```ruby
begin
  # Link resource
  data, status_code, headers = api_instance.link_resource_with_http_info(ld_api_version, project_key, view_key, resource_type, view_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkResourceSuccessResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ViewsBetaApi->link_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **view_key** | **String** |  |  |
| **resource_type** | **String** |  |  |
| **view_link_request** | [**ViewLinkRequest**](ViewLinkRequest.md) | The resource to link to the view. Flags are identified by key. Segments are identified by segment ID. |  |

### Return type

[**LinkResourceSuccessResponse**](LinkResourceSuccessResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unlink_resource

> <UnlinkResourceSuccessResponse> unlink_resource(ld_api_version, project_key, view_key, resource_type, view_link_request)

Unlink resource

Unlink one or multiple resources from a view: - Unlink flags using flag keys - Unlink segments using segment IDs - Unlink AI configs using AI config keys - Unlink metrics using metric keys 

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

api_instance = LaunchDarklyApi::ViewsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
view_key = 'my-view' # String | 
resource_type = 'flags' # String | 
view_link_request = LaunchDarklyApi::ViewLinkRequestKeys.new({keys: ['keys_example']}) # ViewLinkRequest | The resource to link to the view. Flags are identified by key. Segments are identified by segment ID.

begin
  # Unlink resource
  result = api_instance.unlink_resource(ld_api_version, project_key, view_key, resource_type, view_link_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ViewsBetaApi->unlink_resource: #{e}"
end
```

#### Using the unlink_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnlinkResourceSuccessResponse>, Integer, Hash)> unlink_resource_with_http_info(ld_api_version, project_key, view_key, resource_type, view_link_request)

```ruby
begin
  # Unlink resource
  data, status_code, headers = api_instance.unlink_resource_with_http_info(ld_api_version, project_key, view_key, resource_type, view_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnlinkResourceSuccessResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ViewsBetaApi->unlink_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **view_key** | **String** |  |  |
| **resource_type** | **String** |  |  |
| **view_link_request** | [**ViewLinkRequest**](ViewLinkRequest.md) | The resource to link to the view. Flags are identified by key. Segments are identified by segment ID. |  |

### Return type

[**UnlinkResourceSuccessResponse**](UnlinkResourceSuccessResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_view

> <View> update_view(ld_api_version, project_key, view_key, view_patch)

Update view

Edit an existing view.  The request body must be a JSON object of the fields to update. The values you include replace the existing values for the fields.  Here's an example:   ```     {       \"description\": \"Example updated description\",       \"tags\": [\"new-tag\"]     }   ``` 

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

api_instance = LaunchDarklyApi::ViewsBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | 
view_key = 'my-view' # String | 
view_patch = LaunchDarklyApi::ViewPatch.new # ViewPatch | A JSON representation of the view including only the fields to update.

begin
  # Update view
  result = api_instance.update_view(ld_api_version, project_key, view_key, view_patch)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ViewsBetaApi->update_view: #{e}"
end
```

#### Using the update_view_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<View>, Integer, Hash)> update_view_with_http_info(ld_api_version, project_key, view_key, view_patch)

```ruby
begin
  # Update view
  data, status_code, headers = api_instance.update_view_with_http_info(ld_api_version, project_key, view_key, view_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <View>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ViewsBetaApi->update_view_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** |  |  |
| **view_key** | **String** |  |  |
| **view_patch** | [**ViewPatch**](ViewPatch.md) | A JSON representation of the view including only the fields to update. |  |

### Return type

[**View**](View.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

