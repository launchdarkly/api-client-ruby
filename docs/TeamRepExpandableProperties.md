# LaunchDarklyApi::TeamRepExpandableProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **roles** | [**TeamCustomRoles**](TeamCustomRoles.md) |  | [optional] |
| **members** | [**TeamMembers**](TeamMembers.md) |  | [optional] |
| **projects** | [**TeamProjects**](TeamProjects.md) |  | [optional] |
| **maintainers** | [**TeamMaintainers**](TeamMaintainers.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TeamRepExpandableProperties.new(
  roles: null,
  members: null,
  projects: null,
  maintainers: null
)
```

