# LaunchDarklyApi::ExpandedFlagMaintainer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The ID of the maintainer member, or the key of the maintainer team |  |
| **kind** | **String** | The type of the maintainer |  |
| **_member** | [**ViewsMemberSummary**](ViewsMemberSummary.md) |  | [optional] |
| **_team** | [**ViewsMemberTeamSummaryRep**](ViewsMemberTeamSummaryRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpandedFlagMaintainer.new(
  key: null,
  kind: null,
  _member: null,
  _team: null
)
```

