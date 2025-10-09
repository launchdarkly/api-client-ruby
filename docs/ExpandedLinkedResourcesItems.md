# LaunchDarklyApi::ExpandedLinkedResourcesItems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flags** | [**ExpandedLinkedResourcesFlags**](ExpandedLinkedResourcesFlags.md) |  |  |
| **segments** | [**ExpandedLinkedResourcesSegments**](ExpandedLinkedResourcesSegments.md) |  | [optional] |
| **ai_configs** | [**ExpandedLinkedResourcesAIConfigs**](ExpandedLinkedResourcesAIConfigs.md) |  | [optional] |
| **metrics** | [**ExpandedLinkedResourcesMetrics**](ExpandedLinkedResourcesMetrics.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpandedLinkedResourcesItems.new(
  flags: null,
  segments: null,
  ai_configs: null,
  metrics: null
)
```

