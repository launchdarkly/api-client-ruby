# LaunchDarklyApi::PermissionGrantInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_set** | **String** |  | [optional] |
| **actions** | **Array&lt;String&gt;** |  | [optional] |
| **member_ids** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PermissionGrantInput.new(
  action_set: null,
  actions: null,
  member_ids: null
)
```

