# LaunchDarklyApi::ExpandedResourceRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** | The type of resource |  |
| **ai_config** | [**AIConfigRep**](AIConfigRep.md) |  | [optional] |
| **flag** | [**ExpandedFlagRep**](ExpandedFlagRep.md) |  | [optional] |
| **segment** | [**UserSegment**](UserSegment.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpandedResourceRep.new(
  kind: flag,
  ai_config: null,
  flag: null,
  segment: null
)
```

