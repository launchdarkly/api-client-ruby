# LaunchDarklyApi::PermissionGrantInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_ids** | **Array&lt;String&gt;** |  | [optional] |
| **actions** | **Array&lt;String&gt;** |  | [optional] |
| **action_set** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PermissionGrantInput.new(
  member_ids: null,
  actions: null,
  action_set: null
)
```

