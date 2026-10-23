# LaunchDarklyApi::AIConfigVariationPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **classifiers** | [**Array&lt;Classifier&gt;**](Classifier.md) | Replaces classifier rules on a judge variation. An empty array clears them. When this array is non-empty, messages must be empty.  | [optional] |
| **comment** | **String** | Human-readable description of what this patch changes | [optional] |
| **description** | **String** | Description for agent when the config is in agent mode. | [optional] |
| **instructions** | **String** | Instructions for agent when the config is in agent mode. | [optional] |
| **messages** | [**Array&lt;Message&gt;**](Message.md) | The prompt messages for this variation | [optional] |
| **model** | **Object** | Freeform JSON object. LaunchDarkly does not validate the keys. In a model config, &#x60;params&#x60; and &#x60;customParams&#x60; hold parameters that the provider&#39;s API accepts, for example &#x60;{\&quot;temperature\&quot;: 0.7, \&quot;maxTokens\&quot;: 4096}&#x60;. | [optional] |
| **model_config_key** | **String** | The key that GET /api/v2/projects/{projectKey}/ai-configs/model-configs returns for the model config. Do not use a custom model config&#39;s ID, which is the provider model ID.  | [optional] |
| **model_config_version** | **Integer** | The exact model config version to set this variation to. Requires modelConfigKey to be set (either in this patch or already on the variation), and the version must exist for that model config. When omitted, the variation keeps the version it is currently set to, unless the patch changes modelConfigKey, in which case the variation records the new model config&#39;s current (latest) version.  | [optional] |
| **name** | **String** | A human-readable name for the variation | [optional] |
| **output_format** | **Hash&lt;String, Object&gt;** | JSON Schema defining the structured output format for the variation. | [optional] |
| **published** | **Boolean** | Whether to publish this version of the variation | [optional] |
| **state** | **String** | The state to move the variation to. Omit this field to keep the current state. - &#x60;archived&#x60;: Archive a published variation. You cannot archive a variation that is already archived. You also cannot archive the only variation of an AI Config. An AI Config itself cannot be archived. - &#x60;published&#x60;: Restore an archived variation. You cannot publish a variation that is already published.  | [optional] |
| **tools** | [**Array&lt;VariationToolPost&gt;**](VariationToolPost.md) | List of tools to use for this variation. The latest version of the tool will be used. | [optional] |
| **tool_keys** | **Array&lt;String&gt;** | List of tool keys to use for this variation. The latest version of the tool will be used. | [optional] |
| **skills** | [**Array&lt;VariationSkillPost&gt;**](VariationSkillPost.md) | List of agent skills to attach to this variation. Replaces the current attachments. | [optional] |
| **judge_configuration** | [**JudgeConfiguration**](JudgeConfiguration.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfigVariationPatch.new(
  classifiers: null,
  comment: null,
  description: null,
  instructions: null,
  messages: null,
  model: null,
  model_config_key: OpenAI.gpt-4.1,
  model_config_version: null,
  name: null,
  output_format: null,
  published: null,
  state: archived,
  tools: null,
  tool_keys: null,
  skills: null,
  judge_configuration: null
)
```

