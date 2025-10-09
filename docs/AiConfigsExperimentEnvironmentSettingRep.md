# LaunchDarklyApi::AiConfigsExperimentEnvironmentSettingRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Integer** |  | [optional] |
| **stop_date** | **Integer** |  | [optional] |
| **enabled_periods** | [**Array&lt;AiConfigsExperimentEnabledPeriodRep&gt;**](AiConfigsExperimentEnabledPeriodRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AiConfigsExperimentEnvironmentSettingRep.new(
  start_date: null,
  stop_date: null,
  enabled_periods: null
)
```

