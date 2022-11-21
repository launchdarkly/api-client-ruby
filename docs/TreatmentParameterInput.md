# LaunchDarklyApi::TreatmentParameterInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flag_key** | **String** | The flag key |  |
| **variation_id** | **String** | The ID of the flag variation |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TreatmentParameterInput.new(
  flag_key: example-flag-for-experiment,
  variation_id: e432f62b-55f6-49dd-a02f-eb24acf39d05
)
```

