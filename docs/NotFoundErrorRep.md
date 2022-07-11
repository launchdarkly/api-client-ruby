# LaunchDarklyApi::NotFoundErrorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specific error code encountered | [optional] |
| **message** | **String** | Description of the error | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::NotFoundErrorRep.new(
  code: not_found,
  message: Invalid resource identifier
)
```

