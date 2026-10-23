# LaunchDarklyApi::QuickStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_configs** | **Integer** | Number of active AI Configs |  |
| **active_experiments** | **Integer** | Number of active experiments on AI Configs |  |
| **average_satisfaction7_d** | **Float** | Average satisfaction rating over the last 7 days | [optional] |
| **spend_month_to_date** | **Float** | Spend so far this month | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::QuickStats.new(
  active_configs: null,
  active_experiments: null,
  average_satisfaction7_d: null,
  spend_month_to_date: null
)
```

