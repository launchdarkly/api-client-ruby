# LaunchDarklyApi::ReleasePoliciesBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_release_policy**](ReleasePoliciesBetaApi.md#delete_release_policy) | **DELETE** /api/v2/projects/{projectKey}/release-policies/{policyKey} | Delete a release policy |
| [**get_release_policies**](ReleasePoliciesBetaApi.md#get_release_policies) | **GET** /api/v2/projects/{projectKey}/release-policies | List release policies |
| [**get_release_policy**](ReleasePoliciesBetaApi.md#get_release_policy) | **GET** /api/v2/projects/{projectKey}/release-policies/{policyKey} | Get a release policy by key |
| [**post_release_policies_order**](ReleasePoliciesBetaApi.md#post_release_policies_order) | **POST** /api/v2/projects/{projectKey}/release-policies/order | Update the order of existing release policies |
| [**post_release_policy**](ReleasePoliciesBetaApi.md#post_release_policy) | **POST** /api/v2/projects/{projectKey}/release-policies | Create a release policy |
| [**put_release_policy**](ReleasePoliciesBetaApi.md#put_release_policy) | **PUT** /api/v2/projects/{projectKey}/release-policies/{policyKey} | Update a release policy |


## delete_release_policy

> delete_release_policy(ld_api_version, project_key, policy_key)

Delete a release policy

Delete an existing release policy for the specified project.

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

api_instance = LaunchDarklyApi::ReleasePoliciesBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | The project key
policy_key = 'production-release' # String | The human-readable key of the release policy

begin
  # Delete a release policy
  api_instance.delete_release_policy(ld_api_version, project_key, policy_key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePoliciesBetaApi->delete_release_policy: #{e}"
end
```

#### Using the delete_release_policy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_release_policy_with_http_info(ld_api_version, project_key, policy_key)

```ruby
begin
  # Delete a release policy
  data, status_code, headers = api_instance.delete_release_policy_with_http_info(ld_api_version, project_key, policy_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePoliciesBetaApi->delete_release_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** | The project key |  |
| **policy_key** | **String** | The human-readable key of the release policy |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_release_policies

> <ReleasePoliciesResponse> get_release_policies(ld_api_version, project_key, opts)

List release policies

Get a list of release policies for the specified project with optional filtering.

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

api_instance = LaunchDarklyApi::ReleasePoliciesBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | The project key
opts = {
  exclude_default: false # Boolean | When true, exclude the default release policy from the response. When false or omitted, include the default policy if an environment filter is present.
}

begin
  # List release policies
  result = api_instance.get_release_policies(ld_api_version, project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePoliciesBetaApi->get_release_policies: #{e}"
end
```

#### Using the get_release_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReleasePoliciesResponse>, Integer, Hash)> get_release_policies_with_http_info(ld_api_version, project_key, opts)

```ruby
begin
  # List release policies
  data, status_code, headers = api_instance.get_release_policies_with_http_info(ld_api_version, project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReleasePoliciesResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePoliciesBetaApi->get_release_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** | The project key |  |
| **exclude_default** | **Boolean** | When true, exclude the default release policy from the response. When false or omitted, include the default policy if an environment filter is present. | [optional][default to false] |

### Return type

[**ReleasePoliciesResponse**](ReleasePoliciesResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_release_policy

> <ReleasePolicy> get_release_policy(ld_api_version, project_key, policy_key)

Get a release policy by key

Retrieve a single release policy by its key for the specified project.

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

api_instance = LaunchDarklyApi::ReleasePoliciesBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | The project key
policy_key = 'production-release' # String | The release policy key

begin
  # Get a release policy by key
  result = api_instance.get_release_policy(ld_api_version, project_key, policy_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePoliciesBetaApi->get_release_policy: #{e}"
end
```

#### Using the get_release_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReleasePolicy>, Integer, Hash)> get_release_policy_with_http_info(ld_api_version, project_key, policy_key)

```ruby
begin
  # Get a release policy by key
  data, status_code, headers = api_instance.get_release_policy_with_http_info(ld_api_version, project_key, policy_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReleasePolicy>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePoliciesBetaApi->get_release_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** | The project key |  |
| **policy_key** | **String** | The release policy key |  |

### Return type

[**ReleasePolicy**](ReleasePolicy.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_release_policies_order

> <Array<ReleasePolicy>> post_release_policies_order(ld_api_version, project_key, request_body)

Update the order of existing release policies

Update the order of existing release policies for the specified project.

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

api_instance = LaunchDarklyApi::ReleasePoliciesBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | The project key
request_body = ['property_example'] # Array<String> | Array of release policy keys in the desired rank order (scoped policies only). These keys must include _all_ of the scoped release policies for the project.

begin
  # Update the order of existing release policies
  result = api_instance.post_release_policies_order(ld_api_version, project_key, request_body)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePoliciesBetaApi->post_release_policies_order: #{e}"
end
```

#### Using the post_release_policies_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ReleasePolicy>>, Integer, Hash)> post_release_policies_order_with_http_info(ld_api_version, project_key, request_body)

```ruby
begin
  # Update the order of existing release policies
  data, status_code, headers = api_instance.post_release_policies_order_with_http_info(ld_api_version, project_key, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ReleasePolicy>>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePoliciesBetaApi->post_release_policies_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** | The project key |  |
| **request_body** | [**Array&lt;String&gt;**](String.md) | Array of release policy keys in the desired rank order (scoped policies only). These keys must include _all_ of the scoped release policies for the project. |  |

### Return type

[**Array&lt;ReleasePolicy&gt;**](ReleasePolicy.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_release_policy

> <ReleasePolicy> post_release_policy(ld_api_version, project_key, post_release_policy_request)

Create a release policy

Create a new release policy for the specified project.

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

api_instance = LaunchDarklyApi::ReleasePoliciesBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | The project key
post_release_policy_request = LaunchDarklyApi::PostReleasePolicyRequest.new({release_method: LaunchDarklyApi::ReleaseMethod::GUARDED_RELEASE, name: 'Production Release', key: 'production-release'}) # PostReleasePolicyRequest | Release policy to create

begin
  # Create a release policy
  result = api_instance.post_release_policy(ld_api_version, project_key, post_release_policy_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePoliciesBetaApi->post_release_policy: #{e}"
end
```

#### Using the post_release_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReleasePolicy>, Integer, Hash)> post_release_policy_with_http_info(ld_api_version, project_key, post_release_policy_request)

```ruby
begin
  # Create a release policy
  data, status_code, headers = api_instance.post_release_policy_with_http_info(ld_api_version, project_key, post_release_policy_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReleasePolicy>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePoliciesBetaApi->post_release_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** | The project key |  |
| **post_release_policy_request** | [**PostReleasePolicyRequest**](PostReleasePolicyRequest.md) | Release policy to create |  |

### Return type

[**ReleasePolicy**](ReleasePolicy.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_release_policy

> <ReleasePolicy> put_release_policy(ld_api_version, project_key, policy_key, put_release_policy_request)

Update a release policy

Update an existing release policy for the specified project.

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

api_instance = LaunchDarklyApi::ReleasePoliciesBetaApi.new
ld_api_version = 'beta' # String | Version of the endpoint.
project_key = 'default' # String | The project key
policy_key = 'production-release' # String | The human-readable key of the release policy
put_release_policy_request = LaunchDarklyApi::PutReleasePolicyRequest.new({release_method: LaunchDarklyApi::ReleaseMethod::GUARDED_RELEASE, name: 'Production Release'}) # PutReleasePolicyRequest | Release policy data to update

begin
  # Update a release policy
  result = api_instance.put_release_policy(ld_api_version, project_key, policy_key, put_release_policy_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePoliciesBetaApi->put_release_policy: #{e}"
end
```

#### Using the put_release_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReleasePolicy>, Integer, Hash)> put_release_policy_with_http_info(ld_api_version, project_key, policy_key, put_release_policy_request)

```ruby
begin
  # Update a release policy
  data, status_code, headers = api_instance.put_release_policy_with_http_info(ld_api_version, project_key, policy_key, put_release_policy_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReleasePolicy>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ReleasePoliciesBetaApi->put_release_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ld_api_version** | **String** | Version of the endpoint. |  |
| **project_key** | **String** | The project key |  |
| **policy_key** | **String** | The human-readable key of the release policy |  |
| **put_release_policy_request** | [**PutReleasePolicyRequest**](PutReleasePolicyRequest.md) | Release policy data to update |  |

### Return type

[**ReleasePolicy**](ReleasePolicy.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

