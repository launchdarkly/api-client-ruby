# LaunchDarklyApi::ModelConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_access** | [**AiConfigsAccess**](AiConfigsAccess.md) |  | [optional] |
| **name** | **String** | Human readable name of the model |  |
| **key** | **String** | Unique key for the model |  |
| **id** | **String** | Identifier for the model, for use with third party providers |  |
| **icon** | **String** | Icon for the model | [optional] |
| **provider** | **String** | Provider for the model | [optional] |
| **global** | **Boolean** | Whether the model is global |  |
| **params** | **Object** |  | [optional] |
| **custom_params** | **Object** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  |  |
| **version** | **Integer** |  |  |
| **cost_per_input_token** | **Float** | Cost per input token in USD | [optional] |
| **cost_per_output_token** | **Float** | Cost per output token in USD | [optional] |
| **is_restricted** | **Boolean** | Whether the model is restricted |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ModelConfig.new(
  _access: null,
  name: null,
  key: null,
  id: null,
  icon: null,
  provider: null,
  global: null,
  params: null,
  custom_params: null,
  tags: null,
  version: null,
  cost_per_input_token: null,
  cost_per_output_token: null,
  is_restricted: null
)
```

