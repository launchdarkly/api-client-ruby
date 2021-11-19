# LaunchDarklyApi::StageInputRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **conditions** | [**Array&lt;ConditionInputRep&gt;**](ConditionInputRep.md) |  | [optional] |
| **action** | [**ActionInputRep**](ActionInputRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::StageInputRep.new(
  name: null,
  conditions: null,
  action: null
)
```

