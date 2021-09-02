# LaunchDarklyApi::Rollout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variations** | [**Array&lt;WeightedVariation&gt;**](WeightedVariation.md) |  |  |
| **experiment_allocation** | [**ExperimentAllocationRep**](ExperimentAllocationRep.md) |  | [optional] |
| **seed** | **Integer** |  | [optional] |
| **bucket_by** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Rollout.new(
  variations: null,
  experiment_allocation: null,
  seed: null,
  bucket_by: null
)
```

