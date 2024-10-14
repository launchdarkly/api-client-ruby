# LaunchDarklyApi::HoldoutRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  |  |
| **status** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **holdout_amount** | **String** | The percentage of traffic allocated to this holdout. |  |
| **created_at** | **Integer** |  |  |
| **updated_at** | **Integer** |  |  |
| **base_experiment** | [**Experiment**](Experiment.md) |  |  |
| **experiments** | [**Array&lt;RelatedExperimentRep&gt;**](RelatedExperimentRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::HoldoutRep.new(
  _id: null,
  status: null,
  description: null,
  holdout_amount: null,
  created_at: null,
  updated_at: null,
  base_experiment: null,
  experiments: null
)
```

