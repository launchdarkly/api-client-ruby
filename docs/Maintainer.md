# LaunchDarklyApi::Maintainer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **kind** | **String** |  |  |
| **maintainer_member** | [**ViewsMaintainerMember**](ViewsMaintainerMember.md) |  | [optional] |
| **maintainer_team** | [**ViewsMaintainerTeam**](ViewsMaintainerTeam.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Maintainer.new(
  id: null,
  kind: null,
  maintainer_member: null,
  maintainer_team: null
)
```

