# LaunchDarklyApi::MaintainerRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The ID of the maintainer member, or the key of the maintainer team |  |
| **kind** | **String** | The type of the maintainer |  |
| **_member** | [**MemberSummary**](MemberSummary.md) |  | [optional] |
| **_team** | [**MemberTeamSummaryRep**](MemberTeamSummaryRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MaintainerRep.new(
  key: 569fdeadbeef1644facecafe,
  kind: member,
  _member: null,
  _team: null
)
```

