# LaunchDarklyApi::AgentGraphPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique key for the agent graph |  |
| **name** | **String** | A human-readable name for the agent graph |  |
| **description** | **String** | A description of the agent graph | [optional] |
| **maintainer_id** | **String** | The ID of the member who maintains this agent graph | [optional] |
| **maintainer_team_key** | **String** | The key of the team that maintains this agent graph | [optional] |
| **root_config_key** | **String** | The config key of the root node. A missing root implies a newly created graph with metadata only. | [optional] |
| **edges** | [**Array&lt;AgentGraphEdgePost&gt;**](AgentGraphEdgePost.md) | The edges in the graph. If edges or rootConfigKey is present, both must be present. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentGraphPost.new(
  key: null,
  name: null,
  description: null,
  maintainer_id: 507f1f77bcf86cd799439011,
  maintainer_team_key: example-team-key,
  root_config_key: null,
  edges: null
)
```

