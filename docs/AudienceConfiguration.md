# LaunchDarklyApi::AudienceConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **release_strategy** | **String** |  |  |
| **require_approval** | **Boolean** | Whether or not the audience requires approval |  |
| **notify_member_ids** | **Array&lt;String&gt;** | An array of member IDs. These members are notified to review the approval request. | [optional] |
| **notify_team_keys** | **Array&lt;String&gt;** | An array of team keys. The members of these teams are notified to review the approval request. | [optional] |
| **release_guardian_configuration** | [**ReleaseGuardianConfiguration**](ReleaseGuardianConfiguration.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AudienceConfiguration.new(
  release_strategy: null,
  require_approval: true,
  notify_member_ids: [&quot;1234a56b7c89d012345e678f&quot;],
  notify_team_keys: [&quot;example-reviewer-team&quot;],
  release_guardian_configuration: null
)
```

