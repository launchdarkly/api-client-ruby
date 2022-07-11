# LaunchDarklyApi::PostFlagScheduledChangesInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | Optional comment describing the scheduled changes | [optional] |
| **execution_date** | **Integer** |  |  |
| **instructions** | **Array&lt;Hash&gt;** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PostFlagScheduledChangesInput.new(
  comment: optional comment,
  execution_date: null,
  instructions: null
)
```

