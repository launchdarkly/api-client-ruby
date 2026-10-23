# LaunchDarklyApi::AIConfigTargetingEnvironmentFallthroughRollout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bucket_by** | **String** | The context attribute used to bucket contexts | [optional] |
| **context_kind** | **String** | The context kind used to bucket contexts |  |
| **experiment_allocation** | [**AIConfigTargetingEnvironmentFallthroughRolloutExperimentationAllocation**](AIConfigTargetingEnvironmentFallthroughRolloutExperimentationAllocation.md) |  | [optional] |
| **seed** | **Integer** | The seed used for bucketing | [optional] |
| **variations** | [**Array&lt;AIConfigTargetingEnvironmentFallthroughRolloutVariation&gt;**](AIConfigTargetingEnvironmentFallthroughRolloutVariation.md) | The variations and their weights |  |

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

