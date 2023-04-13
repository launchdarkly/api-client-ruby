# LaunchDarklyApi::TeamPostInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_role_keys** | **Array&lt;String&gt;** | List of custom role keys the team will access | [optional] |
| **description** | **String** | A description of the team | [optional] |
| **key** | **String** | The team key |  |
| **member_ids** | **Array&lt;String&gt;** | A list of member IDs who belong to the team | [optional] |
| **name** | **String** | A human-friendly name for the team |  |
| **permission_grants** | [**Array&lt;PermissionGrantInput&gt;**](PermissionGrantInput.md) | A list of permission grants. Permission grants allow access to a specific action, without having to create or update a custom role. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TeamPostInput.new(
  custom_role_keys: [&quot;example-role1&quot;,&quot;example-role2&quot;],
  description: An example team,
  key: team-key-123abc,
  member_ids: [&quot;12ab3c45de678910fgh12345&quot;],
  name: Example team,
  permission_grants: null
)
```

