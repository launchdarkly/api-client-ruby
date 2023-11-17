# LaunchDarklyApi::ApplicationsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_application**](ApplicationsBetaApi.md#create_application) | **POST** /api/v2/applications | Post application |
| [**delete_application**](ApplicationsBetaApi.md#delete_application) | **DELETE** /api/v2/applications/{applicationKey} | Delete application |
| [**delete_application_version**](ApplicationsBetaApi.md#delete_application_version) | **DELETE** /api/v2/applications/{applicationKey}/versions/{versionKey} | Delete application version |
| [**get_application**](ApplicationsBetaApi.md#get_application) | **GET** /api/v2/applications/{applicationKey} | Get application by key |
| [**get_application_versions**](ApplicationsBetaApi.md#get_application_versions) | **GET** /api/v2/applications/{applicationKey}/versions | Get application versions by application key |
| [**get_applications**](ApplicationsBetaApi.md#get_applications) | **GET** /api/v2/applications | Get applications |
| [**patch_application**](ApplicationsBetaApi.md#patch_application) | **PATCH** /api/v2/applications/{applicationKey} | Update application |
| [**patch_application_version**](ApplicationsBetaApi.md#patch_application_version) | **PATCH** /api/v2/applications/{applicationKey}/versions/{versionKey} | Update application version |
| [**post_application_version**](ApplicationsBetaApi.md#post_application_version) | **POST** /api/v2/applications/{applicationKey}/versions | Post application version |


## create_application

> <ApplicationRep> create_application(create_application_input)

Post application

Create a new application

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

api_instance = LaunchDarklyApi::ApplicationsBetaApi.new
create_application_input = LaunchDarklyApi::CreateApplicationInput.new({key: 'com.launchdarkly.cafe', kind: 'browser', name: 'LaunchDarklyCafe'}) # CreateApplicationInput | 

begin
  # Post application
  result = api_instance.create_application(create_application_input)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApplicationsBetaApi->create_application: #{e}"
end
```

#### Using the create_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationRep>, Integer, Hash)> create_application_with_http_info(create_application_input)

```ruby
begin
  # Post application
  data, status_code, headers = api_instance.create_application_with_http_info(create_application_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApplicationsBetaApi->create_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_application_input** | [**CreateApplicationInput**](CreateApplicationInput.md) |  |  |

### Return type

[**ApplicationRep**](ApplicationRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_application

> delete_application(application_key)

Delete application

Delete an application.

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

api_instance = LaunchDarklyApi::ApplicationsBetaApi.new
application_key = 'application_key_example' # String | The application key

begin
  # Delete application
  api_instance.delete_application(application_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApplicationsBetaApi->delete_application: #{e}"
end
```

#### Using the delete_application_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_application_with_http_info(application_key)

```ruby
begin
  # Delete application
  data, status_code, headers = api_instance.delete_application_with_http_info(application_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApplicationsBetaApi->delete_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_key** | **String** | The application key |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_application_version

> delete_application_version(application_key, version_key)

Delete application version

Delete an application version.

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

api_instance = LaunchDarklyApi::ApplicationsBetaApi.new
application_key = 'application_key_example' # String | The application key
version_key = 'version_key_example' # String | The application version key

begin
  # Delete application version
  api_instance.delete_application_version(application_key, version_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApplicationsBetaApi->delete_application_version: #{e}"
end
```

#### Using the delete_application_version_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_application_version_with_http_info(application_key, version_key)

```ruby
begin
  # Delete application version
  data, status_code, headers = api_instance.delete_application_version_with_http_info(application_key, version_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApplicationsBetaApi->delete_application_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_key** | **String** | The application key |  |
| **version_key** | **String** | The application version key |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_application

> <ApplicationRep> get_application(application_key, opts)

Get application by key

 Retrieve an application by the application key.  ### Expanding the application response  LaunchDarkly supports expanding the \"Get application\" response to include additional fields.  To expand the response, append the `expand` query parameter and include the following:  * `flags` includes details on the flags that have been evaluated by the application  For example, use `?expand=flags` to include the `flags` field in the response. By default, this field is **not** included in the response. 

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

api_instance = LaunchDarklyApi::ApplicationsBetaApi.new
application_key = 'application_key_example' # String | The application key
opts = {
  expand: 'expand_example' # String | A comma-separated list of properties that can reveal additional information in the response. Options: `flags`.
}

begin
  # Get application by key
  result = api_instance.get_application(application_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApplicationsBetaApi->get_application: #{e}"
end
```

#### Using the get_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationRep>, Integer, Hash)> get_application_with_http_info(application_key, opts)

```ruby
begin
  # Get application by key
  data, status_code, headers = api_instance.get_application_with_http_info(application_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApplicationsBetaApi->get_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_key** | **String** | The application key |  |
| **expand** | **String** | A comma-separated list of properties that can reveal additional information in the response. Options: &#x60;flags&#x60;. | [optional] |

### Return type

[**ApplicationRep**](ApplicationRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_application_versions

> <ApplicationVersionsCollectionRep> get_application_versions(application_key, opts)

Get application versions by application key

Get a list of versions for a specific application in an account.

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

api_instance = LaunchDarklyApi::ApplicationsBetaApi.new
application_key = 'application_key_example' # String | The application key
opts = {
  filter: 'filter_example', # String | Accepts filter by `key`, `name`, `supported`, and `autoAdded`. Example: `filter=key equals 'test-key'`. To learn more about the filter syntax, read [Filtering applications and application versions](/tag/Applications-(beta)#filtering-contexts-and-context-instances).
  limit: 789, # Integer | The number of versions to return. Defaults to 50.
  offset: 789, # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
  sort: 'sort_example' # String | Accepts sorting order and fields. Fields can be comma separated. Possible fields are `creationDate`, `name`. Examples: `sort=name` sort by names ascending, `sort=-name,creationDate` sort by names descending and creationDate ascending.
}

begin
  # Get application versions by application key
  result = api_instance.get_application_versions(application_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApplicationsBetaApi->get_application_versions: #{e}"
end
```

#### Using the get_application_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationVersionsCollectionRep>, Integer, Hash)> get_application_versions_with_http_info(application_key, opts)

```ruby
begin
  # Get application versions by application key
  data, status_code, headers = api_instance.get_application_versions_with_http_info(application_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationVersionsCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApplicationsBetaApi->get_application_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_key** | **String** | The application key |  |
| **filter** | **String** | Accepts filter by &#x60;key&#x60;, &#x60;name&#x60;, &#x60;supported&#x60;, and &#x60;autoAdded&#x60;. Example: &#x60;filter&#x3D;key equals &#39;test-key&#39;&#x60;. To learn more about the filter syntax, read [Filtering applications and application versions](/tag/Applications-(beta)#filtering-contexts-and-context-instances). | [optional] |
| **limit** | **Integer** | The number of versions to return. Defaults to 50. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |
| **sort** | **String** | Accepts sorting order and fields. Fields can be comma separated. Possible fields are &#x60;creationDate&#x60;, &#x60;name&#x60;. Examples: &#x60;sort&#x3D;name&#x60; sort by names ascending, &#x60;sort&#x3D;-name,creationDate&#x60; sort by names descending and creationDate ascending. | [optional] |

### Return type

[**ApplicationVersionsCollectionRep**](ApplicationVersionsCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_applications

> <ApplicationCollectionRep> get_applications(opts)

Get applications

 Get a list of applications.  ### Expanding the applications response  LaunchDarkly supports expanding the \"Get applications\" response to include additional fields.  To expand the response, append the `expand` query parameter and include the following:  * `flags` includes details on the flags that have been evaluated by the application  For example, use `?expand=flags` to include the `flags` field in the response. By default, this field is **not** included in the response. 

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

api_instance = LaunchDarklyApi::ApplicationsBetaApi.new
opts = {
  filter: 'filter_example', # String | Accepts filter by `key`, `name`, `kind`, and `autoAdded`. Example: `filter=kind anyOf ['mobile', 'server'],key equals 'test-key'`. To learn more about the filter syntax, read [Filtering applications and application versions](/tag/Applications-(beta)#filtering-contexts-and-context-instances).
  limit: 789, # Integer | The number of applications to return. Defaults to 10.
  offset: 789, # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
  sort: 'sort_example', # String | Accepts sorting order and fields. Fields can be comma separated. Possible fields are `creationDate`, `name`. Examples: `sort=name` sort by names ascending, `sort=-name,creationDate` sort by names descending and creationDate ascending.
  expand: 'expand_example' # String | A comma-separated list of properties that can reveal additional information in the response. Options: `flags`.
}

begin
  # Get applications
  result = api_instance.get_applications(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApplicationsBetaApi->get_applications: #{e}"
end
```

#### Using the get_applications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationCollectionRep>, Integer, Hash)> get_applications_with_http_info(opts)

```ruby
begin
  # Get applications
  data, status_code, headers = api_instance.get_applications_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApplicationsBetaApi->get_applications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Accepts filter by &#x60;key&#x60;, &#x60;name&#x60;, &#x60;kind&#x60;, and &#x60;autoAdded&#x60;. Example: &#x60;filter&#x3D;kind anyOf [&#39;mobile&#39;, &#39;server&#39;],key equals &#39;test-key&#39;&#x60;. To learn more about the filter syntax, read [Filtering applications and application versions](/tag/Applications-(beta)#filtering-contexts-and-context-instances). | [optional] |
| **limit** | **Integer** | The number of applications to return. Defaults to 10. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |
| **sort** | **String** | Accepts sorting order and fields. Fields can be comma separated. Possible fields are &#x60;creationDate&#x60;, &#x60;name&#x60;. Examples: &#x60;sort&#x3D;name&#x60; sort by names ascending, &#x60;sort&#x3D;-name,creationDate&#x60; sort by names descending and creationDate ascending. | [optional] |
| **expand** | **String** | A comma-separated list of properties that can reveal additional information in the response. Options: &#x60;flags&#x60;. | [optional] |

### Return type

[**ApplicationCollectionRep**](ApplicationCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_application

> <ApplicationRep> patch_application(application_key, patch_operation)

Update application

Update an application. You can update the `description` and `kind` fields. Requires a [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) representation of the desired changes to the application. To learn more, read [Updates](/#section/Overview/Updates).

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

api_instance = LaunchDarklyApi::ApplicationsBetaApi.new
application_key = 'application_key_example' # String | The application key
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField', value: new example value})] # Array<PatchOperation> | 

begin
  # Update application
  result = api_instance.patch_application(application_key, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApplicationsBetaApi->patch_application: #{e}"
end
```

#### Using the patch_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationRep>, Integer, Hash)> patch_application_with_http_info(application_key, patch_operation)

```ruby
begin
  # Update application
  data, status_code, headers = api_instance.patch_application_with_http_info(application_key, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApplicationsBetaApi->patch_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_key** | **String** | The application key |  |
| **patch_operation** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md) |  |  |

### Return type

[**ApplicationRep**](ApplicationRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_application_version

> <ApplicationVersionRep> patch_application_version(application_key, version_key, patch_operation)

Update application version

Update an application version. You can update the `supported` field. Requires a [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) representation of the desired changes to the application version. To learn more, read [Updates](/#section/Overview/Updates).

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

api_instance = LaunchDarklyApi::ApplicationsBetaApi.new
application_key = 'application_key_example' # String | The application key
version_key = 'version_key_example' # String | The application version key
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField', value: new example value})] # Array<PatchOperation> | 

begin
  # Update application version
  result = api_instance.patch_application_version(application_key, version_key, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApplicationsBetaApi->patch_application_version: #{e}"
end
```

#### Using the patch_application_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationVersionRep>, Integer, Hash)> patch_application_version_with_http_info(application_key, version_key, patch_operation)

```ruby
begin
  # Update application version
  data, status_code, headers = api_instance.patch_application_version_with_http_info(application_key, version_key, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationVersionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApplicationsBetaApi->patch_application_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_key** | **String** | The application key |  |
| **version_key** | **String** | The application version key |  |
| **patch_operation** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md) |  |  |

### Return type

[**ApplicationVersionRep**](ApplicationVersionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_application_version

> <ApplicationVersionRep> post_application_version(application_key, create_application_version_input)

Post application version

Create an application version

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

api_instance = LaunchDarklyApi::ApplicationsBetaApi.new
application_key = 'application_key_example' # String | The application key
create_application_version_input = LaunchDarklyApi::CreateApplicationVersionInput.new({key: '2', name: '01.02.03'}) # CreateApplicationVersionInput | 

begin
  # Post application version
  result = api_instance.post_application_version(application_key, create_application_version_input)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApplicationsBetaApi->post_application_version: #{e}"
end
```

#### Using the post_application_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationVersionRep>, Integer, Hash)> post_application_version_with_http_info(application_key, create_application_version_input)

```ruby
begin
  # Post application version
  data, status_code, headers = api_instance.post_application_version_with_http_info(application_key, create_application_version_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationVersionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApplicationsBetaApi->post_application_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_key** | **String** | The application key |  |
| **create_application_version_input** | [**CreateApplicationVersionInput**](CreateApplicationVersionInput.md) |  |  |

### Return type

[**ApplicationVersionRep**](ApplicationVersionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

