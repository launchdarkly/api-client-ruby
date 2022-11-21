# LaunchDarklyApi::StageOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The ID of this stage |  |
| **name** | **String** | The stage name | [optional] |
| **conditions** | [**Array&lt;ConditionOutput&gt;**](ConditionOutput.md) | An array of conditions for the stage |  |
| **action** | [**ActionOutput**](ActionOutput.md) |  |  |
| **_execution** | [**ExecutionOutput**](ExecutionOutput.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::StageOutput.new(
  _id: 12ab3c45de678910abc12345,
  name: 10% rollout on day 1,
  conditions: [{&quot;_execution&quot;:{&quot;status&quot;:&quot;completed&quot;},&quot;id&quot;:&quot;12ab3c45de678910abc12345&quot;,&quot;kind&quot;:&quot;schedule&quot;,&quot;scheduleKind&quot;:&quot;relative&quot;,&quot;waitDuration&quot;:2,&quot;waitDurationUnit&quot;:&quot;calendarDay&quot;}],
  action: null,
  _execution: null
)
```

