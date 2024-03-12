# LaunchDarklyApi::FlagEventImpactRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **size** | **String** | The size of the flag event impact. Sizes are defined as: none (0%), small (0-20%), medium (20-80%), large (&gt;80%) | [optional] |
| **percentage** | **Float** | The percentage of the flag event impact | [optional] |
| **reason** | **String** |  | [optional] |
| **evaluations_summary** | [**EvaluationsSummary**](EvaluationsSummary.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagEventImpactRep.new(
  size: medium,
  percentage: 50,
  reason: null,
  evaluations_summary: null
)
```

