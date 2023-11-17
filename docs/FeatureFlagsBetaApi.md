# LaunchDarklyApi::FeatureFlagsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_dependent_flags**](FeatureFlagsBetaApi.md#get_dependent_flags) | **GET** /api/v2/flags/{projectKey}/{featureFlagKey}/dependent-flags | List dependent feature flags |
| [**get_dependent_flags_by_env**](FeatureFlagsBetaApi.md#get_dependent_flags_by_env) | **GET** /api/v2/flags/{projectKey}/{environmentKey}/{featureFlagKey}/dependent-flags | List dependent feature flags by environment |
| [**post_migration_safety_issues**](FeatureFlagsBetaApi.md#post_migration_safety_issues) | **POST** /api/v2/projects/{projectKey}/flags/{flagKey}/environments/{environmentKey}/migration-safety-issues | Get migration safety issues |


## get_dependent_flags

> <MultiEnvironmentDependentFlags> get_dependent_flags(project_key, feature_flag_key)

List dependent feature flags

> ### Flag prerequisites is an Enterprise feature > > Flag prerequisites is available to customers on an Enterprise plan. To learn more, [read about our pricing](https://launchdarkly.com/pricing/). To upgrade your plan, [contact Sales](https://launchdarkly.com/contact-sales/).  List dependent flags across all environments for the flag specified in the path parameters. A dependent flag is a flag that uses another flag as a prerequisite. To learn more, read [Flag prerequisites](https://docs.launchdarkly.com/home/targeting-flags/prerequisites). 

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

api_instance = LaunchDarklyApi::FeatureFlagsBetaApi.new
project_key = 'project_key_example' # String | The project key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key

begin
  # List dependent feature flags
  result = api_instance.get_dependent_flags(project_key, feature_flag_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsBetaApi->get_dependent_flags: #{e}"
end
```

#### Using the get_dependent_flags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiEnvironmentDependentFlags>, Integer, Hash)> get_dependent_flags_with_http_info(project_key, feature_flag_key)

```ruby
begin
  # List dependent feature flags
  data, status_code, headers = api_instance.get_dependent_flags_with_http_info(project_key, feature_flag_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiEnvironmentDependentFlags>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsBetaApi->get_dependent_flags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **feature_flag_key** | **String** | The feature flag key |  |

### Return type

[**MultiEnvironmentDependentFlags**](MultiEnvironmentDependentFlags.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dependent_flags_by_env

> <DependentFlagsByEnvironment> get_dependent_flags_by_env(project_key, environment_key, feature_flag_key)

List dependent feature flags by environment

> ### Flag prerequisites is an Enterprise feature > > Flag prerequisites is available to customers on an Enterprise plan. To learn more, [read about our pricing](https://launchdarkly.com/pricing/). To upgrade your plan, [contact Sales](https://launchdarkly.com/contact-sales/).  List dependent flags across all environments for the flag specified in the path parameters. A dependent flag is a flag that uses another flag as a prerequisite. To learn more, read [Flag prerequisites](https://docs.launchdarkly.com/home/targeting-flags/prerequisites). 

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

api_instance = LaunchDarklyApi::FeatureFlagsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
feature_flag_key = 'feature_flag_key_example' # String | The feature flag key

begin
  # List dependent feature flags by environment
  result = api_instance.get_dependent_flags_by_env(project_key, environment_key, feature_flag_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsBetaApi->get_dependent_flags_by_env: #{e}"
end
```

#### Using the get_dependent_flags_by_env_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DependentFlagsByEnvironment>, Integer, Hash)> get_dependent_flags_by_env_with_http_info(project_key, environment_key, feature_flag_key)

```ruby
begin
  # List dependent feature flags by environment
  data, status_code, headers = api_instance.get_dependent_flags_by_env_with_http_info(project_key, environment_key, feature_flag_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DependentFlagsByEnvironment>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsBetaApi->get_dependent_flags_by_env_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **feature_flag_key** | **String** | The feature flag key |  |

### Return type

[**DependentFlagsByEnvironment**](DependentFlagsByEnvironment.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_migration_safety_issues

> <Array<MigrationSafetyIssueRep>> post_migration_safety_issues(project_key, flag_key, environment_key, flag_sempatch)

Get migration safety issues

Returns the migration safety issues that are associated with the POSTed flag patch. The patch must use the semantic patch format for updating feature flags.

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

api_instance = LaunchDarklyApi::FeatureFlagsBetaApi.new
project_key = 'project_key_example' # String | The project key
flag_key = 'flag_key_example' # String | The migration flag key
environment_key = 'environment_key_example' # String | The environment key
flag_sempatch = LaunchDarklyApi::FlagSempatch.new({instructions: [{ key: 3.56}]}) # FlagSempatch | 

begin
  # Get migration safety issues
  result = api_instance.post_migration_safety_issues(project_key, flag_key, environment_key, flag_sempatch)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsBetaApi->post_migration_safety_issues: #{e}"
end
```

#### Using the post_migration_safety_issues_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MigrationSafetyIssueRep>>, Integer, Hash)> post_migration_safety_issues_with_http_info(project_key, flag_key, environment_key, flag_sempatch)

```ruby
begin
  # Get migration safety issues
  data, status_code, headers = api_instance.post_migration_safety_issues_with_http_info(project_key, flag_key, environment_key, flag_sempatch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MigrationSafetyIssueRep>>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling FeatureFlagsBetaApi->post_migration_safety_issues_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **flag_key** | **String** | The migration flag key |  |
| **environment_key** | **String** | The environment key |  |
| **flag_sempatch** | [**FlagSempatch**](FlagSempatch.md) |  |  |

### Return type

[**Array&lt;MigrationSafetyIssueRep&gt;**](MigrationSafetyIssueRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

