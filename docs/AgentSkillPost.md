# LaunchDarklyApi::AgentSkillPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique key for the agent skill. The key must match &#x60;^[a-z0-9][a-z0-9-]*$&#x60;: it can only contain lowercase letters, numbers, or &#39;-&#39;, and must start with a lowercase letter or number. The key can be at most 64 characters, and Windows reserved file names (&#x60;con&#x60;, &#x60;prn&#x60;, &#x60;aux&#x60;, &#x60;nul&#x60;, &#x60;com0&#x60;-&#x60;com9&#x60;, and &#x60;lpt0&#x60;-&#x60;lpt9&#x60;) aren&#39;t allowed. |  |
| **name** | **String** | Human-readable name of the agent skill. |  |
| **description** | **String** | Human-readable description of what the agent skill does. | [optional] |
| **markdown** | **String** | The verbatim SKILL.md content of the agent skill |  |
| **maintainer_id** | **String** | The ID of the member who maintains this resource | [optional] |
| **maintainer_team_key** | **String** | The key of the team that maintains this resource | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the agent skill. Tags can be used in custom role policies. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentSkillPost.new(
  key: pdf-extraction,
  name: PDF extraction,
  description: Extracts text and tables from PDF files.,
  markdown: null,
  maintainer_id: 507f1f77bcf86cd799439011,
  maintainer_team_key: example-team-key,
  tags: [&quot;documents&quot;]
)
```

