# LaunchDarklyApi::ClientSideAvailabilityPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **using_environment_id** | **Boolean** | Whether to enable availability for client-side SDKs. |  |
| **using_mobile_key** | **Boolean** | Whether to enable availability for mobile SDKs. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ClientSideAvailabilityPost.new(
  using_environment_id: true,
  using_mobile_key: true
)
```

