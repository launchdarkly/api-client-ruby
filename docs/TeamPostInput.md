# LaunchDarklyApi::TeamPostInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_role_keys** | **Array&lt;String&gt;** | List of custom role keys the team will access | [optional] |
| **description** | **String** | A description of the team | [optional] |
| **key** | **String** | The team&#39;s key or ID |  |
| **member_ids** | **Array&lt;String&gt;** | A list of member IDs who belong to the team | [optional] |
| **name** | **String** | A human-friendly name for the team |  |
| **permission_grants** | [**Array&lt;PermissionGrantInput&gt;**](PermissionGrantInput.md) | A list of permission grants to apply to the team. Can use \&quot;maintainTeam\&quot; to add team maintainers | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TeamPostInput.new(
  custom_role_keys: null,
  description: null,
  key: null,
  member_ids: null,
  name: null,
  permission_grants: null
)
```

