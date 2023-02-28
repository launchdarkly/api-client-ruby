# LaunchDarklyApi::ApprovalConditionInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | A description of the approval required for this stage | [optional] |
| **notify_member_ids** | **Array&lt;String&gt;** | A list of member IDs for the members to request approval from for this stage | [optional] |
| **notify_team_keys** | **Array&lt;String&gt;** | A list of team keys for the teams to request approval from for this stage | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ApprovalConditionInput.new(
  description: Require example-team approval for final stage,
  notify_member_ids: [&quot;507f1f77bcf86cd799439011&quot;],
  notify_team_keys: [&quot;example-team&quot;]
)
```

