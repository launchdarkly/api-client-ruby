# LaunchDarklyApi::HoldoutsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_all_holdouts**](HoldoutsBetaApi.md#get_all_holdouts) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/holdouts | Get all holdouts |
| [**get_holdout**](HoldoutsBetaApi.md#get_holdout) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/holdouts/{holdoutKey} | Get holdout |
| [**get_holdout_by_id**](HoldoutsBetaApi.md#get_holdout_by_id) | **GET** /api/v2/projects/{projectKey}/environments/{environmentKey}/holdouts/id/{holdoutId} | Get Holdout by Id |
| [**patch_holdout**](HoldoutsBetaApi.md#patch_holdout) | **PATCH** /api/v2/projects/{projectKey}/environments/{environmentKey}/holdouts/{holdoutKey} | Patch holdout |
| [**post_holdout**](HoldoutsBetaApi.md#post_holdout) | **POST** /api/v2/projects/{projectKey}/environments/{environmentKey}/holdouts | Create holdout |


## get_all_holdouts

> <HoldoutsCollectionRep> get_all_holdouts(project_key, environment_key, opts)

Get all holdouts

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

api_instance = LaunchDarklyApi::HoldoutsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
opts = {
  limit: 789, # Integer | The number of holdouts to return in the response. Defaults to 20
  offset: 789 # Integer | Where to start in the list. Use this with pagination. For example, an `offset` of 10 skips the first ten items and then returns the next items in the list, up to the query `limit`.
}

begin
  # Get all holdouts
  result = api_instance.get_all_holdouts(project_key, environment_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling HoldoutsBetaApi->get_all_holdouts: #{e}"
end
```

#### Using the get_all_holdouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HoldoutsCollectionRep>, Integer, Hash)> get_all_holdouts_with_http_info(project_key, environment_key, opts)

```ruby
begin
  # Get all holdouts
  data, status_code, headers = api_instance.get_all_holdouts_with_http_info(project_key, environment_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HoldoutsCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling HoldoutsBetaApi->get_all_holdouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **limit** | **Integer** | The number of holdouts to return in the response. Defaults to 20 | [optional] |
| **offset** | **Integer** | Where to start in the list. Use this with pagination. For example, an &#x60;offset&#x60; of 10 skips the first ten items and then returns the next items in the list, up to the query &#x60;limit&#x60;. | [optional] |

### Return type

[**HoldoutsCollectionRep**](HoldoutsCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_holdout

> <HoldoutDetailRep> get_holdout(project_key, environment_key, holdout_key, opts)

Get holdout

Get details about a holdout.  ### Expanding the holdout response  LaunchDarkly supports the following fields for expanding the \"Get holdout\" response. By default, these fields are **not** included in the response.  To expand the response, append the `expand` query parameter and add a comma-separated list with any of the following fields:  - `draftIteration` includes the iteration which has not been started yet, if any, for this holdout. - `previousIterations` includes all iterations prior to the current iteration, for this holdout. By default only the current iteration is included in the response. - `rel-draftIteration` includes the iteration which has not been started yet, if any, for the experiments related to this holdout. - `rel-metrics` includes metrics for experiments related to this holdout. - `rel-previousIterations` includes all iterations prior to the current iteration, for the experiments related to this holdout. - `rel-secondaryMetrics` includes secondary metrics for experiments related to this holdout. - `rel-treatments` includes all treatment and parameter details for experiments related to this holdout. - `secondaryMetrics` includes secondary metrics for this holdout. By default only the primary metric is included in the response. - `treatments` includes all treatment and parameter details for this holdout. By default treatment data is not included in the response.  For example, `expand=draftIteration,rel-draftIteration` includes the `draftIteration` and `rel-draftIteration` fields in the response. If fields that you request with the `expand` query parameter are empty, they are not included in the response. 

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

api_instance = LaunchDarklyApi::HoldoutsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
holdout_key = 'holdout_key_example' # String | The holdout experiment key
opts = {
  expand: 'expand_example' # String | A comma-separated list of properties that can reveal additional information in the response. Supported fields are explained above. Holdout experiment expansion fields have no prefix. Related experiment expansion fields have `rel-` as a prefix.
}

begin
  # Get holdout
  result = api_instance.get_holdout(project_key, environment_key, holdout_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling HoldoutsBetaApi->get_holdout: #{e}"
end
```

#### Using the get_holdout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HoldoutDetailRep>, Integer, Hash)> get_holdout_with_http_info(project_key, environment_key, holdout_key, opts)

```ruby
begin
  # Get holdout
  data, status_code, headers = api_instance.get_holdout_with_http_info(project_key, environment_key, holdout_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HoldoutDetailRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling HoldoutsBetaApi->get_holdout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **holdout_key** | **String** | The holdout experiment key |  |
| **expand** | **String** | A comma-separated list of properties that can reveal additional information in the response. Supported fields are explained above. Holdout experiment expansion fields have no prefix. Related experiment expansion fields have &#x60;rel-&#x60; as a prefix. | [optional] |

### Return type

[**HoldoutDetailRep**](HoldoutDetailRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_holdout_by_id

> <HoldoutRep> get_holdout_by_id(project_key, environment_key, holdout_id)

Get Holdout by Id

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

api_instance = LaunchDarklyApi::HoldoutsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
holdout_id = 'holdout_id_example' # String | The holdout experiment ID

begin
  # Get Holdout by Id
  result = api_instance.get_holdout_by_id(project_key, environment_key, holdout_id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling HoldoutsBetaApi->get_holdout_by_id: #{e}"
end
```

#### Using the get_holdout_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HoldoutRep>, Integer, Hash)> get_holdout_by_id_with_http_info(project_key, environment_key, holdout_id)

```ruby
begin
  # Get Holdout by Id
  data, status_code, headers = api_instance.get_holdout_by_id_with_http_info(project_key, environment_key, holdout_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HoldoutRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling HoldoutsBetaApi->get_holdout_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **holdout_id** | **String** | The holdout experiment ID |  |

### Return type

[**HoldoutRep**](HoldoutRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_holdout

> <HoldoutRep> patch_holdout(project_key, environment_key, holdout_key, holdout_patch_input)

Patch holdout

Updates an existing holdout, and returns the updated holdout. Updating holdouts uses the semantic patch format.  To make a semantic patch request, you must append `domain-model=launchdarkly.semanticpatch` to your `Content-Type` header. To learn more, read [Updates using semantic patch](https://launchdarkly.com/docs/api#updates-using-semantic-patch).  ### Instructions  Semantic patch requests support the following `kind` instructions for updating holdouts.  <details> <summary>Click to expand instructions for <strong>updating holdouts</strong></summary>  #### endHoldout  Ends a holdout.  ##### Parameters  None.  Here's an example:  ```json {   \"comment\": \"Optional comment describing why the holdout is ending\",   \"instructions\": [{     \"kind\": \"endHoldout\"   }] } ```  #### removeExperiment  Removes an experiment from a holdout.  ##### Parameters  - `value`: The key of the experiment to remove  Here's an example:  ```json {   \"comment\": \"Optional comment describing the change\",   \"instructions\": [{     \"kind\": \"removeExperiment\",     \"value\": \"experiment-key\"   }] } ```  #### updateDescription  Updates the description of the holdout.  ##### Parameters  - `value`: The new description.  Here's an example:  ```json {   \"comment\": \"Optional comment describing the update\",   \"instructions\": [{     \"kind\": \"updateDescription\",     \"value\": \"Updated holdout description\"   }] } ```  #### updateName  Updates the name of the holdout.  ##### Parameters  - `value`: The new name.  Here's an example:  ```json {   \"comment\": \"Optional comment describing the update\",   \"instructions\": [{     \"kind\": \"updateName\",     \"value\": \"Updated holdout name\"   }] } ```  </details> 

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

api_instance = LaunchDarklyApi::HoldoutsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
holdout_key = 'holdout_key_example' # String | The holdout key
holdout_patch_input = LaunchDarklyApi::HoldoutPatchInput.new({instructions: [{ key: 3.56}]}) # HoldoutPatchInput | 

begin
  # Patch holdout
  result = api_instance.patch_holdout(project_key, environment_key, holdout_key, holdout_patch_input)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling HoldoutsBetaApi->patch_holdout: #{e}"
end
```

#### Using the patch_holdout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HoldoutRep>, Integer, Hash)> patch_holdout_with_http_info(project_key, environment_key, holdout_key, holdout_patch_input)

```ruby
begin
  # Patch holdout
  data, status_code, headers = api_instance.patch_holdout_with_http_info(project_key, environment_key, holdout_key, holdout_patch_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HoldoutRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling HoldoutsBetaApi->patch_holdout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **holdout_key** | **String** | The holdout key |  |
| **holdout_patch_input** | [**HoldoutPatchInput**](HoldoutPatchInput.md) |  |  |

### Return type

[**HoldoutRep**](HoldoutRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_holdout

> <HoldoutRep> post_holdout(project_key, environment_key, holdout_post_request)

Create holdout

Create a new holdout in the specified project.

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

api_instance = LaunchDarklyApi::HoldoutsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
holdout_post_request = LaunchDarklyApi::HoldoutPostRequest.new # HoldoutPostRequest | 

begin
  # Create holdout
  result = api_instance.post_holdout(project_key, environment_key, holdout_post_request)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling HoldoutsBetaApi->post_holdout: #{e}"
end
```

#### Using the post_holdout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HoldoutRep>, Integer, Hash)> post_holdout_with_http_info(project_key, environment_key, holdout_post_request)

```ruby
begin
  # Create holdout
  data, status_code, headers = api_instance.post_holdout_with_http_info(project_key, environment_key, holdout_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HoldoutRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling HoldoutsBetaApi->post_holdout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **holdout_post_request** | [**HoldoutPostRequest**](HoldoutPostRequest.md) |  |  |

### Return type

[**HoldoutRep**](HoldoutRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

