# LaunchDarklyApi::MetricGroupRepExpandableProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experiments** | [**Array&lt;DependentExperimentRep&gt;**](DependentExperimentRep.md) |  | [optional] |
| **experiment_count** | **Integer** | The number of experiments using this metric group | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricGroupRepExpandableProperties.new(
  experiments: null,
  experiment_count: 0
)
```

