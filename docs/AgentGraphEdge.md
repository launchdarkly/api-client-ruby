# LaunchDarklyApi::AgentGraphEdge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique key for this edge within the graph |  |
| **source_config** | **String** | The config key that is the source of this edge |  |
| **target_config** | **String** | The config key that is the target of this edge |  |
| **handoff** | **Object** | The handoff options from the source config to the target config | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentGraphEdge.new(
  key: null,
  source_config: null,
  target_config: null,
  handoff: null
)
```

