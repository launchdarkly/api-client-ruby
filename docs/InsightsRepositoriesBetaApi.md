# LaunchDarklyApi::InsightsRepositoriesBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**associate_repositories_and_projects**](InsightsRepositoriesBetaApi.md#associate_repositories_and_projects) | **PUT** /api/v2/engineering-insights/repositories/projects | Associate repositories with projects |
| [**delete_repository_project**](InsightsRepositoriesBetaApi.md#delete_repository_project) | **DELETE** /api/v2/engineering-insights/repositories/{repositoryKey}/projects/{projectKey} | Remove repository project association |
| [**get_insights_repositories**](InsightsRepositoriesBetaApi.md#get_insights_repositories) | **GET** /api/v2/engineering-insights/repositories | List repositories |


## associate_repositories_and_projects

> <InsightsRepositoryProjectCollection> associate_repositories_and_projects(insights_repository_project_mappings)

Associate repositories with projects

Associate repositories with projects

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

api_instance = LaunchDarklyApi::InsightsRepositoriesBetaApi.new
insights_repository_project_mappings = LaunchDarklyApi::InsightsRepositoryProjectMappings.new({mappings: [LaunchDarklyApi::InsightsRepositoryProject.new({repository_key: 'launchdarkly/LaunchDarkly-Docs', project_key: 'default'})]}) # InsightsRepositoryProjectMappings | 

begin
  # Associate repositories with projects
  result = api_instance.associate_repositories_and_projects(insights_repository_project_mappings)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsRepositoriesBetaApi->associate_repositories_and_projects: #{e}"
end
```

#### Using the associate_repositories_and_projects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsightsRepositoryProjectCollection>, Integer, Hash)> associate_repositories_and_projects_with_http_info(insights_repository_project_mappings)

```ruby
begin
  # Associate repositories with projects
  data, status_code, headers = api_instance.associate_repositories_and_projects_with_http_info(insights_repository_project_mappings)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsightsRepositoryProjectCollection>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsRepositoriesBetaApi->associate_repositories_and_projects_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **insights_repository_project_mappings** | [**InsightsRepositoryProjectMappings**](InsightsRepositoryProjectMappings.md) |  |  |

### Return type

[**InsightsRepositoryProjectCollection**](InsightsRepositoryProjectCollection.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_repository_project

> delete_repository_project(repository_key, project_key)

Remove repository project association

Remove repository project association

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

api_instance = LaunchDarklyApi::InsightsRepositoriesBetaApi.new
repository_key = 'repository_key_example' # String | The repository key
project_key = 'project_key_example' # String | The project key

begin
  # Remove repository project association
  api_instance.delete_repository_project(repository_key, project_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsRepositoriesBetaApi->delete_repository_project: #{e}"
end
```

#### Using the delete_repository_project_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_repository_project_with_http_info(repository_key, project_key)

```ruby
begin
  # Remove repository project association
  data, status_code, headers = api_instance.delete_repository_project_with_http_info(repository_key, project_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsRepositoriesBetaApi->delete_repository_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repository_key** | **String** | The repository key |  |
| **project_key** | **String** | The project key |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_insights_repositories

> <InsightsRepositoryCollection> get_insights_repositories(opts)

List repositories

Get a list of repositories  ### Expanding the repository collection response  LaunchDarkly supports expanding the repository collection response to include additional fields.  To expand the response, append the `expand` query parameter and include the following:  * `projects` includes details on all of the LaunchDarkly projects associated with each repository  For example, use `?expand=projects` to include the `projects` field in the response. By default, this field is **not** included in the response. 

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

api_instance = LaunchDarklyApi::InsightsRepositoriesBetaApi.new
opts = {
  expand: 'expand_example' # String | Expand properties in response. Options: `projects`
}

begin
  # List repositories
  result = api_instance.get_insights_repositories(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsRepositoriesBetaApi->get_insights_repositories: #{e}"
end
```

#### Using the get_insights_repositories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsightsRepositoryCollection>, Integer, Hash)> get_insights_repositories_with_http_info(opts)

```ruby
begin
  # List repositories
  data, status_code, headers = api_instance.get_insights_repositories_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsightsRepositoryCollection>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsRepositoriesBetaApi->get_insights_repositories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expand** | **String** | Expand properties in response. Options: &#x60;projects&#x60; | [optional] |

### Return type

[**InsightsRepositoryCollection**](InsightsRepositoryCollection.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

