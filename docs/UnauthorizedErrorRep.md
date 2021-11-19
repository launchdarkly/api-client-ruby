# LaunchDarklyApi::UnauthorizedErrorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::UnauthorizedErrorRep.new(
  code: unauthorized,
  message: invalid key
)
```

