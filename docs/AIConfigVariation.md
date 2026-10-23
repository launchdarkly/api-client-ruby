# LaunchDarklyApi::AIConfigVariation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**ParentLink**](ParentLink.md) |  | [optional] |
| **color** | **String** | The color used for this variation in the UI | [optional] |
| **classifiers** | [**Array&lt;Classifier&gt;**](Classifier.md) | Classifier rules for a judge variation. When this array is non-empty, messages must be empty.  | [optional] |
| **comment** | **String** | A comment describing this version of the variation | [optional] |
| **description** | **String** | Returns the description for the agent. This is only returned for agent variations. | [optional] |
| **instructions** | **String** | Returns the instructions for the agent. This is only returned for agent variations. | [optional] |
| **key** | **String** | The variation key |  |
| **_id** | **String** | The variation ID |  |
| **messages** | [**Array&lt;Message&gt;**](Message.md) | The prompt messages for this variation | [optional] |
| **model** | **Object** | Freeform JSON object. LaunchDarkly does not validate the keys. In a model config, &#x60;params&#x60; and &#x60;customParams&#x60; hold parameters that the provider&#39;s API accepts, for example &#x60;{\&quot;temperature\&quot;: 0.7, \&quot;maxTokens\&quot;: 4096}&#x60;. |  |
| **model_config_key** | **String** | The key of the model config that this variation uses, not the provider model ID. Absent when the variation does not use a model config.  | [optional] |
| **model_config_version** | **Integer** | The version of the model config that this variation is pinned to, when it references a custom model config. Absent when the variation does not reference a model config, when the variation is not pinned to a specific version, or when custom model config versioning is not enabled for the project.  | [optional] |
| **name** | **String** | The variation name |  |
| **output_format** | **Hash&lt;String, Object&gt;** | JSON Schema defining the structured output format for the variation. | [optional] |
| **created_at** | **Integer** |  |  |
| **version** | **Integer** | The version number of this resource |  |
| **state** | **String** | The state of the variation. - &#x60;archived&#x60;: The variation is archived. To restore it, update the variation with &#x60;state&#x60; set to &#x60;published&#x60;. - &#x60;published&#x60;: The variation is active.  | [optional] |
| **_archived_at** | **Integer** |  | [optional] |
| **_published_at** | **Integer** |  | [optional] |
| **tools** | [**Array&lt;VariationTool&gt;**](VariationTool.md) | The tools this variation can use | [optional] |
| **skills** | [**Array&lt;VariationSkill&gt;**](VariationSkill.md) | The agent skills this variation can use | [optional] |
| **judge_configuration** | [**JudgeConfiguration**](JudgeConfiguration.md) |  | [optional] |
| **judging_config_keys** | **Array&lt;String&gt;** | Keys of the judge AI Configs attached to this variation | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfigVariation.new(
  _links: null,
  color: null,
  classifiers: null,
  comment: null,
  description: null,
  instructions: null,
  key: null,
  _id: null,
  messages: null,
  model: null,
  model_config_key: OpenAI.gpt-4.1,
  model_config_version: null,
  name: null,
  output_format: null,
  created_at: null,
  version: null,
  state: published,
  _archived_at: null,
  _published_at: null,
  tools: null,
  skills: null,
  judge_configuration: null,
  judging_config_keys: null
)
```

