# LaunchDarklyApi::ResourceSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flag_count** | **Integer** |  |  |
| **segment_count** | **Integer** |  | [optional] |
| **metric_count** | **Integer** |  | [optional] |
| **ai_config_count** | **Integer** |  | [optional] |
| **total_count** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ResourceSummary.new(
  flag_count: null,
  segment_count: null,
  metric_count: null,
  ai_config_count: null,
  total_count: null
)
```

