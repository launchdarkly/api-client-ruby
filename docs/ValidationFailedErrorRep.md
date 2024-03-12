# LaunchDarklyApi::ValidationFailedErrorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specific error code encountered |  |
| **message** | **String** | Description of the error |  |
| **errors** | [**Array&lt;FailureReasonRep&gt;**](FailureReasonRep.md) | List of validation errors |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ValidationFailedErrorRep.new(
  code: invalid_request,
  message: validation failed,
  errors: null
)
```

