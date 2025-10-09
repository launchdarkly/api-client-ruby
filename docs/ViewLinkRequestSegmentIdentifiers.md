# LaunchDarklyApi::ViewLinkRequestSegmentIdentifiers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segment_identifiers** | [**Array&lt;ViewLinkRequestSegmentIdentifier&gt;**](ViewLinkRequestSegmentIdentifier.md) | Identifiers of the segments to link/unlink (environmentId and segmentKey) |  |
| **comment** | **String** | Optional comment for the link/unlink operation | [optional][default to &#39;&#39;] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ViewLinkRequestSegmentIdentifiers.new(
  segment_identifiers: null,
  comment: null
)
```

