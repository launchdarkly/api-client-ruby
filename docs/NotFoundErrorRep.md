# LaunchDarklyApi::NotFoundErrorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specific error code encountered |  |
| **message** | **String** | Description of the error |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::NotFoundErrorRep.new(
  code: not_found,
  message: Invalid resource identifier
)
```

