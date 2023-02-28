# LaunchDarklyApi::ExpiringTarget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The ID of this expiring target |  |
| **_version** | **Integer** | The version of this expiring target |  |
| **expiration_date** | **Integer** |  |  |
| **context_kind** | **String** | The context kind of the context to be removed |  |
| **context_key** | **String** | A unique key used to represent the context to be removed |  |
| **target_type** | **String** | A segment&#39;s target type, &lt;code&gt;included&lt;/code&gt; or &lt;code&gt;excluded&lt;/code&gt;. Included when expiring targets are updated on a segment. | [optional] |
| **variation_id** | **String** | A unique ID used to represent the flag variation. Included when expiring targets are updated on a feature flag. | [optional] |
| **_resource_id** | [**ResourceId**](ResourceId.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpiringTarget.new(
  _id: 12ab3c45de678910abc12345,
  _version: 1,
  expiration_date: null,
  context_kind: user,
  context_key: context-key-123abc,
  target_type: included,
  variation_id: cc4332e2-bd4d-4fe0-b509-dfd2caf8dd73,
  _resource_id: null
)
```

