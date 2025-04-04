# LaunchDarklyApi::ModelConfigPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Human readable name of the model |  |
| **key** | **String** | Unique key for the model |  |
| **id** | **String** | Identifier for the model, for use with third party providers |  |
| **icon** | **String** | Icon for the model | [optional] |
| **provider** | **String** | Provider for the model | [optional] |
| **params** | **Object** |  | [optional] |
| **custom_params** | **Object** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **cost_per_input_token** | **Float** | Cost per input token in USD | [optional] |
| **cost_per_output_token** | **Float** | Cost per output token in USD | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ModelConfigPost.new(
  name: null,
  key: null,
  id: null,
  icon: null,
  provider: null,
  params: null,
  custom_params: null,
  tags: null,
  cost_per_input_token: null,
  cost_per_output_token: null
)
```

