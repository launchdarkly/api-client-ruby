# LaunchDarklyApi::VariationOrRolloutRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variation** | **Integer** | The index of the variation, from the array of variations for this flag | [optional] |
| **rollout** | [**Rollout**](Rollout.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::VariationOrRolloutRep.new(
  variation: null,
  rollout: null
)
```

