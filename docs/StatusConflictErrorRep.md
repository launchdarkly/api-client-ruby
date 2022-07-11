# LaunchDarklyApi::StatusConflictErrorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specific error code encountered | [optional] |
| **message** | **String** | Description of the error | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::StatusConflictErrorRep.new(
  code: optimistic_locking_error,
  message: Conflict. Optimistic lock error. Try again later.
)
```

