# LaunchDarklyApi::ScheduleConditionOutputRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_kind** | **String** |  | [optional] |
| **execution_date** | **Integer** |  | [optional] |
| **wait_duration** | **Integer** |  | [optional] |
| **wait_duration_unit** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ScheduleConditionOutputRep.new(
  schedule_kind: null,
  execution_date: null,
  wait_duration: null,
  wait_duration_unit: null
)
```

