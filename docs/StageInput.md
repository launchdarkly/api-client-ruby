# LaunchDarklyApi::StageInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The stage name | [optional] |
| **execute_conditions_in_sequence** | **Boolean** | Whether to execute the conditions in sequence for the given stage | [optional] |
| **conditions** | [**Array&lt;ConditionInput&gt;**](ConditionInput.md) | An array of conditions for the stage | [optional] |
| **action** | [**ActionInput**](ActionInput.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::StageInput.new(
  name: 10% rollout on day 1,
  execute_conditions_in_sequence: true,
  conditions: [{&quot;kind&quot;:&quot;schedule&quot;,&quot;scheduleKind&quot;:&quot;relative&quot;,&quot;waitDuration&quot;:2,&quot;waitDurationUnit&quot;:&quot;calendarDay&quot;}],
  action: null
)
```

