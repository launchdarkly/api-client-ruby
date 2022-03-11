# LaunchDarklyApi::ScheduleConditionInputRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_kind** | **String** |  | [optional] |
| **execution_date** | **Integer** |  | [optional] |
| **wait_duration** | **Integer** |  | [optional] |
| **wait_duration_unit** | **String** |  | [optional] |
| **execute_now** | **Boolean** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ScheduleConditionInputRep.new(
  schedule_kind: null,
  execution_date: null,
  wait_duration: null,
  wait_duration_unit: null,
  execute_now: null
)
```

