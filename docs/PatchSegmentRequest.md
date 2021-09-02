# LaunchDarklyApi::PatchSegmentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | Optional description of changes | [optional] |
| **instructions** | [**Array&lt;PatchSegmentInstruction&gt;**](PatchSegmentInstruction.md) | Semantic patch instructions for the desired changes to the resource |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PatchSegmentRequest.new(
  comment: null,
  instructions: [{&quot;kind&quot;:&quot;updateExpireUserTargetDate&quot;,&quot;targetType&quot;:&quot;included&quot;,&quot;userKey&quot;:&quot;userKey&quot;,&quot;value&quot;:1587582000000,&quot;version&quot;:0}]
)
```

