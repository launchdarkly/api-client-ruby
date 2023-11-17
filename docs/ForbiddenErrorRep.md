# LaunchDarklyApi::ForbiddenErrorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specific error code encountered |  |
| **message** | **String** | Description of the error |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ForbiddenErrorRep.new(
  code: forbidden,
  message: Forbidden. Access to the requested resource was denied.
)
```

