# LaunchDarklyApi::MemberTeamSummaryRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_role_keys** | **Array&lt;String&gt;** | A list of keys of the custom roles this team has access to |  |
| **key** | **String** | The team key |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **name** | **String** | The team name |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MemberTeamSummaryRep.new(
  custom_role_keys: [&quot;access-to-test-projects&quot;],
  key: team-key-123abc,
  _links: null,
  name: QA Team
)
```

