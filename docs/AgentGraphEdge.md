# LaunchDarklyApi::AgentGraphEdge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_config** | **String** | The AI Config key that is the source of this edge |  |
| **target_config** | **String** | The AI Config key that is the target of this edge |  |
| **handoff** | **Object** | The handoff options from the source AI Config to the target AI Config | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentGraphEdge.new(
  source_config: null,
  target_config: null,
  handoff: null
)
```

