# LaunchDarklyApi::IpAllowlistEntryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | Unique identifier for the allowlist entry |  |
| **ip_address** | **String** | IP address or CIDR block |  |
| **description** | **String** |  | [optional] |
| **_created_by_member_id** | **String** |  | [optional] |
| **_created_at** | **Integer** |  |  |
| **_updated_at** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::IpAllowlistEntryResponse.new(
  _id: c3d4e5f6-a7b8-9012-cdef-123456789012,
  ip_address: 203.0.113.0/24,
  description: Office network,
  _created_by_member_id: 507f1f77bcf86cd799439011,
  _created_at: null,
  _updated_at: null
)
```

