# LaunchDarklyApi::StatusServiceUnavailable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specific error code encountered |  |
| **message** | **String** | Description of the error |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::StatusServiceUnavailable.new(
  code: service_unavailable,
  message: Requested service unavailable
)
```

