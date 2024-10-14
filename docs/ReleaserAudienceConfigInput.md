# LaunchDarklyApi::ReleaserAudienceConfigInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **audience_id** | **String** | UUID of the audience. | [optional] |
| **release_guardian_configuration** | [**ReleaseGuardianConfigurationInput**](ReleaseGuardianConfigurationInput.md) |  | [optional] |
| **notify_member_ids** | **Array&lt;String&gt;** | An array of member IDs. These members are notified to review the approval request. | [optional] |
| **notify_team_keys** | **Array&lt;String&gt;** | An array of team keys. The members of these teams are notified to review the approval request. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ReleaserAudienceConfigInput.new(
  audience_id: null,
  release_guardian_configuration: null,
  notify_member_ids: [&quot;1234a56b7c89d012345e678f&quot;],
  notify_team_keys: [&quot;example-reviewer-team&quot;]
)
```

