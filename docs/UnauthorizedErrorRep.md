# LaunchDarklyApi::UnauthorizedErrorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specific error code encountered |  |
| **message** | **String** | Description of the error |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::UnauthorizedErrorRep.new(
  code: unauthorized,
  message: Invalid access token
)
```

