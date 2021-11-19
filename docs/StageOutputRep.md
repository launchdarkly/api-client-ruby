# LaunchDarklyApi::StageOutputRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **conditions** | [**Array&lt;ConditionOutputRep&gt;**](ConditionOutputRep.md) |  |  |
| **action** | [**ActionOutputRep**](ActionOutputRep.md) |  |  |
| **_execution** | [**ExecutionOutputRep**](ExecutionOutputRep.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::StageOutputRep.new(
  _id: null,
  name: null,
  conditions: null,
  action: null,
  _execution: null
)
```

