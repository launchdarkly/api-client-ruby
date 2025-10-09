# LaunchDarklyApi::GuardedReleaseConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **min_sample_size** | **Integer** | The minimum number of samples required to make a decision | [optional] |
| **rollback_on_regression** | **Boolean** | Whether to roll back on regression |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::GuardedReleaseConfig.new(
  min_sample_size: 100,
  rollback_on_regression: true
)
```

