# LaunchDarklyApi::AIConfigVariationPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | Human-readable description of what this patch changes | [optional] |
| **description** | **String** | Description for agent when the config is in agent mode. | [optional] |
| **instructions** | **String** | Instructions for agent when the config is in agent mode. | [optional] |
| **messages** | [**Array&lt;Message&gt;**](Message.md) |  | [optional] |
| **model** | **Object** |  | [optional] |
| **model_config_key** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **output_format** | **Hash&lt;String, Object&gt;** | JSON Schema defining the structured output format for the variation. | [optional] |
| **published** | **Boolean** |  | [optional] |
| **state** | **String** | One of &#39;archived&#39;, &#39;published&#39; | [optional] |
| **tools** | [**Array&lt;VariationToolPost&gt;**](VariationToolPost.md) | List of tools to use for this variation. The latest version of the tool will be used. | [optional] |
| **tool_keys** | **Array&lt;String&gt;** | List of tool keys to use for this variation. The latest version of the tool will be used. | [optional] |
| **skills** | [**Array&lt;VariationSkillPost&gt;**](VariationSkillPost.md) | List of agent skills to attach to this variation. Replaces the current attachments. | [optional] |
| **judge_configuration** | [**JudgeConfiguration**](JudgeConfiguration.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfigVariationPatch.new(
  comment: null,
  description: null,
  instructions: null,
  messages: null,
  model: null,
  model_config_key: null,
  name: null,
  output_format: null,
  published: null,
  state: null,
  tools: null,
  tool_keys: null,
  skills: null,
  judge_configuration: null
)
```

