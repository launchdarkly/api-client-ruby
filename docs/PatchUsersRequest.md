# LaunchDarklyApi::PatchUsersRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | Optional comment describing the change | [optional] |
| **instructions** | [**Array&lt;InstructionUserRequest&gt;**](InstructionUserRequest.md) | The instructions to perform when updating |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PatchUsersRequest.new(
  comment: optional comment,
  instructions: null
)
```

