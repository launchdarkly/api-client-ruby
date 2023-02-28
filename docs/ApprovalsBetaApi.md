# LaunchDarklyApi::ApprovalsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_approval_request**](ApprovalsBetaApi.md#get_approval_request) | **GET** /api/v2/approval-requests/{id} | Get approval request |
| [**get_approval_requests**](ApprovalsBetaApi.md#get_approval_requests) | **GET** /api/v2/approval-requests | List approval requests |


## get_approval_request

> <ExpandableApprovalRequestResponse> get_approval_request(id, opts)

Get approval request

Get an approval request by approval request ID.  ### Expanding approval response  LaunchDarkly supports the `expand` query param to include additional fields in the response, with the following fields:  - `flag` includes the flag the approval request belongs to - `project` includes the project the approval request belongs to - `environment` includes the environment the approval request belongs to  For example, `expand=project,flag` includes the `project` and `flag` fields in the response. 

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

api_instance = LaunchDarklyApi::ApprovalsBetaApi.new
id = 'id_example' # String | The approval request ID
opts = {
  expand: 'expand_example' # String | A comma-separated list of fields to expand in the response. Supported fields are explained above.
}

begin
  # Get approval request
  result = api_instance.get_approval_request(id, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsBetaApi->get_approval_request: #{e}"
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
  puts "Error when calling ApprovalsBetaApi->get_approval_request_with_http_info: #{e}"
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

Get all approval requests.  ### Filtering approvals  LaunchDarkly supports the `filter` query param for filtering, with the following fields:  - `notifyMemberIds` filters for only approvals that are assigned to a member in the specified list. For example: `filter=notifyMemberIds anyOf [\"memberId1\", \"memberId2\"]`. - `requestorId` filters for only approvals that correspond to the ID of the member who requested the approval. For example: `filter=requestorId equals 457034721476302714390214`. - `projectKey` filters for only approvals that correspond to the specified project key. For example: `filter=projectKey equals my-project`. - `reviewStatus` filters for only approvals which correspond to the review status in the specified list. The possible values are `approved`, `declined`, and `pending`. For example: `filter=reviewStatus anyOf [\"pending\", \"approved\"]`. - `status` filters for only approvals which correspond to the status in the specified list. The possible values are `pending`, `scheduled`, `failed`, and `completed`. For example: `filter=status anyOf [\"pending\", \"scheduled\"]`.  You can also apply multiple filters at once. For example, setting `filter=projectKey equals my-project, reviewStatus anyOf [\"pending\",\"approved\"]` matches approval requests which correspond to the `my-project` project key, and a review status of either `pending` or `approved`.  ### Expanding approval response  LaunchDarkly supports the `expand` query param to include additional fields in the response, with the following fields:  - `flag` includes the flag the approval request belongs to - `project` includes the project the approval request belongs to - `environment` includes the environment the approval request belongs to  For example, `expand=project,flag` includes the `project` and `flag` fields in the response. 

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

api_instance = LaunchDarklyApi::ApprovalsBetaApi.new
opts = {
  filter: 'filter_example', # String | A comma-separated list of filters. Each filter is of the form `field operator value`. Supported fields are explained above.
  expand: 'expand_example', # String | A comma-separated list of fields to expand in the response. Supported fields are explained above.
  limit: 789, # Integer | The number of approvals to return. Defaults to -1, which returns all approvals.
  offset: 789 # Integer | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
}

begin
  # List approval requests
  result = api_instance.get_approval_requests(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsBetaApi->get_approval_requests: #{e}"
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
  puts "Error when calling ApprovalsBetaApi->get_approval_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | A comma-separated list of filters. Each filter is of the form &#x60;field operator value&#x60;. Supported fields are explained above. | [optional] |
| **expand** | **String** | A comma-separated list of fields to expand in the response. Supported fields are explained above. | [optional] |
| **limit** | **Integer** | The number of approvals to return. Defaults to -1, which returns all approvals. | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an offset of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |

### Return type

[**ExpandableApprovalRequestsResponse**](ExpandableApprovalRequestsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

