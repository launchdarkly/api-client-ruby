# LaunchDarklyApi::ExpiringUserTargetItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  |  |
| **_version** | **Integer** |  |  |
| **expiration_date** | **Integer** |  |  |
| **user_key** | **String** | A unique key used to represent the user |  |
| **target_type** | **String** | A segment&#39;s target type. Included when expiring user targets are updated on a user segment. | [optional] |
| **variation_id** | **String** | A unique key used to represent the flag variation. Included when expiring user targets are updated on a feature flag. | [optional] |
| **_resource_id** | [**ResourceIDResponse**](ResourceIDResponse.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpiringUserTargetItem.new(
  _id: null,
  _version: null,
  expiration_date: null,
  user_key: null,
  target_type: null,
  variation_id: null,
  _resource_id: null
)
```

