# LaunchDarklyApi::AIConfigTargetingEnvironmentFallthroughRolloutExperimentationAllocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **can_reshuffle** | **Boolean** | Whether contexts can be reassigned to new buckets |  |
| **default_variation** | **Integer** | Index of the default variation |  |
| **type** | **String** | The allocation type |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfigTargetingEnvironmentFallthroughRolloutExperimentationAllocation.new(
  can_reshuffle: null,
  default_variation: null,
  type: null
)
```

