# LaunchDarklyApi::AIConfigVariationPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | Human-readable description of this variation | [optional] |
| **description** | **String** | Returns the description for the agent. This is only returned for agent variations. | [optional] |
| **instructions** | **String** | Returns the instructions for the agent. This is only returned for agent variations. | [optional] |
| **key** | **String** |  |  |
| **messages** | [**Array&lt;Message&gt;**](Message.md) |  | [optional] |
| **model** | **Object** |  | [optional] |
| **name** | **String** |  |  |
| **model_config_key** | **String** |  | [optional] |
| **output_format** | **Hash&lt;String, Object&gt;** | JSON Schema defining the structured output format for the variation. | [optional] |
| **tools** | [**Array&lt;VariationToolPost&gt;**](VariationToolPost.md) | List of tools to use for this variation. The latest version of the tool will be used. | [optional] |
| **tool_keys** | **Array&lt;String&gt;** | List of tool keys to use for this variation. The latest version of the tool will be used. | [optional] |
| **skills** | [**Array&lt;VariationSkillPost&gt;**](VariationSkillPost.md) | List of agent skills to attach to this variation. | [optional] |
| **judge_configuration** | [**JudgeConfiguration**](JudgeConfiguration.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfigVariationPost.new(
  comment: null,
  description: null,
  instructions: null,
  key: null,
  messages: null,
  model: null,
  name: null,
  model_config_key: null,
  output_format: null,
  tools: null,
  tool_keys: null,
  skills: null,
  judge_configuration: null
)
```

