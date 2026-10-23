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
| **params** | **Object** | Freeform JSON object. LaunchDarkly does not validate the keys. In a model config, &#x60;params&#x60; and &#x60;customParams&#x60; hold parameters that the provider&#39;s API accepts, for example &#x60;{\&quot;temperature\&quot;: 0.7, \&quot;maxTokens\&quot;: 4096}&#x60;. | [optional] |
| **custom_params** | **Object** | Freeform JSON object. LaunchDarkly does not validate the keys. In a model config, &#x60;params&#x60; and &#x60;customParams&#x60; hold parameters that the provider&#39;s API accepts, for example &#x60;{\&quot;temperature\&quot;: 0.7, \&quot;maxTokens\&quot;: 4096}&#x60;. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the model config. Replaces the current tags. | [optional] |
| **maintainer_id** | **String** | The member ID of the new maintainer. Set &#x60;maintainerId&#x60; or &#x60;maintainerTeamKey&#x60;, not both. An empty string removes the maintainer. | [optional] |
| **maintainer_team_key** | **String** | The key of the team to set as the new maintainer. Set &#x60;maintainerId&#x60; or &#x60;maintainerTeamKey&#x60;, not both. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ModelConfigPatch.new(
  id: null,
  provider: null,
  name: GPT Image 2,
  cost_per_input_token: 0.0000050,
  cost_per_output_token: 0.000040,
  cost_per_cached_input_token: 0.00000125,
  params: null,
  custom_params: null,
  tags: [&quot;image&quot;],
  maintainer_id: 507f1f77bcf86cd799439011,
  maintainer_team_key: example-team-key
)
```

