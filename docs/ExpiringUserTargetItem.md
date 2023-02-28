# LaunchDarklyApi::ExpiringUserTargetItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The ID of this expiring user target |  |
| **_version** | **Integer** | The version of this expiring user target |  |
| **expiration_date** | **Integer** |  |  |
| **user_key** | **String** | A unique key used to represent the user |  |
| **target_type** | **String** | A segment&#39;s target type. Included when expiring user targets are updated on a segment. | [optional] |
| **variation_id** | **String** | A unique key used to represent the flag variation. Included when expiring user targets are updated on a feature flag. | [optional] |
| **_resource_id** | [**ResourceIDResponse**](ResourceIDResponse.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpiringUserTargetItem.new(
  _id: 12ab3c45de678910fgh12345,
  _version: 1,
  expiration_date: null,
  user_key: example-user-key,
  target_type: included,
  variation_id: ce67d625-a8b9-4fb5-a344-ab909d9d4f4d,
  _resource_id: null
)
```

