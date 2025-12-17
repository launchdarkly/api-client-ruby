# LaunchDarklyApi::AgentGraphPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-readable name for the agent graph | [optional] |
| **description** | **String** | A description of the agent graph | [optional] |
| **root_config_key** | **String** | The AI Config key of the root node. If present, edges must also be present. | [optional] |
| **edges** | [**Array&lt;AgentGraphEdge&gt;**](AgentGraphEdge.md) | The edges in the graph. If present, rootConfigKey must also be present. Replaces all existing edges. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentGraphPatch.new(
  name: null,
  description: null,
  root_config_key: null,
  edges: null
)
```

