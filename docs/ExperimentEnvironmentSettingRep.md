# LaunchDarklyApi::ExperimentEnvironmentSettingRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Integer** |  | [optional] |
| **stop_date** | **Integer** |  | [optional] |
| **enabled_periods** | [**Array&lt;ExperimentEnabledPeriodRep&gt;**](ExperimentEnabledPeriodRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExperimentEnvironmentSettingRep.new(
  start_date: null,
  stop_date: null,
  enabled_periods: null
)
```

