# LaunchDarklyApi::Team

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  | [optional] |
| **key** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **_creation_date** | **Integer** |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **_last_modified** | **Integer** |  | [optional] |
| **_version** | **Integer** |  | [optional] |
| **roles** | [**TeamCustomRoles**](TeamCustomRoles.md) |  | [optional] |
| **members** | [**TeamMembers**](TeamMembers.md) |  | [optional] |
| **projects** | [**TeamProjects**](TeamProjects.md) |  | [optional] |
| **maintainers** | [**TeamMaintainers**](TeamMaintainers.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Team.new(
  description: Description for this team.,
  key: example-team,
  name: Example team,
  _access: null,
  _creation_date: null,
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/teams&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;roles&quot;:{&quot;href&quot;:&quot;/api/v2/teams/example-team/roles&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/teams/example-team&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  _last_modified: null,
  _version: 3,
  roles: null,
  members: null,
  projects: null,
  maintainers: null
)
```

