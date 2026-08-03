# LaunchDarklyApi::ModelConfigPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Immutable provider model identifier. To use a different model identifier, create a new model config. | [optional] |
| **provider** | **String** | Immutable model provider. To use a different provider, create a new model config. | [optional] |
| **name** | **String** | Human-readable name of the model | [optional] |
| **cost_per_input_token** | **Float** | Cost per input token in USD | [optional] |
| **cost_per_output_token** | **Float** | Cost per output token in USD | [optional] |
| **cost_per_cached_input_token** | **Float** | Cost per cached input token in USD | [optional] |
| **params** | **Object** |  | [optional] |
| **custom_params** | **Object** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **maintainer_id** | **String** |  | [optional] |
| **maintainer_team_key** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ModelConfigPatch.new(
  id: null,
  provider: null,
  name: null,
  cost_per_input_token: null,
  cost_per_output_token: null,
  cost_per_cached_input_token: null,
  params: null,
  custom_params: null,
  tags: null,
  maintainer_id: 507f1f77bcf86cd799439011,
  maintainer_team_key: example-team-key
)
```

