# LaunchDarklyApi::ModelConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_access** | [**AiConfigsAccess**](AiConfigsAccess.md) |  | [optional] |
| **_maintainer** | [**AIConfigMaintainer**](AIConfigMaintainer.md) |  | [optional] |
| **name** | **String** | Human-readable name of the model |  |
| **key** | **String** | Unique key for the model config in the project, in the format &#x60;Provider.model-id&#x60;. Use this value as &#x60;modelConfigKey&#x60; on a config variation. |  |
| **id** | **String** | Model ID that the provider&#39;s API uses. This is different from &#x60;key&#x60;. Use this value as &#x60;modelName&#x60; on a config variation. |  |
| **icon** | **String** | Icon for the model | [optional] |
| **provider** | **String** | Provider for the model. Matches the provider prefix of &#x60;key&#x60;. | [optional] |
| **global** | **Boolean** | Whether the model is in the LaunchDarkly global catalog. Global models are read-only. Model configs that you create are always custom, with &#x60;global&#x60; set to &#x60;false&#x60;. |  |
| **params** | **Object** | Freeform JSON object. LaunchDarkly does not validate the keys. In a model config, &#x60;params&#x60; and &#x60;customParams&#x60; hold parameters that the provider&#39;s API accepts, for example &#x60;{\&quot;temperature\&quot;: 0.7, \&quot;maxTokens\&quot;: 4096}&#x60;. | [optional] |
| **custom_params** | **Object** | Freeform JSON object. LaunchDarkly does not validate the keys. In a model config, &#x60;params&#x60; and &#x60;customParams&#x60; hold parameters that the provider&#39;s API accepts, for example &#x60;{\&quot;temperature\&quot;: 0.7, \&quot;maxTokens\&quot;: 4096}&#x60;. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the model config. Tags can be used in custom role policies. |  |
| **version** | **Integer** | Version of the model config. Starts at 1, and each update that changes the model config adds a new version. |  |
| **cost_per_input_token** | **Float** | Cost per input token in USD | [optional] |
| **cost_per_output_token** | **Float** | Cost per output token in USD | [optional] |
| **cost_per_cached_input_token** | **Float** | Cost per cached input token in USD | [optional] |
| **is_restricted** | **Boolean** | Whether the model is on the project&#39;s restricted list. Config variations cannot select a restricted model. To change this, use the add or remove restricted models endpoints. |  |
| **used_in_count** | **Integer** | Number of distinct AgentControl configs that reference this model | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ModelConfig.new(
  _access: null,
  _maintainer: null,
  name: GPT Image 2,
  key: OpenAI.gpt-image-2,
  id: gpt-image-2,
  icon: openai,
  provider: OpenAI,
  global: null,
  params: null,
  custom_params: null,
  tags: [&quot;image&quot;],
  version: 2,
  cost_per_input_token: 0.0000050,
  cost_per_output_token: 0.000040,
  cost_per_cached_input_token: 0.00000125,
  is_restricted: null,
  used_in_count: null
)
```

