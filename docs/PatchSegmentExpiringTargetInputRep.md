# LaunchDarklyApi::PatchSegmentExpiringTargetInputRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | Optional description of changes | [optional] |
| **instructions** | [**Array&lt;PatchSegmentExpiringTargetInstruction&gt;**](PatchSegmentExpiringTargetInstruction.md) | Semantic patch instructions for the desired changes to the resource |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PatchSegmentExpiringTargetInputRep.new(
  comment: optional comment,
  instructions: [{&quot;contextKey&quot;:&quot;user@email.com&quot;,&quot;contextKind&quot;:&quot;user&quot;,&quot;kind&quot;:&quot;updateExpiringTarget&quot;,&quot;targetType&quot;:&quot;included&quot;,&quot;value&quot;:1587582000000,&quot;version&quot;:0}]
)
```

