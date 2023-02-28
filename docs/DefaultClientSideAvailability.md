# LaunchDarklyApi::DefaultClientSideAvailability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **using_mobile_key** | **Boolean** | Whether to enable availability for mobile SDKs |  |
| **using_environment_id** | **Boolean** | Whether to enable availability for client-side SDKs |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DefaultClientSideAvailability.new(
  using_mobile_key: true,
  using_environment_id: true
)
```

