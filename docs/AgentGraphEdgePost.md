# LaunchDarklyApi::AgentGraphEdgePost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique key for this edge within the graph |  |
| **source_config** | **String** | The AI Config key that is the source of this edge |  |
| **target_config** | **String** | The AI Config key that is the target of this edge |  |
| **handoff** | **Object** | The handoff options from the source AI Config to the target AI Config | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentGraphEdgePost.new(
  key: null,
  source_config: null,
  target_config: null,
  handoff: null
)
```

