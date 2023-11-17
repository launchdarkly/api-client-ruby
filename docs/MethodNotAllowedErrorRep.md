# LaunchDarklyApi::MethodNotAllowedErrorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specific error code encountered |  |
| **message** | **String** | Description of the error |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MethodNotAllowedErrorRep.new(
  code: method_not_allowed,
  message: Method not allowed
)
```

