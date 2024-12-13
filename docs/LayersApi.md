# LaunchDarklyApi::LayersApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_layer**](LayersApi.md#create_layer) | **POST** /api/v2/projects/{projectKey}/layers | Create layer |
| [**get_layers**](LayersApi.md#get_layers) | **GET** /api/v2/projects/{projectKey}/layers | Get layers |
| [**update_layer**](LayersApi.md#update_layer) | **PATCH** /api/v2/projects/{projectKey}/layers/{layerKey} | Update layer |


## create_layer

> <LayerRep> create_layer(project_key, layer_post)

Create layer

Create a layer. Experiments running in the same layer are granted mutually-exclusive traffic. 

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

api_instance = LaunchDarklyApi::LayersApi.new
project_key = 'project_key_example' # String | The project key
layer_post = LaunchDarklyApi::LayerPost.new({key: 'checkout-flow', name: 'Checkout Flow', description: 'description_example'}) # LayerPost | 

begin
  # Create layer
  result = api_instance.create_layer(project_key, layer_post)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling LayersApi->create_layer: #{e}"
end
```

#### Using the create_layer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LayerRep>, Integer, Hash)> create_layer_with_http_info(project_key, layer_post)

```ruby
begin
  # Create layer
  data, status_code, headers = api_instance.create_layer_with_http_info(project_key, layer_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LayerRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling LayersApi->create_layer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **layer_post** | [**LayerPost**](LayerPost.md) |  |  |

### Return type

[**LayerRep**](LayerRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_layers

> <LayerCollectionRep> get_layers(project_key, opts)

Get layers

Get a collection of all layers for a project

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

api_instance = LaunchDarklyApi::LayersApi.new
project_key = 'project_key_example' # String | The project key
opts = {
  filter: 'filter_example' # String | A comma-separated list of filters. This endpoint only accepts filtering by `experimentKey`. The filter returns layers which include that experiment for the selected environment(s). For example: `filter=reservations.experimentKey contains expKey`.
}

begin
  # Get layers
  result = api_instance.get_layers(project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling LayersApi->get_layers: #{e}"
end
```

#### Using the get_layers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LayerCollectionRep>, Integer, Hash)> get_layers_with_http_info(project_key, opts)

```ruby
begin
  # Get layers
  data, status_code, headers = api_instance.get_layers_with_http_info(project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LayerCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling LayersApi->get_layers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **filter** | **String** | A comma-separated list of filters. This endpoint only accepts filtering by &#x60;experimentKey&#x60;. The filter returns layers which include that experiment for the selected environment(s). For example: &#x60;filter&#x3D;reservations.experimentKey contains expKey&#x60;. | [optional] |

### Return type

[**LayerCollectionRep**](LayerCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_layer

> <LayerRep> update_layer(project_key, layer_key, layer_patch_input)

Update layer

Update a layer by adding, changing, or removing traffic reservations for experiments, or by changing layer name or description. Updating a layer uses the semantic patch format.  To make a semantic patch request, you must append `domain-model=launchdarkly.semanticpatch` to your `Content-Type` header. To learn more, read [Updates using semantic patch](/reference#updates-using-semantic-patch).  ### Instructions  Semantic patch requests support the following `kind` instructions for updating layers.  <details> <summary>Click to expand instructions for <strong>updating layers</strong></summary>  #### updateName  Updates the layer name.  ##### Parameters  - `name`: The new layer name.  Here's an example:  ```json {   \"instructions\": [{       \"kind\": \"updateName\",       \"name\": \"New name\"   }] } ```  #### updateDescription  Updates the layer description.  ##### Parameters  - `description`: The new description.  Here's an example:  ```json {   \"instructions\": [{       \"kind\": \"updateDescription\",       \"description\": \"New description\"   }] } ```  #### updateExperimentReservation  Adds or updates a traffic reservation for an experiment in a layer.  ##### Parameters  - `experimentKey`: The key of the experiment whose reservation you are adding to or updating in the layer. - `reservationPercent`: The amount of traffic in the layer to reserve. Must be an integer. Zero is allowed until iteration start.  Here's an example:  ```json {   \"environmentKey\": \"production\",   \"instructions\": [{       \"kind\": \"updateExperimentReservation\",       \"experimentKey\": \"exp-key\",       \"reservationPercent\": 10   }] } ```  #### removeExperiment  Removes a traffic reservation for an experiment from a layer.  ##### Parameters  - `experimentKey`: The key of the experiment whose reservation you want to remove from the layer.  Here's an example:  ```json {   \"environmentKey\": \"production\",   \"instructions\": [{       \"kind\": \"removeExperiment\",       \"experimentKey\": \"exp-key\"   }] } ```  </details> 

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

api_instance = LaunchDarklyApi::LayersApi.new
project_key = 'project_key_example' # String | The project key
layer_key = 'layer_key_example' # String | The layer key
layer_patch_input = LaunchDarklyApi::LayerPatchInput.new({instructions: [{ key: 3.56}]}) # LayerPatchInput | 

begin
  # Update layer
  result = api_instance.update_layer(project_key, layer_key, layer_patch_input)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling LayersApi->update_layer: #{e}"
end
```

#### Using the update_layer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LayerRep>, Integer, Hash)> update_layer_with_http_info(project_key, layer_key, layer_patch_input)

```ruby
begin
  # Update layer
  data, status_code, headers = api_instance.update_layer_with_http_info(project_key, layer_key, layer_patch_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LayerRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling LayersApi->update_layer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **layer_key** | **String** | The layer key |  |
| **layer_patch_input** | [**LayerPatchInput**](LayerPatchInput.md) |  |  |

### Return type

[**LayerRep**](LayerRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

