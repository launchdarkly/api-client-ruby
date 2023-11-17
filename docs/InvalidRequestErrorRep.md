# LaunchDarklyApi::InvalidRequestErrorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specific error code encountered |  |
| **message** | **String** | Description of the error |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InvalidRequestErrorRep.new(
  code: invalid_request,
  message: Invalid request body
)
```

