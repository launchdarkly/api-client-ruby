# LaunchDarklyApi::ExpiringTargetError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instruction_index** | **Integer** | The index of the PATCH instruction where the error occurred |  |
| **message** | **String** | The error message related to a failed PATCH instruction |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpiringTargetError.new(
  instruction_index: 1,
  message: example error message
)
```

