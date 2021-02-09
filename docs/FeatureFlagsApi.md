# LaunchDarklyApi::FeatureFlagsApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**copy_feature_flag**](FeatureFlagsApi.md#copy_feature_flag) | **POST** /flags/{projectKey}/{featureFlagKey}/copy | Copies the feature flag configuration from one environment to the same feature flag in another environment.
[**delete_approval_request**](FeatureFlagsApi.md#delete_approval_request) | **DELETE** /projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{approvalRequestId} | Delete an approval request for a feature flag config
[**delete_feature_flag**](FeatureFlagsApi.md#delete_feature_flag) | **DELETE** /flags/{projectKey}/{featureFlagKey} | Delete a feature flag in all environments. Be careful-- only delete feature flags that are no longer being used by your application.
[**delete_flag_config_scheduled_changes**](FeatureFlagsApi.md#delete_flag_config_scheduled_changes) | **DELETE** /projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes/{scheduledChangeId} | Delete a scheduled change on a feature flag in an environment.
[**get_approval_request**](FeatureFlagsApi.md#get_approval_request) | **GET** /projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{approvalRequestId} | Get a single approval request for a feature flag config
[**get_approval_requests**](FeatureFlagsApi.md#get_approval_requests) | **GET** /projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests | Get all approval requests for a feature flag config
[**get_expiring_user_targets**](FeatureFlagsApi.md#get_expiring_user_targets) | **GET** /flags/{projectKey}/{featureFlagKey}/expiring-user-targets/{environmentKey} | Get expiring user targets for feature flag
[**get_feature_flag**](FeatureFlagsApi.md#get_feature_flag) | **GET** /flags/{projectKey}/{featureFlagKey} | Get a single feature flag by key.
[**get_feature_flag_status**](FeatureFlagsApi.md#get_feature_flag_status) | **GET** /flag-statuses/{projectKey}/{environmentKey}/{featureFlagKey} | Get the status for a particular feature flag.
[**get_feature_flag_status_across_environments**](FeatureFlagsApi.md#get_feature_flag_status_across_environments) | **GET** /flag-status/{projectKey}/{featureFlagKey} | Get the status for a particular feature flag across environments
[**get_feature_flag_statuses**](FeatureFlagsApi.md#get_feature_flag_statuses) | **GET** /flag-statuses/{projectKey}/{environmentKey} | Get a list of statuses for all feature flags. The status includes the last time the feature flag was requested, as well as the state of the flag.
[**get_feature_flags**](FeatureFlagsApi.md#get_feature_flags) | **GET** /flags/{projectKey} | Get a list of all features in the given project.
[**get_flag_config_scheduled_change**](FeatureFlagsApi.md#get_flag_config_scheduled_change) | **GET** /projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes/{scheduledChangeId} | Get a scheduled change on a feature flag by id.
[**get_flag_config_scheduled_changes**](FeatureFlagsApi.md#get_flag_config_scheduled_changes) | **GET** /projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes | Get all scheduled workflows for a feature flag by key.
[**get_flag_config_scheduled_changes_conflicts**](FeatureFlagsApi.md#get_flag_config_scheduled_changes_conflicts) | **POST** /projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes-conflicts | Lists conflicts between the given instructions and any existing scheduled changes for the feature flag. The actual HTTP verb should be REPORT, not POST.
[**patch_expiring_user_targets**](FeatureFlagsApi.md#patch_expiring_user_targets) | **PATCH** /flags/{projectKey}/{featureFlagKey}/expiring-user-targets/{environmentKey} | Update, add, or delete expiring user targets on feature flag
[**patch_feature_flag**](FeatureFlagsApi.md#patch_feature_flag) | **PATCH** /flags/{projectKey}/{featureFlagKey} | Perform a partial update to a feature.
[**patch_flag_config_scheduled_change**](FeatureFlagsApi.md#patch_flag_config_scheduled_change) | **PATCH** /projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes/{scheduledChangeId} | Updates an existing scheduled-change on a feature flag in an environment.
[**post_apply_approval_request**](FeatureFlagsApi.md#post_apply_approval_request) | **POST** /projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{approvalRequestId}/apply | Apply approval request for a feature flag config
[**post_approval_request**](FeatureFlagsApi.md#post_approval_request) | **POST** /projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{approvalRequestId} | Create an approval request for a feature flag config
[**post_feature_flag**](FeatureFlagsApi.md#post_feature_flag) | **POST** /flags/{projectKey} | Creates a new feature flag.
[**post_flag_config_scheduled_changes**](FeatureFlagsApi.md#post_flag_config_scheduled_changes) | **POST** /projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/scheduled-changes | Creates a new scheduled change for a feature flag.
[**post_review_approval_request**](FeatureFlagsApi.md#post_review_approval_request) | **POST** /projects/{projectKey}/flags/{featureFlagKey}/environments/{environmentKey}/approval-requests/{approvalRequestId}/review | Review approval request for a feature flag config


# **copy_feature_flag**
> FeatureFlag copy_feature_flag(project_key, feature_flag_key, feature_flag_copy_body)

Copies the feature flag configuration from one environment to the same feature flag in another environment.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.

feature_flag_copy_body = LaunchDarklyApi::FeatureFlagCopyBody.new # FeatureFlagCopyBody | Copy feature flag configurations between environments.


begin
  #Copies the feature flag configuration from one environment to the same feature flag in another environment.
  result = api_instance.copy_feature_flag(project_key, feature_flag_key, feature_flag_copy_body)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->copy_feature_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **feature_flag_copy_body** | [**FeatureFlagCopyBody**](FeatureFlagCopyBody.md)| Copy feature flag configurations between environments. | 

### Return type

[**FeatureFlag**](FeatureFlag.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_approval_request**
> delete_approval_request(project_key, environment_key, feature_flag_key, approval_request_id, , opts)

Delete an approval request for a feature flag config

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.

approval_request_id = 'approval_request_id_example' # String | The approval request ID

opts = { 
  approval_request_config_body: LaunchDarklyApi::ApprovalRequestConfigBody.new # ApprovalRequestConfigBody | Create a new approval request
}

begin
  #Delete an approval request for a feature flag config
  api_instance.delete_approval_request(project_key, environment_key, feature_flag_key, approval_request_id, , opts)
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->delete_approval_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **approval_request_id** | **String**| The approval request ID | 
 **approval_request_config_body** | [**ApprovalRequestConfigBody**](ApprovalRequestConfigBody.md)| Create a new approval request | [optional] 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_feature_flag**
> delete_feature_flag(project_key, feature_flag_key, )

Delete a feature flag in all environments. Be careful-- only delete feature flags that are no longer being used by your application.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.


begin
  #Delete a feature flag in all environments. Be careful-- only delete feature flags that are no longer being used by your application.
  api_instance.delete_feature_flag(project_key, feature_flag_key, )
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->delete_feature_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_flag_config_scheduled_changes**
> delete_flag_config_scheduled_changes(project_key, feature_flag_key, environment_key, scheduled_change_id)

Delete a scheduled change on a feature flag in an environment.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

scheduled_change_id = 'scheduled_change_id_example' # String | The id of the scheduled change


begin
  #Delete a scheduled change on a feature flag in an environment.
  api_instance.delete_flag_config_scheduled_changes(project_key, feature_flag_key, environment_key, scheduled_change_id)
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->delete_flag_config_scheduled_changes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **scheduled_change_id** | **String**| The id of the scheduled change | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_approval_request**
> ApprovalRequests get_approval_request(project_key, feature_flag_key, environment_key, approval_request_id, )

Get a single approval request for a feature flag config

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

approval_request_id = 'approval_request_id_example' # String | The approval request ID


begin
  #Get a single approval request for a feature flag config
  result = api_instance.get_approval_request(project_key, feature_flag_key, environment_key, approval_request_id, )
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->get_approval_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **approval_request_id** | **String**| The approval request ID | 

### Return type

[**ApprovalRequests**](ApprovalRequests.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_approval_requests**
> ApprovalRequests get_approval_requests(project_key, feature_flag_key, environment_key, )

Get all approval requests for a feature flag config

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.


begin
  #Get all approval requests for a feature flag config
  result = api_instance.get_approval_requests(project_key, feature_flag_key, environment_key, )
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->get_approval_requests: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 

### Return type

[**ApprovalRequests**](ApprovalRequests.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_expiring_user_targets**
> UserTargetingExpirationForFlags get_expiring_user_targets(project_key, environment_key, feature_flag_key, )

Get expiring user targets for feature flag

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.


begin
  #Get expiring user targets for feature flag
  result = api_instance.get_expiring_user_targets(project_key, environment_key, feature_flag_key, )
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->get_expiring_user_targets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 

### Return type

[**UserTargetingExpirationForFlags**](UserTargetingExpirationForFlags.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_feature_flag**
> FeatureFlag get_feature_flag(project_key, feature_flag_key, , opts)

Get a single feature flag by key.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.

opts = { 
  env: ['env_example'] # Array<String> | By default, each feature will include configurations for each environment. You can filter environments with the env query parameter. For example, setting env=[\"production\"] will restrict the returned configurations to just your production environment.
}

begin
  #Get a single feature flag by key.
  result = api_instance.get_feature_flag(project_key, feature_flag_key, , opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->get_feature_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **env** | [**Array&lt;String&gt;**](String.md)| By default, each feature will include configurations for each environment. You can filter environments with the env query parameter. For example, setting env&#x3D;[\&quot;production\&quot;] will restrict the returned configurations to just your production environment. | [optional] 

### Return type

[**FeatureFlag**](FeatureFlag.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_feature_flag_status**
> FeatureFlagStatus get_feature_flag_status(project_key, environment_key, feature_flag_key, )

Get the status for a particular feature flag.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.


begin
  #Get the status for a particular feature flag.
  result = api_instance.get_feature_flag_status(project_key, environment_key, feature_flag_key, )
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->get_feature_flag_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 

### Return type

[**FeatureFlagStatus**](FeatureFlagStatus.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_feature_flag_status_across_environments**
> FeatureFlagStatusAcrossEnvironments get_feature_flag_status_across_environments(project_key, feature_flag_key, )

Get the status for a particular feature flag across environments

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.


begin
  #Get the status for a particular feature flag across environments
  result = api_instance.get_feature_flag_status_across_environments(project_key, feature_flag_key, )
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->get_feature_flag_status_across_environments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 

### Return type

[**FeatureFlagStatusAcrossEnvironments**](FeatureFlagStatusAcrossEnvironments.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_feature_flag_statuses**
> FeatureFlagStatuses get_feature_flag_statuses(project_key, environment_key, )

Get a list of statuses for all feature flags. The status includes the last time the feature flag was requested, as well as the state of the flag.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.


begin
  #Get a list of statuses for all feature flags. The status includes the last time the feature flag was requested, as well as the state of the flag.
  result = api_instance.get_feature_flag_statuses(project_key, environment_key, )
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->get_feature_flag_statuses: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 

### Return type

[**FeatureFlagStatuses**](FeatureFlagStatuses.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_feature_flags**
> FeatureFlags get_feature_flags(project_key, , opts)

Get a list of all features in the given project.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

opts = { 
  env: ['env_example'] # Array<String> | By default, each feature will include configurations for each environment. You can filter environments with the env query parameter. For example, setting env=[\"production\"] will restrict the returned configurations to just your production environment.
  summary: true, # BOOLEAN | By default in api version >= 1, flags will _not_ include their list of prerequisites, targets or rules.  Set summary=0 to include these fields for each flag returned.
  archived: true, # BOOLEAN | When set to 1, only archived flags will be included in the list of flags returned.  By default, archived flags are not included in the list of flags.
  limit: 8.14, # Float | The number of objects to return. Defaults to -1, which returns everything.
  offset: 8.14, # Float | Where to start in the list. This is for use with pagination. For example, an offset of 10 would skip the first 10 items and then return the next limit items.
  filter: 'filter_example', # String | A comma-separated list of filters. Each filter is of the form field:value.
  sort: 'sort_example' # String | A comma-separated list of fields to sort by. A field prefixed by a - will be sorted in descending order.
  tag: 'tag_example' # String | Filter by tag. A tag can be used to group flags across projects.
}

begin
  #Get a list of all features in the given project.
  result = api_instance.get_feature_flags(project_key, , opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->get_feature_flags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **env** | [**Array&lt;String&gt;**](String.md)| By default, each feature will include configurations for each environment. You can filter environments with the env query parameter. For example, setting env&#x3D;[\&quot;production\&quot;] will restrict the returned configurations to just your production environment. | [optional] 
 **summary** | **BOOLEAN**| By default in api version &gt;&#x3D; 1, flags will _not_ include their list of prerequisites, targets or rules.  Set summary&#x3D;0 to include these fields for each flag returned. | [optional] 
 **archived** | **BOOLEAN**| When set to 1, only archived flags will be included in the list of flags returned.  By default, archived flags are not included in the list of flags. | [optional] 
 **limit** | **Float**| The number of objects to return. Defaults to -1, which returns everything. | [optional] 
 **offset** | **Float**| Where to start in the list. This is for use with pagination. For example, an offset of 10 would skip the first 10 items and then return the next limit items. | [optional] 
 **filter** | **String**| A comma-separated list of filters. Each filter is of the form field:value. | [optional] 
 **sort** | **String**| A comma-separated list of fields to sort by. A field prefixed by a - will be sorted in descending order. | [optional] 
 **tag** | **String**| Filter by tag. A tag can be used to group flags across projects. | [optional] 

### Return type

[**FeatureFlags**](FeatureFlags.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_flag_config_scheduled_change**
> FeatureFlagScheduledChange get_flag_config_scheduled_change(project_key, feature_flag_key, environment_key, scheduled_change_id)

Get a scheduled change on a feature flag by id.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

scheduled_change_id = 'scheduled_change_id_example' # String | The id of the scheduled change


begin
  #Get a scheduled change on a feature flag by id.
  result = api_instance.get_flag_config_scheduled_change(project_key, feature_flag_key, environment_key, scheduled_change_id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->get_flag_config_scheduled_change: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **scheduled_change_id** | **String**| The id of the scheduled change | 

### Return type

[**FeatureFlagScheduledChange**](FeatureFlagScheduledChange.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_flag_config_scheduled_changes**
> FeatureFlagScheduledChanges get_flag_config_scheduled_changes(project_key, feature_flag_key, environment_key, )

Get all scheduled workflows for a feature flag by key.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.


begin
  #Get all scheduled workflows for a feature flag by key.
  result = api_instance.get_flag_config_scheduled_changes(project_key, feature_flag_key, environment_key, )
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->get_flag_config_scheduled_changes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 

### Return type

[**FeatureFlagScheduledChanges**](FeatureFlagScheduledChanges.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_flag_config_scheduled_changes_conflicts**
> FeatureFlagScheduledChangesConflicts get_flag_config_scheduled_changes_conflicts(project_key, feature_flag_key, environment_key, flag_config_scheduled_changes_conflicts_body)

Lists conflicts between the given instructions and any existing scheduled changes for the feature flag. The actual HTTP verb should be REPORT, not POST.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

flag_config_scheduled_changes_conflicts_body = LaunchDarklyApi::FlagConfigScheduledChangesConflictsBody.new # FlagConfigScheduledChangesConflictsBody | Used to determine if a semantic patch will result in conflicts with scheduled changes on a feature flag.


begin
  #Lists conflicts between the given instructions and any existing scheduled changes for the feature flag. The actual HTTP verb should be REPORT, not POST.
  result = api_instance.get_flag_config_scheduled_changes_conflicts(project_key, feature_flag_key, environment_key, flag_config_scheduled_changes_conflicts_body)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->get_flag_config_scheduled_changes_conflicts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **flag_config_scheduled_changes_conflicts_body** | [**FlagConfigScheduledChangesConflictsBody**](FlagConfigScheduledChangesConflictsBody.md)| Used to determine if a semantic patch will result in conflicts with scheduled changes on a feature flag. | 

### Return type

[**FeatureFlagScheduledChangesConflicts**](FeatureFlagScheduledChangesConflicts.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_expiring_user_targets**
> UserTargetingExpirationForFlags patch_expiring_user_targets(project_key, environment_key, feature_flag_key, semantic_patch_with_comment)

Update, add, or delete expiring user targets on feature flag

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.

semantic_patch_with_comment = nil # Object | Requires a Semantic Patch representation of the desired changes to the resource. 'https://apidocs.launchdarkly.com/reference#updates-via-semantic-patches'. The addition of comments is also supported.


begin
  #Update, add, or delete expiring user targets on feature flag
  result = api_instance.patch_expiring_user_targets(project_key, environment_key, feature_flag_key, semantic_patch_with_comment)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->patch_expiring_user_targets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **semantic_patch_with_comment** | **Object**| Requires a Semantic Patch representation of the desired changes to the resource. &#39;https://apidocs.launchdarkly.com/reference#updates-via-semantic-patches&#39;. The addition of comments is also supported. | 

### Return type

[**UserTargetingExpirationForFlags**](UserTargetingExpirationForFlags.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_feature_flag**
> FeatureFlag patch_feature_flag(project_key, feature_flag_key, patch_comment)

Perform a partial update to a feature.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.

patch_comment = LaunchDarklyApi::PatchComment.new # PatchComment | Requires a JSON Patch representation of the desired changes to the project, and an optional comment. 'http://jsonpatch.com/' Feature flag patches also support JSON Merge Patch format. 'https://tools.ietf.org/html/rfc7386' The addition of comments is also supported.


begin
  #Perform a partial update to a feature.
  result = api_instance.patch_feature_flag(project_key, feature_flag_key, patch_comment)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->patch_feature_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **patch_comment** | [**PatchComment**](PatchComment.md)| Requires a JSON Patch representation of the desired changes to the project, and an optional comment. &#39;http://jsonpatch.com/&#39; Feature flag patches also support JSON Merge Patch format. &#39;https://tools.ietf.org/html/rfc7386&#39; The addition of comments is also supported. | 

### Return type

[**FeatureFlag**](FeatureFlag.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_flag_config_scheduled_change**
> FeatureFlagScheduledChange patch_flag_config_scheduled_change(project_key, feature_flag_key, flag_config_scheduled_changes_patch_body, environment_key, scheduled_change_id)

Updates an existing scheduled-change on a feature flag in an environment.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.

flag_config_scheduled_changes_patch_body = LaunchDarklyApi::FlagConfigScheduledChangesPatchBody.new # FlagConfigScheduledChangesPatchBody | Update scheduled changes on a feature flag.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

scheduled_change_id = 'scheduled_change_id_example' # String | The id of the scheduled change


begin
  #Updates an existing scheduled-change on a feature flag in an environment.
  result = api_instance.patch_flag_config_scheduled_change(project_key, feature_flag_key, flag_config_scheduled_changes_patch_body, environment_key, scheduled_change_id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->patch_flag_config_scheduled_change: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **flag_config_scheduled_changes_patch_body** | [**FlagConfigScheduledChangesPatchBody**](FlagConfigScheduledChangesPatchBody.md)| Update scheduled changes on a feature flag. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **scheduled_change_id** | **String**| The id of the scheduled change | 

### Return type

[**FeatureFlagScheduledChange**](FeatureFlagScheduledChange.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_apply_approval_request**
> ApprovalRequests post_apply_approval_request(project_key, feature_flag_key, environment_key, approval_request_id, approval_request_apply_config_body)

Apply approval request for a feature flag config

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

approval_request_id = 'approval_request_id_example' # String | The approval request ID

approval_request_apply_config_body = LaunchDarklyApi::ApprovalRequestApplyConfigBody.new # ApprovalRequestApplyConfigBody | Apply an approval request


begin
  #Apply approval request for a feature flag config
  result = api_instance.post_apply_approval_request(project_key, feature_flag_key, environment_key, approval_request_id, approval_request_apply_config_body)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->post_apply_approval_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **approval_request_id** | **String**| The approval request ID | 
 **approval_request_apply_config_body** | [**ApprovalRequestApplyConfigBody**](ApprovalRequestApplyConfigBody.md)| Apply an approval request | 

### Return type

[**ApprovalRequests**](ApprovalRequests.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_approval_request**
> ApprovalRequest post_approval_request(project_key, feature_flag_key, environment_key, approval_request_id, , opts)

Create an approval request for a feature flag config

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

approval_request_id = 'approval_request_id_example' # String | The approval request ID

opts = { 
  approval_request_config_body: LaunchDarklyApi::ApprovalRequestConfigBody.new # ApprovalRequestConfigBody | Create a new approval request
}

begin
  #Create an approval request for a feature flag config
  result = api_instance.post_approval_request(project_key, feature_flag_key, environment_key, approval_request_id, , opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->post_approval_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **approval_request_id** | **String**| The approval request ID | 
 **approval_request_config_body** | [**ApprovalRequestConfigBody**](ApprovalRequestConfigBody.md)| Create a new approval request | [optional] 

### Return type

[**ApprovalRequest**](ApprovalRequest.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_feature_flag**
> FeatureFlag post_feature_flag(project_key, feature_flag_body, opts)

Creates a new feature flag.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_body = LaunchDarklyApi::FeatureFlagBody.new # FeatureFlagBody | Create a new feature flag.

opts = { 
  clone: 'clone_example' # String | The key of the feature flag to be cloned. The key identifies the flag in your code.  For example, setting clone=flagKey will copy the full targeting configuration for all environments (including on/off state) from the original flag to the new flag.
}

begin
  #Creates a new feature flag.
  result = api_instance.post_feature_flag(project_key, feature_flag_body, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->post_feature_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_body** | [**FeatureFlagBody**](FeatureFlagBody.md)| Create a new feature flag. | 
 **clone** | **String**| The key of the feature flag to be cloned. The key identifies the flag in your code.  For example, setting clone&#x3D;flagKey will copy the full targeting configuration for all environments (including on/off state) from the original flag to the new flag. | [optional] 

### Return type

[**FeatureFlag**](FeatureFlag.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_flag_config_scheduled_changes**
> FeatureFlagScheduledChange post_flag_config_scheduled_changes(project_key, flag_config_scheduled_changes_post_body, feature_flag_key, environment_key, )

Creates a new scheduled change for a feature flag.

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

flag_config_scheduled_changes_post_body = LaunchDarklyApi::FlagConfigScheduledChangesPostBody.new # FlagConfigScheduledChangesPostBody | Create scheduled changes on a feature flag.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.


begin
  #Creates a new scheduled change for a feature flag.
  result = api_instance.post_flag_config_scheduled_changes(project_key, flag_config_scheduled_changes_post_body, feature_flag_key, environment_key, )
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->post_flag_config_scheduled_changes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **flag_config_scheduled_changes_post_body** | [**FlagConfigScheduledChangesPostBody**](FlagConfigScheduledChangesPostBody.md)| Create scheduled changes on a feature flag. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 

### Return type

[**FeatureFlagScheduledChange**](FeatureFlagScheduledChange.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_review_approval_request**
> ApprovalRequests post_review_approval_request(project_key, feature_flag_key, environment_key, approval_request_id, approval_request_review_config_body)

Review approval request for a feature flag config

### Example
```ruby
# load the gem
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = 'project_key_example' # String | The project key, used to tie the flags together under one project so they can be managed together.

feature_flag_key = 'feature_flag_key_example' # String | The feature flag's key. The key identifies the flag in your code.

environment_key = 'environment_key_example' # String | The environment key, used to tie together flag configuration and users under one environment so they can be managed together.

approval_request_id = 'approval_request_id_example' # String | The approval request ID

approval_request_review_config_body = LaunchDarklyApi::ApprovalRequestReviewConfigBody.new # ApprovalRequestReviewConfigBody | Review an approval request


begin
  #Review approval request for a feature flag config
  result = api_instance.post_review_approval_request(project_key, feature_flag_key, environment_key, approval_request_id, approval_request_review_config_body)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling FeatureFlagsApi->post_review_approval_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **String**| The project key, used to tie the flags together under one project so they can be managed together. | 
 **feature_flag_key** | **String**| The feature flag&#39;s key. The key identifies the flag in your code. | 
 **environment_key** | **String**| The environment key, used to tie together flag configuration and users under one environment so they can be managed together. | 
 **approval_request_id** | **String**| The approval request ID | 
 **approval_request_review_config_body** | [**ApprovalRequestReviewConfigBody**](ApprovalRequestReviewConfigBody.md)| Review an approval request | 

### Return type

[**ApprovalRequests**](ApprovalRequests.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



