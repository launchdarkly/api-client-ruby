# LaunchDarklyApi::PatchFlagsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | Optional comment describing the change | [optional] |
| **instructions** | **Array&lt;Hash&gt;** | The instructions to perform when updating |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PatchFlagsRequest.new(
  comment: optional comment,
  instructions: [{&quot;kind&quot;:&quot;addExpireUserTargetDate&quot;,&quot;userKey&quot;:&quot;sandy&quot;,&quot;value&quot;:1686412800000,&quot;variationId&quot;:&quot;ce12d345-a1b2-4fb5-a123-ab123d4d5f5d&quot;}]
)
```

