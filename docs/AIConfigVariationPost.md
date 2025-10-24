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
| **tools** | [**Array&lt;VariationToolPost&gt;**](VariationToolPost.md) | List of tools to use for this variation. The latest version of the tool will be used. | [optional] |
| **tool_keys** | **Array&lt;String&gt;** | List of tool keys to use for this variation. The latest version of the tool will be used. | [optional] |
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
  tools: null,
  tool_keys: null,
  judge_configuration: null
)
```

