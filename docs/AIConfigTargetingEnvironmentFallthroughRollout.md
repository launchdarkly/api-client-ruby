# LaunchDarklyApi::AIConfigTargetingEnvironmentFallthroughRollout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bucket_by** | **String** |  | [optional] |
| **context_kind** | **String** |  |  |
| **experiment_allocation** | [**AIConfigTargetingEnvironmentFallthroughRolloutExperimentationAllocation**](AIConfigTargetingEnvironmentFallthroughRolloutExperimentationAllocation.md) |  | [optional] |
| **seed** | **Integer** |  | [optional] |
| **variations** | [**Array&lt;AIConfigTargetingEnvironmentFallthroughRolloutVariation&gt;**](AIConfigTargetingEnvironmentFallthroughRolloutVariation.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfigTargetingEnvironmentFallthroughRollout.new(
  bucket_by: null,
  context_kind: null,
  experiment_allocation: null,
  seed: null,
  variations: null
)
```

