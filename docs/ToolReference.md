# LaunchDarklyApi::ToolReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_config_key** | **String** | The key of the AgentControl config with a variation that references this tool. |  |
| **ai_config_name** | **String** | The name of the AgentControl config with a variation that references this tool. |  |
| **variation_id** | **String** | The ID of the variation that references this tool. |  |
| **variation_key** | **String** | The key of the AgentControl config variation that references this tool. |  |
| **variation_name** | **String** | The name of the variation that references this tool. |  |
| **tool_version** | **Integer** | The version of the tool being referenced. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ToolReference.new(
  ai_config_key: null,
  ai_config_name: null,
  variation_id: null,
  variation_key: null,
  variation_name: null,
  tool_version: null
)
```

