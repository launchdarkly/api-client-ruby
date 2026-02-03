# LaunchDarklyApi::ApprovalRequestPatchInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | Optional comment describing the update | [optional] |
| **instructions** | **Array&lt;Hash&gt;** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ApprovalRequestPatchInput.new(
  comment: Update targeting to serve true to beta testers,
  instructions: null
)
```

