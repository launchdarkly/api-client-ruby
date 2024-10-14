# LaunchDarklyApi::HoldoutDetailRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  |  |
| **status** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **holdout_amount** | **String** | The percentage of traffic allocated to this holdout. |  |
| **is_dirty** | **Boolean** | Indicates if the holdout experiment is running and if any related experiments are running. | [optional] |
| **created_at** | **Integer** |  |  |
| **updated_at** | **Integer** |  |  |
| **base_experiment** | [**Experiment**](Experiment.md) |  |  |
| **related_experiments** | [**Array&lt;Experiment&gt;**](Experiment.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::HoldoutDetailRep.new(
  _id: null,
  status: null,
  description: null,
  holdout_amount: null,
  is_dirty: null,
  created_at: null,
  updated_at: null,
  base_experiment: null,
  related_experiments: null
)
```

