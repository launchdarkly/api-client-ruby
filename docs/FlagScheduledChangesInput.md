# LaunchDarklyApi::FlagScheduledChangesInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | Optional comment describing the update to the scheduled changes | [optional] |
| **instructions** | **Array&lt;Hash&gt;** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagScheduledChangesInput.new(
  comment: optional comment,
  instructions: null
)
```

