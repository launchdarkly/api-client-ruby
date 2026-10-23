# LaunchDarklyApi::AIToolPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **maintainer_id** | **String** | The ID of the member who maintains this resource | [optional] |
| **maintainer_team_key** | **String** | The key of the team that maintains this resource | [optional] |
| **description** | **String** | A description of the tool | [optional] |
| **schema** | **Object** | JSON Schema defining the tool&#39;s parameters for LLM consumption | [optional] |
| **custom_parameters** | **Object** | Custom metadata and configuration for application-level use (not sent to LLM) | [optional] |
| **tags** | **Array&lt;String&gt;** | Replaces the tags on the tool. Tags can be used in custom role policies. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIToolPatch.new(
  maintainer_id: 507f1f77bcf86cd799439011,
  maintainer_team_key: example-team-key,
  description: null,
  schema: null,
  custom_parameters: {&quot;requiresApproval&quot;:true,&quot;timeoutMs&quot;:5000},
  tags: [&quot;support&quot;]
)
```

