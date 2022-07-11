# LaunchDarklyApi::ScheduleConditionInputRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_kind** | **String** |  | [optional] |
| **execution_date** | **Integer** |  | [optional] |
| **wait_duration** | **Integer** | For workflow stages whose scheduled execution is relative, how far in the future the stage should start. | [optional] |
| **wait_duration_unit** | **String** |  | [optional] |
| **execute_now** | **Boolean** | Whether the workflow stage should be executed immediately | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ScheduleConditionInputRep.new(
  schedule_kind: null,
  execution_date: null,
  wait_duration: 2,
  wait_duration_unit: null,
  execute_now: false
)
```

