# LaunchDarklyApi::ReleaseGuardianConfigurationInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **monitoring_window_milliseconds** | **Integer** | The monitoring window in milliseconds | [optional] |
| **rollout_weight** | **Integer** | The rollout weight | [optional] |
| **rollback_on_regression** | **Boolean** | Whether or not to rollback on regression | [optional] |
| **randomization_unit** | **String** | The randomization unit for the measured rollout | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ReleaseGuardianConfigurationInput.new(
  monitoring_window_milliseconds: 60000,
  rollout_weight: 50,
  rollback_on_regression: true,
  randomization_unit: user
)
```

