# LaunchDarklyApi::AgentSkillPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **markdown** | **String** | The verbatim SKILL.md content of the agent skill | [optional] |
| **maintainer_id** | **String** |  | [optional] |
| **maintainer_team_key** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentSkillPatch.new(
  name: null,
  description: null,
  markdown: null,
  maintainer_id: 507f1f77bcf86cd799439011,
  maintainer_team_key: example-team-key,
  tags: null
)
```

