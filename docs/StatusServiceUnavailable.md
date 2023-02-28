# LaunchDarklyApi::StatusServiceUnavailable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specific error code encountered | [optional] |
| **message** | **String** | Description of the error | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::StatusServiceUnavailable.new(
  code: service_unavailable,
  message: Requested service unavailable
)
```

