# LaunchDarklyApi::StartEnvironmentReleaseBadRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  |  |
| **message** | **String** |  |  |
| **failing_checks** | [**Array&lt;ReleaseHealthCheckFailure&gt;**](ReleaseHealthCheckFailure.md) | Present when &#x60;code&#x60; is &#x60;health_checks_failed&#x60;. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::StartEnvironmentReleaseBadRequest.new(
  code: null,
  message: null,
  failing_checks: null
)
```

