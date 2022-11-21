# LaunchDarklyApi::BulkEditTeamsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_ids** | **Array&lt;String&gt;** | A list of member IDs of the members who were added to the teams. | [optional] |
| **team_keys** | **Array&lt;String&gt;** | A list of team keys of the teams that were successfully updated. | [optional] |
| **errors** | **Array&lt;Hash&lt;String, String&gt;&gt;** | A list of team keys and errors for the teams whose updates failed. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::BulkEditTeamsRep.new(
  member_ids: [&quot;1234a56b7c89d012345e678f&quot;],
  team_keys: [&quot;example-team-1&quot;],
  errors: [{&quot;example-team-2&quot;:&quot;example failure message&quot;}]
)
```

