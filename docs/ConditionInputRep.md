# LaunchDarklyApi::ConditionInputRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_kind** | **String** |  | [optional] |
| **execution_date** | **Integer** |  | [optional] |
| **wait_duration** | **Integer** | For workflow stages whose scheduled execution is relative, how far in the future the stage should start. | [optional] |
| **wait_duration_unit** | **String** |  | [optional] |
| **execute_now** | **Boolean** | Whether the workflow stage should be executed immediately | [optional] |
| **description** | **String** |  | [optional] |
| **notify_member_ids** | **Array&lt;String&gt;** |  | [optional] |
| **notify_team_keys** | **Array&lt;String&gt;** |  | [optional] |
| **kind** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ConditionInputRep.new(
  schedule_kind: null,
  execution_date: null,
  wait_duration: 2,
  wait_duration_unit: null,
  execute_now: false,
  description: null,
  notify_member_ids: null,
  notify_team_keys: null,
  kind: null
)
```

