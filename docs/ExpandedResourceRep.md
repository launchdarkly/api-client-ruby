# LaunchDarklyApi::ExpandedResourceRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** | The type of resource |  |
| **flag** | [**ExpandedFlagRep**](ExpandedFlagRep.md) |  | [optional] |
| **segment** | [**UserSegment**](UserSegment.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpandedResourceRep.new(
  kind: flag,
  flag: null,
  segment: null
)
```

