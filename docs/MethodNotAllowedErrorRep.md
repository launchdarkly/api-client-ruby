# LaunchDarklyApi::MethodNotAllowedErrorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MethodNotAllowedErrorRep.new(
  code: method_not_allowed,
  message: method not allowed
)
```

