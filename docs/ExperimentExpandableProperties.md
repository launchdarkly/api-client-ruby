# LaunchDarklyApi::ExperimentExpandableProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **draft_iteration** | [**IterationRep**](IterationRep.md) |  | [optional] |
| **previous_iterations** | [**Array&lt;IterationRep&gt;**](IterationRep.md) | Details on the previous iterations for this experiment. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExperimentExpandableProperties.new(
  draft_iteration: null,
  previous_iterations: null
)
```

