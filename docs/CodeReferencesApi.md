# LaunchDarklyApi::CodeReferencesApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_branches**](CodeReferencesApi.md#delete_branches) | **POST** /api/v2/code-refs/repositories/{repo}/branch-delete-tasks | Delete branches |
| [**delete_repository**](CodeReferencesApi.md#delete_repository) | **DELETE** /api/v2/code-refs/repositories/{repo} | Delete repository |
| [**get_branch**](CodeReferencesApi.md#get_branch) | **GET** /api/v2/code-refs/repositories/{repo}/branches/{branch} | Get branch |
| [**get_branches**](CodeReferencesApi.md#get_branches) | **GET** /api/v2/code-refs/repositories/{repo}/branches | List branches |
| [**get_extinctions**](CodeReferencesApi.md#get_extinctions) | **GET** /api/v2/code-refs/extinctions | List extinctions |
| [**get_repositories**](CodeReferencesApi.md#get_repositories) | **GET** /api/v2/code-refs/repositories | List repositories |
| [**get_repository**](CodeReferencesApi.md#get_repository) | **GET** /api/v2/code-refs/repositories/{repo} | Get repository |
| [**get_root_statistic**](CodeReferencesApi.md#get_root_statistic) | **GET** /api/v2/code-refs/statistics | Get links to code reference repositories for each project |
| [**get_statistics**](CodeReferencesApi.md#get_statistics) | **GET** /api/v2/code-refs/statistics/{projectKey} | Get code references statistics for flags |
| [**patch_repository**](CodeReferencesApi.md#patch_repository) | **PATCH** /api/v2/code-refs/repositories/{repo} | Update repository |
| [**post_extinction**](CodeReferencesApi.md#post_extinction) | **POST** /api/v2/code-refs/repositories/{repo}/branches/{branch}/extinction-events | Create extinction |
| [**post_repository**](CodeReferencesApi.md#post_repository) | **POST** /api/v2/code-refs/repositories | Create repository |
| [**put_branch**](CodeReferencesApi.md#put_branch) | **PUT** /api/v2/code-refs/repositories/{repo}/branches/{branch} | Upsert branch |


## delete_branches

> delete_branches(repo, request_body)

Delete branches

Asynchronously delete a number of branches.

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

api_instance = LaunchDarklyApi::CodeReferencesApi.new
repo = 'repo_example' # String | The repository name to delete branches for.
request_body = ['property_example'] # Array<String> | 

begin
  # Delete branches
  api_instance.delete_branches(repo, request_body)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->delete_branches: #{e}"
end
```

#### Using the delete_branches_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_branches_with_http_info(repo, request_body)

```ruby
begin
  # Delete branches
  data, status_code, headers = api_instance.delete_branches_with_http_info(repo, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->delete_branches_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo** | **String** | The repository name to delete branches for. |  |
| **request_body** | [**Array&lt;String&gt;**](String.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_repository

> delete_repository(repo)

Delete repository

Delete a repository with the specified name.

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

api_instance = LaunchDarklyApi::CodeReferencesApi.new
repo = 'repo_example' # String | The repository name

begin
  # Delete repository
  api_instance.delete_repository(repo)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->delete_repository: #{e}"
end
```

#### Using the delete_repository_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_repository_with_http_info(repo)

```ruby
begin
  # Delete repository
  data, status_code, headers = api_instance.delete_repository_with_http_info(repo)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->delete_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo** | **String** | The repository name |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_branch

> <BranchRep> get_branch(repo, branch, opts)

Get branch

Get a specific branch in a repository.

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

api_instance = LaunchDarklyApi::CodeReferencesApi.new
repo = 'repo_example' # String | The repository name
branch = 'branch_example' # String | The url-encoded branch name
opts = {
  proj_key: 'proj_key_example', # String | Filter results to a specific project
  flag_key: 'flag_key_example' # String | Filter results to a specific flag key
}

begin
  # Get branch
  result = api_instance.get_branch(repo, branch, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->get_branch: #{e}"
end
```

#### Using the get_branch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BranchRep>, Integer, Hash)> get_branch_with_http_info(repo, branch, opts)

```ruby
begin
  # Get branch
  data, status_code, headers = api_instance.get_branch_with_http_info(repo, branch, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BranchRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->get_branch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo** | **String** | The repository name |  |
| **branch** | **String** | The url-encoded branch name |  |
| **proj_key** | **String** | Filter results to a specific project | [optional] |
| **flag_key** | **String** | Filter results to a specific flag key | [optional] |

### Return type

[**BranchRep**](BranchRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_branches

> <BranchCollectionRep> get_branches(repo)

List branches

Get a list of branches.

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

api_instance = LaunchDarklyApi::CodeReferencesApi.new
repo = 'repo_example' # String | The repository name

begin
  # List branches
  result = api_instance.get_branches(repo)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->get_branches: #{e}"
end
```

#### Using the get_branches_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BranchCollectionRep>, Integer, Hash)> get_branches_with_http_info(repo)

```ruby
begin
  # List branches
  data, status_code, headers = api_instance.get_branches_with_http_info(repo)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BranchCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->get_branches_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo** | **String** | The repository name |  |

### Return type

[**BranchCollectionRep**](BranchCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_extinctions

> <ExtinctionCollectionRep> get_extinctions(opts)

List extinctions

Get a list of all extinctions. LaunchDarkly creates an extinction event after you remove all code references to a flag. To learn more, read [About extinction events](https://docs.launchdarkly.com/home/observability/code-references#about-extinction-events).

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

api_instance = LaunchDarklyApi::CodeReferencesApi.new
opts = {
  repo_name: 'repo_name_example', # String | Filter results to a specific repository
  branch_name: 'branch_name_example', # String | Filter results to a specific branch. By default, only the default branch will be queried for extinctions.
  proj_key: 'proj_key_example', # String | Filter results to a specific project
  flag_key: 'flag_key_example', # String | Filter results to a specific flag key
  from: 789, # Integer | Filter results to a specific timeframe based on commit time, expressed as a Unix epoch time in milliseconds. Must be used with `to`.
  to: 789 # Integer | Filter results to a specific timeframe based on commit time, expressed as a Unix epoch time in milliseconds. Must be used with `from`.
}

begin
  # List extinctions
  result = api_instance.get_extinctions(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->get_extinctions: #{e}"
end
```

#### Using the get_extinctions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExtinctionCollectionRep>, Integer, Hash)> get_extinctions_with_http_info(opts)

```ruby
begin
  # List extinctions
  data, status_code, headers = api_instance.get_extinctions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExtinctionCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->get_extinctions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_name** | **String** | Filter results to a specific repository | [optional] |
| **branch_name** | **String** | Filter results to a specific branch. By default, only the default branch will be queried for extinctions. | [optional] |
| **proj_key** | **String** | Filter results to a specific project | [optional] |
| **flag_key** | **String** | Filter results to a specific flag key | [optional] |
| **from** | **Integer** | Filter results to a specific timeframe based on commit time, expressed as a Unix epoch time in milliseconds. Must be used with &#x60;to&#x60;. | [optional] |
| **to** | **Integer** | Filter results to a specific timeframe based on commit time, expressed as a Unix epoch time in milliseconds. Must be used with &#x60;from&#x60;. | [optional] |

### Return type

[**ExtinctionCollectionRep**](ExtinctionCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_repositories

> <RepositoryCollectionRep> get_repositories(opts)

List repositories

Get a list of connected repositories. Optionally, you can include branch metadata with the `withBranches` query parameter. Embed references for the default branch with `ReferencesForDefaultBranch`. You can also filter the list of code references by project key and flag key.

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

api_instance = LaunchDarklyApi::CodeReferencesApi.new
opts = {
  with_branches: 'with_branches_example', # String | If set to any value, the endpoint returns repositories with associated branch data
  with_references_for_default_branch: 'with_references_for_default_branch_example', # String | If set to any value, the endpoint returns repositories with associated branch data, as well as code references for the default git branch
  proj_key: 'proj_key_example', # String | A LaunchDarkly project key. If provided, this filters code reference results to the specified project.
  flag_key: 'flag_key_example' # String | If set to any value, the endpoint returns repositories with associated branch data, as well as code references for the default git branch
}

begin
  # List repositories
  result = api_instance.get_repositories(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->get_repositories: #{e}"
end
```

#### Using the get_repositories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RepositoryCollectionRep>, Integer, Hash)> get_repositories_with_http_info(opts)

```ruby
begin
  # List repositories
  data, status_code, headers = api_instance.get_repositories_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RepositoryCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->get_repositories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **with_branches** | **String** | If set to any value, the endpoint returns repositories with associated branch data | [optional] |
| **with_references_for_default_branch** | **String** | If set to any value, the endpoint returns repositories with associated branch data, as well as code references for the default git branch | [optional] |
| **proj_key** | **String** | A LaunchDarkly project key. If provided, this filters code reference results to the specified project. | [optional] |
| **flag_key** | **String** | If set to any value, the endpoint returns repositories with associated branch data, as well as code references for the default git branch | [optional] |

### Return type

[**RepositoryCollectionRep**](RepositoryCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_repository

> <RepositoryRep> get_repository(repo)

Get repository

Get a single repository by name.

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

api_instance = LaunchDarklyApi::CodeReferencesApi.new
repo = 'repo_example' # String | The repository name

begin
  # Get repository
  result = api_instance.get_repository(repo)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->get_repository: #{e}"
end
```

#### Using the get_repository_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RepositoryRep>, Integer, Hash)> get_repository_with_http_info(repo)

```ruby
begin
  # Get repository
  data, status_code, headers = api_instance.get_repository_with_http_info(repo)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RepositoryRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->get_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo** | **String** | The repository name |  |

### Return type

[**RepositoryRep**](RepositoryRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_root_statistic

> <StatisticsRoot> get_root_statistic

Get links to code reference repositories for each project

Get links for all projects that have code references.

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

api_instance = LaunchDarklyApi::CodeReferencesApi.new

begin
  # Get links to code reference repositories for each project
  result = api_instance.get_root_statistic
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->get_root_statistic: #{e}"
end
```

#### Using the get_root_statistic_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatisticsRoot>, Integer, Hash)> get_root_statistic_with_http_info

```ruby
begin
  # Get links to code reference repositories for each project
  data, status_code, headers = api_instance.get_root_statistic_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatisticsRoot>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->get_root_statistic_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**StatisticsRoot**](StatisticsRoot.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_statistics

> <StatisticCollectionRep> get_statistics(project_key, opts)

Get code references statistics for flags

Get statistics about all the code references across repositories for all flags in your project that have code references in the default branch, for example, `main`. Optionally, you can include the `flagKey` query parameter to limit your request to statistics about code references for a single flag. This endpoint returns the number of references to your flag keys in your repositories, as well as a link to each repository.

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

api_instance = LaunchDarklyApi::CodeReferencesApi.new
project_key = 'project_key_example' # String | The project key
opts = {
  flag_key: 'flag_key_example' # String | Filter results to a specific flag key
}

begin
  # Get code references statistics for flags
  result = api_instance.get_statistics(project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->get_statistics: #{e}"
end
```

#### Using the get_statistics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatisticCollectionRep>, Integer, Hash)> get_statistics_with_http_info(project_key, opts)

```ruby
begin
  # Get code references statistics for flags
  data, status_code, headers = api_instance.get_statistics_with_http_info(project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatisticCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->get_statistics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **flag_key** | **String** | Filter results to a specific flag key | [optional] |

### Return type

[**StatisticCollectionRep**](StatisticCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_repository

> <RepositoryRep> patch_repository(repo, patch_operation)

Update repository

Update a repository's settings. Updating repository settings uses a [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) or [JSON merge patch](https://datatracker.ietf.org/doc/html/rfc7386) representation of the desired changes. To learn more, read [Updates](/#section/Overview/Updates).

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

api_instance = LaunchDarklyApi::CodeReferencesApi.new
repo = 'repo_example' # String | The repository name
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField'})] # Array<PatchOperation> | 

begin
  # Update repository
  result = api_instance.patch_repository(repo, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->patch_repository: #{e}"
end
```

#### Using the patch_repository_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RepositoryRep>, Integer, Hash)> patch_repository_with_http_info(repo, patch_operation)

```ruby
begin
  # Update repository
  data, status_code, headers = api_instance.patch_repository_with_http_info(repo, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RepositoryRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->patch_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo** | **String** | The repository name |  |
| **patch_operation** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md) |  |  |

### Return type

[**RepositoryRep**](RepositoryRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_extinction

> post_extinction(repo, branch, extinction)

Create extinction

Create a new extinction.

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

api_instance = LaunchDarklyApi::CodeReferencesApi.new
repo = 'repo_example' # String | The repository name
branch = 'branch_example' # String | The URL-encoded branch name
extinction = [LaunchDarklyApi::Extinction.new({revision: 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', message: 'Remove flag for launched feature', time: 3.56, flag_key: 'enable-feature', proj_key: 'default'})] # Array<Extinction> | 

begin
  # Create extinction
  api_instance.post_extinction(repo, branch, extinction)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->post_extinction: #{e}"
end
```

#### Using the post_extinction_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_extinction_with_http_info(repo, branch, extinction)

```ruby
begin
  # Create extinction
  data, status_code, headers = api_instance.post_extinction_with_http_info(repo, branch, extinction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->post_extinction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo** | **String** | The repository name |  |
| **branch** | **String** | The URL-encoded branch name |  |
| **extinction** | [**Array&lt;Extinction&gt;**](Extinction.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_repository

> <RepositoryRep> post_repository(repository_post)

Create repository

Create a repository with the specified name.

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

api_instance = LaunchDarklyApi::CodeReferencesApi.new
repository_post = LaunchDarklyApi::RepositoryPost.new({name: 'LaunchDarkly-Docs'}) # RepositoryPost | 

begin
  # Create repository
  result = api_instance.post_repository(repository_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->post_repository: #{e}"
end
```

#### Using the post_repository_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RepositoryRep>, Integer, Hash)> post_repository_with_http_info(repository_post)

```ruby
begin
  # Create repository
  data, status_code, headers = api_instance.post_repository_with_http_info(repository_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RepositoryRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->post_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repository_post** | [**RepositoryPost**](RepositoryPost.md) |  |  |

### Return type

[**RepositoryRep**](RepositoryRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_branch

> put_branch(repo, branch, put_branch)

Upsert branch

Create a new branch if it doesn't exist, or update the branch if it already exists.

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

api_instance = LaunchDarklyApi::CodeReferencesApi.new
repo = 'repo_example' # String | The repository name
branch = 'branch_example' # String | The URL-encoded branch name
put_branch = LaunchDarklyApi::PutBranch.new({name: 'main', head: 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', sync_time: 3.56}) # PutBranch | 

begin
  # Upsert branch
  api_instance.put_branch(repo, branch, put_branch)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->put_branch: #{e}"
end
```

#### Using the put_branch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_branch_with_http_info(repo, branch, put_branch)

```ruby
begin
  # Upsert branch
  data, status_code, headers = api_instance.put_branch_with_http_info(repo, branch, put_branch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling CodeReferencesApi->put_branch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo** | **String** | The repository name |  |
| **branch** | **String** | The URL-encoded branch name |  |
| **put_branch** | [**PutBranch**](PutBranch.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

