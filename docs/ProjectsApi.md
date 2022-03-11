# LaunchDarklyApi::ProjectsApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_project**](ProjectsApi.md#delete_project) | **DELETE** /api/v2/projects/{projectKey} | Delete project |
| [**get_project**](ProjectsApi.md#get_project) | **GET** /api/v2/projects/{projectKey} | Get project |
| [**get_projects**](ProjectsApi.md#get_projects) | **GET** /api/v2/projects | List projects |
| [**patch_project**](ProjectsApi.md#patch_project) | **PATCH** /api/v2/projects/{projectKey} | Update project |
| [**post_project**](ProjectsApi.md#post_project) | **POST** /api/v2/projects | Create project |


## delete_project

> delete_project(project_key)

Delete project

Delete a project by key. Caution: deleting a project will delete all associated environments and feature flags. You cannot delete the last project in an account.

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

api_instance = LaunchDarklyApi::ProjectsApi.new
project_key = 'project_key_example' # String | The project key

begin
  # Delete project
  api_instance.delete_project(project_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ProjectsApi->delete_project: #{e}"
end
```

#### Using the delete_project_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_project_with_http_info(project_key)

```ruby
begin
  # Delete project
  data, status_code, headers = api_instance.delete_project_with_http_info(project_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ProjectsApi->delete_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project

> <Project> get_project(project_key)

Get project

Get a single project by key.

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

api_instance = LaunchDarklyApi::ProjectsApi.new
project_key = 'project_key_example' # String | The project key

begin
  # Get project
  result = api_instance.get_project(project_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ProjectsApi->get_project: #{e}"
end
```

#### Using the get_project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Project>, Integer, Hash)> get_project_with_http_info(project_key)

```ruby
begin
  # Get project
  data, status_code, headers = api_instance.get_project_with_http_info(project_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Project>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ProjectsApi->get_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |

### Return type

[**Project**](Project.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_projects

> <Projects> get_projects

List projects

Get a list of all projects in the account.

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

api_instance = LaunchDarklyApi::ProjectsApi.new

begin
  # List projects
  result = api_instance.get_projects
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ProjectsApi->get_projects: #{e}"
end
```

#### Using the get_projects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Projects>, Integer, Hash)> get_projects_with_http_info

```ruby
begin
  # List projects
  data, status_code, headers = api_instance.get_projects_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Projects>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ProjectsApi->get_projects_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Projects**](Projects.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_project

> <Project> patch_project(project_key, patch_operation)

Update project

Update a project. Requires a [JSON Patch](https://datatracker.ietf.org/doc/html/rfc6902) representation of the desired changes to the project.

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

api_instance = LaunchDarklyApi::ProjectsApi.new
project_key = 'project_key_example' # String | The project key
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField', value: new example value})] # Array<PatchOperation> | 

begin
  # Update project
  result = api_instance.patch_project(project_key, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ProjectsApi->patch_project: #{e}"
end
```

#### Using the patch_project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Project>, Integer, Hash)> patch_project_with_http_info(project_key, patch_operation)

```ruby
begin
  # Update project
  data, status_code, headers = api_instance.patch_project_with_http_info(project_key, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Project>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ProjectsApi->patch_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **patch_operation** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md) |  |  |

### Return type

[**Project**](Project.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_project

> <Project> post_project(project_post)

Create project

Create a new project with the given key and name. Project keys must be unique within an account.

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

api_instance = LaunchDarklyApi::ProjectsApi.new
project_post = LaunchDarklyApi::ProjectPost.new({name: 'My Project', key: 'my-project'}) # ProjectPost | 

begin
  # Create project
  result = api_instance.post_project(project_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ProjectsApi->post_project: #{e}"
end
```

#### Using the post_project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Project>, Integer, Hash)> post_project_with_http_info(project_post)

```ruby
begin
  # Create project
  data, status_code, headers = api_instance.post_project_with_http_info(project_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Project>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ProjectsApi->post_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_post** | [**ProjectPost**](ProjectPost.md) |  |  |

### Return type

[**Project**](Project.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

