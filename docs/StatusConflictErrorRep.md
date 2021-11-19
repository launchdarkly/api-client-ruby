# LaunchDarklyApi::StatusConflictErrorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::StatusConflictErrorRep.new(
  code: optimistic_locking_error,
  message: Optimistic lock error. Please try again later.
)
```

