# LaunchDarklyApi::AgentGraph

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique key for the agent graph |  |
| **name** | **String** | A human-readable name for the agent graph |  |
| **description** | **String** | A description of the agent graph | [optional] |
| **root_config_key** | **String** | The AI Config key of the root node | [optional] |
| **edges** | [**Array&lt;AgentGraphEdge&gt;**](AgentGraphEdge.md) | The edges in the graph | [optional] |
| **created_at** | **Integer** |  |  |
| **updated_at** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentGraph.new(
  key: null,
  name: null,
  description: null,
  root_config_key: null,
  edges: null,
  created_at: null,
  updated_at: null
)
```

