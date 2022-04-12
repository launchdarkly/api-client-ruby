# LaunchDarklyApi::StageInputRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **execute_conditions_in_sequence** | **Boolean** |  | [optional] |
| **conditions** | [**Array&lt;ConditionInputRep&gt;**](ConditionInputRep.md) |  | [optional] |
| **action** | [**ActionInputRep**](ActionInputRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::StageInputRep.new(
  name: null,
  execute_conditions_in_sequence: null,
  conditions: null,
  action: null
)
```

