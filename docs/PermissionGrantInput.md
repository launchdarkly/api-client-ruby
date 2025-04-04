# LaunchDarklyApi::PermissionGrantInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_set** | **String** | A group of related actions to allow. Specify either &lt;code&gt;actionSet&lt;/code&gt; or &lt;code&gt;actions&lt;/code&gt;. Use &lt;code&gt;maintainTeam&lt;/code&gt; to add team maintainers. | [optional] |
| **actions** | **Array&lt;String&gt;** | A list of actions to allow. Specify either &lt;code&gt;actionSet&lt;/code&gt; or &lt;code&gt;actions&lt;/code&gt;. To learn more, read [Role actions](https://launchdarkly.com/docs/ld-docs/home/account/role-actions). | [optional] |
| **member_ids** | **Array&lt;String&gt;** | A list of member IDs who receive the permission grant. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PermissionGrantInput.new(
  action_set: maintainTeam,
  actions: [&quot;updateTeamMembers&quot;],
  member_ids: [&quot;12ab3c45de678910fgh12345&quot;]
)
```

