# LaunchDarklyApi::CreateIpAllowlistEntryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_address** | **String** |  |  |
| **description** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CreateIpAllowlistEntryRequest.new(
  ip_address: 203.0.113.0/24,
  description: Office network
)
```

