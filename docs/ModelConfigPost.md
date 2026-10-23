# LaunchDarklyApi::ModelConfigPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Human readable name of the model |  |
| **key** | **String** | Unique key for the model config in the project, in the format &#x60;Provider.model-id&#x60;. Config variations reject other formats. Keys of global catalog models are reserved. |  |
| **id** | **String** | Model ID that the provider&#39;s API uses. Cannot be changed after creation. |  |
| **maintainer_id** | **String** | The member ID of the maintainer. Not applied on create. To set the maintainer, update the model config after you create it. | [optional] |
| **maintainer_team_key** | **String** | The key of the team that maintains the model config. Not applied on create. To set the maintainer, update the model config after you create it. | [optional] |
| **icon** | **String** | Icon for the model | [optional] |
| **provider** | **String** | Provider for the model. Use the provider prefix of &#x60;key&#x60;. Cannot be changed after creation. | [optional] |
| **params** | **Object** | Freeform JSON object. LaunchDarkly does not validate the keys. In a model config, &#x60;params&#x60; and &#x60;customParams&#x60; hold parameters that the provider&#39;s API accepts, for example &#x60;{\&quot;temperature\&quot;: 0.7, \&quot;maxTokens\&quot;: 4096}&#x60;. | [optional] |
| **custom_params** | **Object** | Freeform JSON object. LaunchDarkly does not validate the keys. In a model config, &#x60;params&#x60; and &#x60;customParams&#x60; hold parameters that the provider&#39;s API accepts, for example &#x60;{\&quot;temperature\&quot;: 0.7, \&quot;maxTokens\&quot;: 4096}&#x60;. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the model config | [optional] |
| **cost_per_input_token** | **Float** | Cost per input token in USD | [optional] |
| **cost_per_output_token** | **Float** | Cost per output token in USD | [optional] |
| **cost_per_cached_input_token** | **Float** | Cost per cached input token in USD | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ModelConfigPost.new(
  name: GPT Image 2,
  key: OpenAI.gpt-image-2,
  id: gpt-image-2,
  maintainer_id: 507f1f77bcf86cd799439011,
  maintainer_team_key: example-team-key,
  icon: openai,
  provider: OpenAI,
  params: null,
  custom_params: null,
  tags: [&quot;image&quot;],
  cost_per_input_token: 0.0000050,
  cost_per_output_token: 0.000040,
  cost_per_cached_input_token: 0.00000125
)
```

