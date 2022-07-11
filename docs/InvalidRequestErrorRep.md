# LaunchDarklyApi::InvalidRequestErrorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specific error code encountered | [optional] |
| **message** | **String** | Description of the error | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InvalidRequestErrorRep.new(
  code: invalid_request,
  message: Invalid request body
)
```

