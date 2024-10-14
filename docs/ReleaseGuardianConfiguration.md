# LaunchDarklyApi::ReleaseGuardianConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **monitoring_window_milliseconds** | **Integer** | The monitoring window in milliseconds |  |
| **rollout_weight** | **Integer** | The rollout weight percentage |  |
| **rollback_on_regression** | **Boolean** | Whether or not to roll back on regression |  |
| **randomization_unit** | **String** | The randomization unit for the measured rollout | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ReleaseGuardianConfiguration.new(
  monitoring_window_milliseconds: 60000,
  rollout_weight: 50,
  rollback_on_regression: true,
  randomization_unit: user
)
```

