# LaunchDarklyApi::TreatmentRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **allocation_percent** | [**NullDecimal**](NullDecimal.md) |  |  |
| **baseline** | **Boolean** |  | [optional] |
| **parameters** | [**Array&lt;ParameterRep&gt;**](ParameterRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TreatmentRep.new(
  _id: null,
  name: null,
  allocation_percent: null,
  baseline: null,
  parameters: null
)
```

