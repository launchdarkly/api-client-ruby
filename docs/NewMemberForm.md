# LaunchDarklyApi::NewMemberForm

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The member&#39;s email |  |
| **password** | **String** | The member&#39;s password | [optional] |
| **first_name** | **String** | The member&#39;s first name | [optional] |
| **last_name** | **String** | The member&#39;s last name | [optional] |
| **role** | **String** | The member&#39;s built-in role | [optional] |
| **custom_roles** | **Array&lt;String&gt;** | An array of the member&#39;s custom roles | [optional] |
| **team_keys** | **Array&lt;String&gt;** | An array of the member&#39;s teams | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::NewMemberForm.new(
  email: sandy@acme.com,
  password: ***,
  first_name: Ariel,
  last_name: Flores,
  role: reader,
  custom_roles: [&quot;customRole1&quot;,&quot;customRole2&quot;],
  team_keys: [&quot;team-1&quot;,&quot;team-2&quot;]
)
```

