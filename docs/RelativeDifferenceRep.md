# LaunchDarklyApi::RelativeDifferenceRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upper** | **Float** | The upper bound | [optional] |
| **lower** | **Float** | The lower bound | [optional] |
| **from_treatment_id** | **String** | The treatment ID | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::RelativeDifferenceRep.new(
  upper: 0.42655970355712425,
  lower: -0.13708601934659803,
  from_treatment_id: 92b8354e-360e-4d67-8f13-fa6a46ca8077
)
```

