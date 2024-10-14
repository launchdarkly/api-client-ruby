# LaunchDarklyApi::InsightsDeploymentsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_deployment_event**](InsightsDeploymentsBetaApi.md#create_deployment_event) | **POST** /api/v2/engineering-insights/deployment-events | Create deployment event |
| [**get_deployment**](InsightsDeploymentsBetaApi.md#get_deployment) | **GET** /api/v2/engineering-insights/deployments/{deploymentID} | Get deployment |
| [**get_deployments**](InsightsDeploymentsBetaApi.md#get_deployments) | **GET** /api/v2/engineering-insights/deployments | List deployments |
| [**update_deployment**](InsightsDeploymentsBetaApi.md#update_deployment) | **PATCH** /api/v2/engineering-insights/deployments/{deploymentID} | Update deployment |


## create_deployment_event

> create_deployment_event(post_deployment_event_input)

Create deployment event

Create deployment event

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

api_instance = LaunchDarklyApi::InsightsDeploymentsBetaApi.new
post_deployment_event_input = LaunchDarklyApi::PostDeploymentEventInput.new({project_key: 'default', environment_key: 'production', application_key: 'billing-service', version: 'a90a8a2', event_type: 'started'}) # PostDeploymentEventInput | 

begin
  # Create deployment event
  api_instance.create_deployment_event(post_deployment_event_input)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsDeploymentsBetaApi->create_deployment_event: #{e}"
end
```

#### Using the create_deployment_event_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_deployment_event_with_http_info(post_deployment_event_input)

```ruby
begin
  # Create deployment event
  data, status_code, headers = api_instance.create_deployment_event_with_http_info(post_deployment_event_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsDeploymentsBetaApi->create_deployment_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_deployment_event_input** | [**PostDeploymentEventInput**](PostDeploymentEventInput.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_deployment

> <DeploymentRep> get_deployment(deployment_id, opts)

Get deployment

Get a deployment by ID.  The deployment ID is returned as part of the [List deployments](#operation/getDeployments) response. It is the `id` field of each element in the `items` array.  ### Expanding the deployment response  LaunchDarkly supports expanding the deployment response to include additional fields.  To expand the response, append the `expand` query parameter and include the following:  * `pullRequests` includes details on all of the pull requests associated with each deployment * `flagReferences` includes details on all of the references to flags in each deployment  For example, use `?expand=pullRequests` to include the `pullRequests` field in the response. By default, this field is **not** included in the response. 

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

api_instance = LaunchDarklyApi::InsightsDeploymentsBetaApi.new
deployment_id = 'deployment_id_example' # String | The deployment ID
opts = {
  expand: 'expand_example' # String | Expand properties in response. Options: `pullRequests`, `flagReferences`
}

begin
  # Get deployment
  result = api_instance.get_deployment(deployment_id, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsDeploymentsBetaApi->get_deployment: #{e}"
end
```

#### Using the get_deployment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeploymentRep>, Integer, Hash)> get_deployment_with_http_info(deployment_id, opts)

```ruby
begin
  # Get deployment
  data, status_code, headers = api_instance.get_deployment_with_http_info(deployment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeploymentRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsDeploymentsBetaApi->get_deployment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deployment_id** | **String** | The deployment ID |  |
| **expand** | **String** | Expand properties in response. Options: &#x60;pullRequests&#x60;, &#x60;flagReferences&#x60; | [optional] |

### Return type

[**DeploymentRep**](DeploymentRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deployments

> <DeploymentCollectionRep> get_deployments(project_key, environment_key, opts)

List deployments

Get a list of deployments  ### Expanding the deployment collection response  LaunchDarkly supports expanding the deployment collection response to include additional fields.  To expand the response, append the `expand` query parameter and include the following:  * `pullRequests` includes details on all of the pull requests associated with each deployment * `flagReferences` includes details on all of the references to flags in each deployment  For example, use `?expand=pullRequests` to include the `pullRequests` field in the response. By default, this field is **not** included in the response. 

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

api_instance = LaunchDarklyApi::InsightsDeploymentsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
opts = {
  application_key: 'application_key_example', # String | Comma separated list of application keys
  limit: 789, # Integer | The number of deployments to return. Default is 20. Maximum allowed is 100.
  expand: 'expand_example', # String | Expand properties in response. Options: `pullRequests`, `flagReferences`
  from: 789, # Integer | Unix timestamp in milliseconds. Default value is 7 days ago.
  to: 789, # Integer | Unix timestamp in milliseconds. Default value is now.
  after: 'after_example', # String | Identifier used for pagination
  before: 'before_example', # String | Identifier used for pagination
  kind: 'kind_example', # String | The deployment kind
  status: 'status_example' # String | The deployment status
}

begin
  # List deployments
  result = api_instance.get_deployments(project_key, environment_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsDeploymentsBetaApi->get_deployments: #{e}"
end
```

#### Using the get_deployments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeploymentCollectionRep>, Integer, Hash)> get_deployments_with_http_info(project_key, environment_key, opts)

```ruby
begin
  # List deployments
  data, status_code, headers = api_instance.get_deployments_with_http_info(project_key, environment_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeploymentCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsDeploymentsBetaApi->get_deployments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **application_key** | **String** | Comma separated list of application keys | [optional] |
| **limit** | **Integer** | The number of deployments to return. Default is 20. Maximum allowed is 100. | [optional] |
| **expand** | **String** | Expand properties in response. Options: &#x60;pullRequests&#x60;, &#x60;flagReferences&#x60; | [optional] |
| **from** | **Integer** | Unix timestamp in milliseconds. Default value is 7 days ago. | [optional] |
| **to** | **Integer** | Unix timestamp in milliseconds. Default value is now. | [optional] |
| **after** | **String** | Identifier used for pagination | [optional] |
| **before** | **String** | Identifier used for pagination | [optional] |
| **kind** | **String** | The deployment kind | [optional] |
| **status** | **String** | The deployment status | [optional] |

### Return type

[**DeploymentCollectionRep**](DeploymentCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_deployment

> <DeploymentRep> update_deployment(deployment_id, patch_operation)

Update deployment

Update a deployment by ID. Updating a deployment uses a [JSON patch](https://datatracker.ietf.org/doc/html/rfc6902) representation of the desired changes. To learn more, read [Updates](/#section/Overview/Updates).<br/><br/>The deployment ID is returned as part of the [List deployments](#operation/getDeployments) response. It is the `id` field of each element in the `items` array.

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

api_instance = LaunchDarklyApi::InsightsDeploymentsBetaApi.new
deployment_id = 'deployment_id_example' # String | The deployment ID
patch_operation = [LaunchDarklyApi::PatchOperation.new({op: 'replace', path: '/exampleField'})] # Array<PatchOperation> | 

begin
  # Update deployment
  result = api_instance.update_deployment(deployment_id, patch_operation)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsDeploymentsBetaApi->update_deployment: #{e}"
end
```

#### Using the update_deployment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeploymentRep>, Integer, Hash)> update_deployment_with_http_info(deployment_id, patch_operation)

```ruby
begin
  # Update deployment
  data, status_code, headers = api_instance.update_deployment_with_http_info(deployment_id, patch_operation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeploymentRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsDeploymentsBetaApi->update_deployment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deployment_id** | **String** | The deployment ID |  |
| **patch_operation** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md) |  |  |

### Return type

[**DeploymentRep**](DeploymentRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

