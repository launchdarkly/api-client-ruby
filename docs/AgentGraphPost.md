# LaunchDarklyApi::AgentGraphPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique key for the agent graph |  |
| **name** | **String** | A human-readable name for the agent graph |  |
| **description** | **String** | A description of the agent graph | [optional] |
| **root_config_key** | **String** | The AI Config key of the root node. A missing root implies a newly created graph with metadata only. | [optional] |
| **edges** | [**Array&lt;AgentGraphEdgePost&gt;**](AgentGraphEdgePost.md) | The edges in the graph. If edges or rootConfigKey is present, both must be present. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentGraphPost.new(
  key: null,
  name: null,
  description: null,
  root_config_key: null,
  edges: null
)
```

