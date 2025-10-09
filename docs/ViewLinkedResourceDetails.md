# LaunchDarklyApi::ViewLinkedResourceDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **view** | [**View**](View.md) |  | [optional] |
| **flag** | [**ExpandedFlag**](ExpandedFlag.md) |  | [optional] |
| **segment** | [**ExpandedSegment**](ExpandedSegment.md) |  | [optional] |
| **ai_config** | [**ExpandedAIConfig**](ExpandedAIConfig.md) |  | [optional] |
| **metric** | [**ExpandedMetric**](ExpandedMetric.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ViewLinkedResourceDetails.new(
  view: null,
  flag: null,
  segment: null,
  ai_config: null,
  metric: null
)
```

