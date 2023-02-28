# LaunchDarklyApi::ConditionInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_kind** | **String** |  | [optional] |
| **execution_date** | **Integer** |  | [optional] |
| **wait_duration** | **Integer** | For workflow stages whose scheduled execution is relative, how far in the future the stage should start. | [optional] |
| **wait_duration_unit** | **String** |  | [optional] |
| **execute_now** | **Boolean** | Whether the workflow stage should be executed immediately | [optional] |
| **description** | **String** | A description of the approval required for this stage | [optional] |
| **notify_member_ids** | **Array&lt;String&gt;** | A list of member IDs for the members to request approval from for this stage | [optional] |
| **notify_team_keys** | **Array&lt;String&gt;** | A list of team keys for the teams to request approval from for this stage | [optional] |
| **kind** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ConditionInput.new(
  schedule_kind: null,
  execution_date: null,
  wait_duration: 2,
  wait_duration_unit: null,
  execute_now: false,
  description: Require example-team approval for final stage,
  notify_member_ids: [&quot;507f1f77bcf86cd799439011&quot;],
  notify_team_keys: [&quot;example-team&quot;],
  kind: null
)
```

