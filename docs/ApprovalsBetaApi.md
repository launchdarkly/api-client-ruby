# LaunchDarklyApi::ApprovalsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**patch_approval_request**](ApprovalsBetaApi.md#patch_approval_request) | **PATCH** /api/v2/approval-requests/{id} | Update approval request |
| [**patch_flag_config_approval_request**](ApprovalsBetaApi.md#patch_flag_config_approval_request) | **PATCH** /api/v2/projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{id} | Update flag approval request |


## patch_approval_request

> <FlagConfigApprovalRequestResponse> patch_approval_request(id)

Update approval request

Perform a partial update to an approval request. Updating an approval request uses the semantic patch format.  To make a semantic patch request, you must append `domain-model=launchdarkly.semanticpatch` to your `Content-Type` header. To learn more, read [Updates using semantic patch](/reference#updates-using-semantic-patch).  ### Instructions  Semantic patch requests support the following `kind` instruction for updating an approval request.  #### addReviewers  Adds the specified members and teams to the existing list of reviewers. You must include at least one of `notifyMemberIds` and `notifyTeamKeys`.  ##### Parameters  - `notifyMemberIds`: (Optional) List of member IDs. - `notifyTeamKeys`: (Optional) List of team keys.  Here's an example:  ```json {   \"instructions\": [{     \"kind\": \"addReviewers\",     \"notifyMemberIds\": [ \"user-key-123abc\", \"user-key-456def\" ],     \"notifyTeamKeys\": [ \"team-key-789abc\"]   }] } ``` 

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
id = 'id_example' # String | The approval ID

begin
  # Update approval request
  result = api_instance.patch_approval_request(id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsBetaApi->patch_approval_request: #{e}"
end
```

#### Using the patch_approval_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlagConfigApprovalRequestResponse>, Integer, Hash)> patch_approval_request_with_http_info(id)

```ruby
begin
  # Update approval request
  data, status_code, headers = api_instance.patch_approval_request_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlagConfigApprovalRequestResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsBetaApi->patch_approval_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The approval ID |  |

### Return type

[**FlagConfigApprovalRequestResponse**](FlagConfigApprovalRequestResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_flag_config_approval_request

> <FlagConfigApprovalRequestResponse> patch_flag_config_approval_request(project_key, feature_flag_key, environment_key, id)

Update flag approval request

Perform a partial update to an approval request. Updating an approval request uses the semantic patch format.  To make a semantic patch request, you must append `domain-model=launchdarkly.semanticpatch` to your `Content-Type` header. To learn more, read [Updates using semantic patch](/reference#updates-using-semantic-patch).  ### Instructions  Semantic patch requests support the following `kind` instruction for updating an approval request.  #### addReviewers  Adds the specified members and teams to the existing list of reviewers. You must include at least one of `notifyMemberIds` and `notifyTeamKeys`.  ##### Parameters  - `notifyMemberIds`: (Optional) List of member IDs. - `notifyTeamKeys`: (Optional) List of team keys. 

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
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key
environment_key = 'environment_key_example' # String | The environment key
id = 'id_example' # String | The approval ID

begin
  # Update flag approval request
  result = api_instance.patch_flag_config_approval_request(project_key, feature_flag_key, environment_key, id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsBetaApi->patch_flag_config_approval_request: #{e}"
end
```

#### Using the patch_flag_config_approval_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlagConfigApprovalRequestResponse>, Integer, Hash)> patch_flag_config_approval_request_with_http_info(project_key, feature_flag_key, environment_key, id)

```ruby
begin
  # Update flag approval request
  data, status_code, headers = api_instance.patch_flag_config_approval_request_with_http_info(project_key, feature_flag_key, environment_key, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlagConfigApprovalRequestResponse>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling ApprovalsBetaApi->patch_flag_config_approval_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag key |  |
| **environment_key** | **String** | The environment key |  |
| **id** | **String** | The approval ID |  |

### Return type

[**FlagConfigApprovalRequestResponse**](FlagConfigApprovalRequestResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

