# LaunchDarklyApi::AgentSkillPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Human-readable name of the agent skill. | [optional] |
| **description** | **String** | Human-readable description of what the agent skill does. | [optional] |
| **markdown** | **String** | The verbatim SKILL.md content of the agent skill | [optional] |
| **maintainer_id** | **String** | The ID of the member who maintains this resource | [optional] |
| **maintainer_team_key** | **String** | The key of the team that maintains this resource | [optional] |
| **tags** | **Array&lt;String&gt;** | Replaces the tags on the agent skill. Tags can be used in custom role policies. Changing only the tags does not create a new version. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentSkillPatch.new(
  name: PDF extraction,
  description: Extracts text and tables from PDF files.,
  markdown: null,
  maintainer_id: 507f1f77bcf86cd799439011,
  maintainer_team_key: example-team-key,
  tags: [&quot;documents&quot;]
)
```

