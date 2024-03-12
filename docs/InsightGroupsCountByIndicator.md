# LaunchDarklyApi::InsightGroupsCountByIndicator

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **excellent** | **Integer** | The number of insight groups with an excellent indicator |  |
| **good** | **Integer** | The number of insight groups with a good indicator |  |
| **fair** | **Integer** | The number of insight groups with a fair indicator |  |
| **needs_attention** | **Integer** | The number of insight groups with a needs attention indicator |  |
| **not_calculated** | **Integer** | The number of insight groups with a not calculated indicator |  |
| **unknown** | **Integer** | The number of insight groups with an unknown indicator |  |
| **total** | **Integer** | The total number of insight groups |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InsightGroupsCountByIndicator.new(
  excellent: 1,
  good: 1,
  fair: 1,
  needs_attention: 1,
  not_calculated: 1,
  unknown: 1,
  total: 6
)
```

