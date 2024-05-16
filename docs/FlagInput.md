# LaunchDarklyApi::FlagInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** | The ID of the variation or rollout of the flag to use. Use \&quot;fallthrough\&quot; for the default targeting behavior when the flag is on. |  |
| **flag_config_version** | **Integer** | The flag version |  |
| **not_in_experiment_variation_id** | **String** | The ID of the variation to route traffic not part of the experiment analysis to. Defaults to variation ID of baseline treatment, if set. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagInput.new(
  rule_id: e432f62b-55f6-49dd-a02f-eb24acf39d05,
  flag_config_version: 12,
  not_in_experiment_variation_id: e432f62b-55f6-49dd-a02f-eb24acf39d05
)
```

