# LaunchDarklyApi::ApprovalsApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_approval_request**](ApprovalsApi.md#delete_approval_request) | **DELETE** /api/v2/approval-requests/{id} | Delete approval request |
| [**delete_approval_request_for_flag**](ApprovalsApi.md#delete_approval_request_for_flag) | **DELETE** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{id} | Delete approval request for a flag |
| [**get_approval_for_flag**](ApprovalsApi.md#get_approval_for_flag) | **GET** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{id} | Get approval request for a flag |
| [**get_approval_request**](ApprovalsApi.md#get_approval_request) | **GET** /api/v2/approval-requests/{id} | Get approval request |
| [**get_approval_requests**](ApprovalsApi.md#get_approval_requests) | **GET** /api/v2/approval-requests | List approval requests |
| [**get_approvals_for_flag**](ApprovalsApi.md#get_approvals_for_flag) | **GET** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests | List approval requests for a flag |
| [**post_approval_request**](ApprovalsApi.md#post_approval_request) | **POST** /api/v2/approval-requests | Create approval request |
| [**post_approval_request_apply**](ApprovalsApi.md#post_approval_request_apply) | **POST** /api/v2/approval-requests/{id}/apply | Apply approval request |
| [**post_approval_request_apply_for_flag**](ApprovalsApi.md#post_approval_request_apply_for_flag) | **POST** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{id}/apply | Apply approval request for a flag |
| [**post_approval_request_for_flag**](ApprovalsApi.md#post_approval_request_for_flag) | **POST** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests | Create approval request for a flag |
| [**post_approval_request_review**](ApprovalsApi.md#post_approval_request_review) | **POST** /api/v2/approval-requests/{id}/reviews | Review approval request |
| [**post_approval_request_review_for_flag**](ApprovalsApi.md#post_approval_request_review_for_flag) | **POST** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{id}/reviews | Review approval request for a flag |
| [**post_flag_copy_config_approval_request**](ApprovalsApi.md#post_flag_copy_config_approval_request) | **POST** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests-flag-copy | Create approval request to copy flag configurations across environments |


## delete_approval_request

> delete_approval_request(id)

Delete approval request

Delete an approval request.

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

api_instance = LaunchDarklyApi::ApprovalsApi.new
id = 'id_example' # String | The approval request ID

begin
  # Delete approval request
  api_instance.delete_approval_request(id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->delete_approval_request: #{e}"
end
```

#### Using the delete_approval_request_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_approval_request_with_http_info(id)

```ruby
begin
  # Delete approval request
  data, status_code, headers = api_instance.delete_approval_request_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->delete_approval_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The approval request ID |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_approval_request_for_flag

> delete_approval_request_for_flag(project_key, feature_flag_key, environment_key, id)

Delete approval request for a flag

Delete an approval request for a feature flag.

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

api_instance = LaunchDarklyApi::ApprovalsApi.new
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key
environment_key = 'environment_key_example' # String | The environment key
id = 'id_example' # String | The feature flag approval request ID

begin
  # Delete approval request for a flag
  api_instance.delete_approval_request_for_flag(project_key, feature_flag_key, environment_key, id)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->delete_approval_request_for_flag: #{e}"
end
```

#### Using the delete_approval_request_for_flag_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_approval_request_for_flag_with_http_info(project_key, feature_flag_key, environment_key, id)

```ruby
begin
  # Delete approval request for a flag
  data, status_code, headers = api_instance.delete_approval_request_for_flag_with_http_info(project_key, feature_flag_key, environment_key, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->delete_approval_request_for_flag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag key |  |
| **environment_key** | **String** | The environment key |  |
| **id** | **String** | The feature flag approval request ID |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_approval_for_flag

> <FlagConfigApprovalRequestResponse> get_approval_for_flag(project_key, feature_flag_key, environment_key, id)

Get approval request for a flag

Get a single approval request for a feature flag.

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

api_instance = LaunchDarklyApi::ApprovalsApi.new
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key
environment_key = 'environment_key_example' # String | The environment key
id = 'id_example' # String | The feature flag approval request ID

begin
  # Get approval request for a flag
  result = api_instance.get_approval_for_flag(project_key, feature_flag_key, environment_key, id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->get_approval_for_flag: #{e}"
end
```

#### Using the get_approval_for_flag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlagConfigApprovalRequestResponse>, Integer, Hash)> get_approval_for_flag_with_http_info(project_key, feature_flag_key, environment_key, id)

```ruby
begin
  # Get approval request for a flag
  data, status_code, headers = api_instance.get_approval_for_flag_with_http_info(project_key, feature_flag_key, environment_key, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlagConfigApprovalRequestResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->get_approval_for_flag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag key |  |
| **environment_key** | **String** | The environment key |  |
| **id** | **String** | The feature flag approval request ID |  |

### Return type

[**FlagConfigApprovalRequestResponse**](FlagConfigApprovalRequestResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_approval_request

> <ExpandableApprovalRequestResponse> get_approval_request(id, opts)

Get approval request

Get an approval request by approval request ID.  ### Expanding approval response  LaunchDarkly supports the `expand` query param to include additional fields in the response, with the following fields:  - `flag` includes the flag the approval request belongs to - `project` includes the project the approval request belongs to - `environments` includes the environments the approval request relates to  For example, `expand=project,flag` includes the `project` and `flag` fields in the response. 

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

api_instance = LaunchDarklyApi::ApprovalsApi.new
id = 'id_example' # String | The approval request ID
opts = {
  expand: 'expand_example' # String | A comma-separated list of fields to expand in the response. Supported fields are explained above.
}

begin
  # Get approval request
  result = api_instance.get_approval_request(id, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->get_approval_request: #{e}"
end
```

#### Using the get_approval_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpandableApprovalRequestResponse>, Integer, Hash)> get_approval_request_with_http_info(id, opts)

```ruby
begin
  # Get approval request
  data, status_code, headers = api_instance.get_approval_request_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExpandableApprovalRequestResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->get_approval_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The approval request ID |  |
| **expand** | **String** | A comma-separated list of fields to expand in the response. Supported fields are explained above. | [optional] |

### Return type

[**ExpandableApprovalRequestResponse**](ExpandableApprovalRequestResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_approval_requests

> <ExpandableApprovalRequestsResponse> get_approval_requests(opts)

List approval requests

Get all approval requests.  ### Filtering approvals  LaunchDarkly supports the `filter` query param for filtering, with the following fields:  - `notifyMemberIds` filters for only approvals that are assigned to a member in the specified list. For example: `filter=notifyMemberIds anyOf [\"memberId1\", \"memberId2\"]`. - `requestorId` filters for only approvals that correspond to the ID of the member who requested the approval. For example: `filter=requestorId equals 457034721476302714390214`. - `resourceId` filters for only approvals that correspond to the the specified resource identifier. For example: `filter=resourceId equals proj/my-project:env/my-environment:flag/my-flag`. - `reviewStatus` filters for only approvals which correspond to the review status in the specified list. The possible values are `approved`, `declined`, and `pending`. For example: `filter=reviewStatus anyOf [\"pending\", \"approved\"]`. - `status` filters for only approvals which correspond to the status in the specified list. The possible values are `pending`, `scheduled`, `failed`, and `completed`. For example: `filter=status anyOf [\"pending\", \"scheduled\"]`.  You can also apply multiple filters at once. For example, setting `filter=projectKey equals my-project, reviewStatus anyOf [\"pending\",\"approved\"]` matches approval requests which correspond to the `my-project` project key, and a review status of either `pending` or `approved`.  ### Expanding approval response  LaunchDarkly supports the `expand` query param to include additional fields in the response, with the following fields:  - `flag` includes the flag the approval request belongs to - `project` includes the project the approval request belongs to - `environments` includes the environments the approval request relates to  For example, `expand=project,flag` includes the `project` and `flag` fields in the response. 

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

api_instance = LaunchDarklyApi::ApprovalsApi.new
opts = {
  filter: 'filter_example', # String | A comma-separated list of filters. Each filter is of the form `field operator value`. Supported fields are explained above.
  expand: 'expand_example', # String | A comma-separated list of fields to expand in the response. Supported fields are explained above.
  limit: 789, # Integer | The number of approvals to return. Defaults to 20. Maximum limit is 200.
  offset: 789 # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
}

begin
  # List approval requests
  result = api_instance.get_approval_requests(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->get_approval_requests: #{e}"
end
```

#### Using the get_approval_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpandableApprovalRequestsResponse>, Integer, Hash)> get_approval_requests_with_http_info(opts)

```ruby
begin
  # List approval requests
  data, status_code, headers = api_instance.get_approval_requests_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExpandableApprovalRequestsResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->get_approval_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | A comma-separated list of filters. Each filter is of the form &#x60;field operator value&#x60;. Supported fields are explained above. | [optional] |
| **expand** | **String** | A comma-separated list of fields to expand in the response. Supported fields are explained above. | [optional] |
| **limit** | **Integer** | The number of approvals to return. Defaults to 20. Maximum limit is 200. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |

### Return type

[**ExpandableApprovalRequestsResponse**](ExpandableApprovalRequestsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_approvals_for_flag

> <FlagConfigApprovalRequestsResponse> get_approvals_for_flag(project_key, feature_flag_key, environment_key)

List approval requests for a flag

Get all approval requests for a feature flag.

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

api_instance = LaunchDarklyApi::ApprovalsApi.new
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key
environment_key = 'environment_key_example' # String | The environment key

begin
  # List approval requests for a flag
  result = api_instance.get_approvals_for_flag(project_key, feature_flag_key, environment_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->get_approvals_for_flag: #{e}"
end
```

#### Using the get_approvals_for_flag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlagConfigApprovalRequestsResponse>, Integer, Hash)> get_approvals_for_flag_with_http_info(project_key, feature_flag_key, environment_key)

```ruby
begin
  # List approval requests for a flag
  data, status_code, headers = api_instance.get_approvals_for_flag_with_http_info(project_key, feature_flag_key, environment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlagConfigApprovalRequestsResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->get_approvals_for_flag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag key |  |
| **environment_key** | **String** | The environment key |  |

### Return type

[**FlagConfigApprovalRequestsResponse**](FlagConfigApprovalRequestsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_approval_request

> <ApprovalRequestResponse> post_approval_request(create_approval_request_request)

Create approval request

Create an approval request.  This endpoint currently supports creating an approval request for a flag across all environments with the following instructions:  - `addVariation` - `removeVariation` - `updateVariation` - `updateDefaultVariation`  For details on using these instructions, read [Update feature flag](/tag/Feature-flags#operation/patchFeatureFlag).  To create an approval for a flag specific to an environment, use [Create approval request for a flag](/tag/Approvals#operation/postApprovalRequestForFlag). 

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

api_instance = LaunchDarklyApi::ApprovalsApi.new
create_approval_request_request = LaunchDarklyApi::CreateApprovalRequestRequest.new({resource_id: 'resource_id_example', description: 'Requesting to update targeting', instructions: [{ key: 3.56}]}) # CreateApprovalRequestRequest | 

begin
  # Create approval request
  result = api_instance.post_approval_request(create_approval_request_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->post_approval_request: #{e}"
end
```

#### Using the post_approval_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApprovalRequestResponse>, Integer, Hash)> post_approval_request_with_http_info(create_approval_request_request)

```ruby
begin
  # Create approval request
  data, status_code, headers = api_instance.post_approval_request_with_http_info(create_approval_request_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApprovalRequestResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->post_approval_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_approval_request_request** | [**CreateApprovalRequestRequest**](CreateApprovalRequestRequest.md) |  |  |

### Return type

[**ApprovalRequestResponse**](ApprovalRequestResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_approval_request_apply

> <ApprovalRequestResponse> post_approval_request_apply(id, post_approval_request_apply_request)

Apply approval request

Apply an approval request that has been approved.

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

api_instance = LaunchDarklyApi::ApprovalsApi.new
id = 'id_example' # String | The feature flag approval request ID
post_approval_request_apply_request = LaunchDarklyApi::PostApprovalRequestApplyRequest.new # PostApprovalRequestApplyRequest | 

begin
  # Apply approval request
  result = api_instance.post_approval_request_apply(id, post_approval_request_apply_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->post_approval_request_apply: #{e}"
end
```

#### Using the post_approval_request_apply_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApprovalRequestResponse>, Integer, Hash)> post_approval_request_apply_with_http_info(id, post_approval_request_apply_request)

```ruby
begin
  # Apply approval request
  data, status_code, headers = api_instance.post_approval_request_apply_with_http_info(id, post_approval_request_apply_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApprovalRequestResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->post_approval_request_apply_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The feature flag approval request ID |  |
| **post_approval_request_apply_request** | [**PostApprovalRequestApplyRequest**](PostApprovalRequestApplyRequest.md) |  |  |

### Return type

[**ApprovalRequestResponse**](ApprovalRequestResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_approval_request_apply_for_flag

> <FlagConfigApprovalRequestResponse> post_approval_request_apply_for_flag(project_key, feature_flag_key, environment_key, id, post_approval_request_apply_request)

Apply approval request for a flag

Apply an approval request that has been approved.

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

api_instance = LaunchDarklyApi::ApprovalsApi.new
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key
environment_key = 'environment_key_example' # String | The environment key
id = 'id_example' # String | The feature flag approval request ID
post_approval_request_apply_request = LaunchDarklyApi::PostApprovalRequestApplyRequest.new # PostApprovalRequestApplyRequest | 

begin
  # Apply approval request for a flag
  result = api_instance.post_approval_request_apply_for_flag(project_key, feature_flag_key, environment_key, id, post_approval_request_apply_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->post_approval_request_apply_for_flag: #{e}"
end
```

#### Using the post_approval_request_apply_for_flag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlagConfigApprovalRequestResponse>, Integer, Hash)> post_approval_request_apply_for_flag_with_http_info(project_key, feature_flag_key, environment_key, id, post_approval_request_apply_request)

```ruby
begin
  # Apply approval request for a flag
  data, status_code, headers = api_instance.post_approval_request_apply_for_flag_with_http_info(project_key, feature_flag_key, environment_key, id, post_approval_request_apply_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlagConfigApprovalRequestResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->post_approval_request_apply_for_flag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag key |  |
| **environment_key** | **String** | The environment key |  |
| **id** | **String** | The feature flag approval request ID |  |
| **post_approval_request_apply_request** | [**PostApprovalRequestApplyRequest**](PostApprovalRequestApplyRequest.md) |  |  |

### Return type

[**FlagConfigApprovalRequestResponse**](FlagConfigApprovalRequestResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_approval_request_for_flag

> <FlagConfigApprovalRequestResponse> post_approval_request_for_flag(project_key, feature_flag_key, environment_key, create_flag_config_approval_request_request)

Create approval request for a flag

Create an approval request for a feature flag.

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

api_instance = LaunchDarklyApi::ApprovalsApi.new
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key
environment_key = 'environment_key_example' # String | The environment key
create_flag_config_approval_request_request = LaunchDarklyApi::CreateFlagConfigApprovalRequestRequest.new({description: 'Requesting to update targeting', instructions: [{ key: 3.56}]}) # CreateFlagConfigApprovalRequestRequest | 

begin
  # Create approval request for a flag
  result = api_instance.post_approval_request_for_flag(project_key, feature_flag_key, environment_key, create_flag_config_approval_request_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->post_approval_request_for_flag: #{e}"
end
```

#### Using the post_approval_request_for_flag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlagConfigApprovalRequestResponse>, Integer, Hash)> post_approval_request_for_flag_with_http_info(project_key, feature_flag_key, environment_key, create_flag_config_approval_request_request)

```ruby
begin
  # Create approval request for a flag
  data, status_code, headers = api_instance.post_approval_request_for_flag_with_http_info(project_key, feature_flag_key, environment_key, create_flag_config_approval_request_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlagConfigApprovalRequestResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->post_approval_request_for_flag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag key |  |
| **environment_key** | **String** | The environment key |  |
| **create_flag_config_approval_request_request** | [**CreateFlagConfigApprovalRequestRequest**](CreateFlagConfigApprovalRequestRequest.md) |  |  |

### Return type

[**FlagConfigApprovalRequestResponse**](FlagConfigApprovalRequestResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_approval_request_review

> <ApprovalRequestResponse> post_approval_request_review(id, post_approval_request_review_request)

Review approval request

Review an approval request by approving or denying changes.

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

api_instance = LaunchDarklyApi::ApprovalsApi.new
id = 'id_example' # String | The approval request ID
post_approval_request_review_request = LaunchDarklyApi::PostApprovalRequestReviewRequest.new # PostApprovalRequestReviewRequest | 

begin
  # Review approval request
  result = api_instance.post_approval_request_review(id, post_approval_request_review_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->post_approval_request_review: #{e}"
end
```

#### Using the post_approval_request_review_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApprovalRequestResponse>, Integer, Hash)> post_approval_request_review_with_http_info(id, post_approval_request_review_request)

```ruby
begin
  # Review approval request
  data, status_code, headers = api_instance.post_approval_request_review_with_http_info(id, post_approval_request_review_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApprovalRequestResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->post_approval_request_review_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The approval request ID |  |
| **post_approval_request_review_request** | [**PostApprovalRequestReviewRequest**](PostApprovalRequestReviewRequest.md) |  |  |

### Return type

[**ApprovalRequestResponse**](ApprovalRequestResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_approval_request_review_for_flag

> <FlagConfigApprovalRequestResponse> post_approval_request_review_for_flag(project_key, feature_flag_key, environment_key, id, post_approval_request_review_request)

Review approval request for a flag

Review an approval request by approving or denying changes.

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

api_instance = LaunchDarklyApi::ApprovalsApi.new
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key
environment_key = 'environment_key_example' # String | The environment key
id = 'id_example' # String | The feature flag approval request ID
post_approval_request_review_request = LaunchDarklyApi::PostApprovalRequestReviewRequest.new # PostApprovalRequestReviewRequest | 

begin
  # Review approval request for a flag
  result = api_instance.post_approval_request_review_for_flag(project_key, feature_flag_key, environment_key, id, post_approval_request_review_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->post_approval_request_review_for_flag: #{e}"
end
```

#### Using the post_approval_request_review_for_flag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlagConfigApprovalRequestResponse>, Integer, Hash)> post_approval_request_review_for_flag_with_http_info(project_key, feature_flag_key, environment_key, id, post_approval_request_review_request)

```ruby
begin
  # Review approval request for a flag
  data, status_code, headers = api_instance.post_approval_request_review_for_flag_with_http_info(project_key, feature_flag_key, environment_key, id, post_approval_request_review_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlagConfigApprovalRequestResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->post_approval_request_review_for_flag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag key |  |
| **environment_key** | **String** | The environment key |  |
| **id** | **String** | The feature flag approval request ID |  |
| **post_approval_request_review_request** | [**PostApprovalRequestReviewRequest**](PostApprovalRequestReviewRequest.md) |  |  |

### Return type

[**FlagConfigApprovalRequestResponse**](FlagConfigApprovalRequestResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_flag_copy_config_approval_request

> <FlagConfigApprovalRequestResponse> post_flag_copy_config_approval_request(project_key, feature_flag_key, environment_key, create_copy_flag_config_approval_request_request)

Create approval request to copy flag configurations across environments

Create an approval request to copy a feature flag's configuration across environments.

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

api_instance = LaunchDarklyApi::ApprovalsApi.new
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key
environment_key = 'environment_key_example' # String | The environment key for the target environment
create_copy_flag_config_approval_request_request = LaunchDarklyApi::CreateCopyFlagConfigApprovalRequestRequest.new({description: 'copy flag settings to another environment', source: LaunchDarklyApi::SourceFlag.new({key: 'environment-key-123abc'})}) # CreateCopyFlagConfigApprovalRequestRequest | 

begin
  # Create approval request to copy flag configurations across environments
  result = api_instance.post_flag_copy_config_approval_request(project_key, feature_flag_key, environment_key, create_copy_flag_config_approval_request_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->post_flag_copy_config_approval_request: #{e}"
end
```

#### Using the post_flag_copy_config_approval_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlagConfigApprovalRequestResponse>, Integer, Hash)> post_flag_copy_config_approval_request_with_http_info(project_key, feature_flag_key, environment_key, create_copy_flag_config_approval_request_request)

```ruby
begin
  # Create approval request to copy flag configurations across environments
  data, status_code, headers = api_instance.post_flag_copy_config_approval_request_with_http_info(project_key, feature_flag_key, environment_key, create_copy_flag_config_approval_request_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlagConfigApprovalRequestResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsApi->post_flag_copy_config_approval_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag key |  |
| **environment_key** | **String** | The environment key for the target environment |  |
| **create_copy_flag_config_approval_request_request** | [**CreateCopyFlagConfigApprovalRequestRequest**](CreateCopyFlagConfigApprovalRequestRequest.md) |  |  |

### Return type

[**FlagConfigApprovalRequestResponse**](FlagConfigApprovalRequestResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

