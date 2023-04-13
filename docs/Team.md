# LaunchDarklyApi::Team

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | A description of the team | [optional] |
| **key** | **String** | The team key | [optional] |
| **name** | **String** | A human-friendly name for the team | [optional] |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **_creation_date** | **Integer** |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **_last_modified** | **Integer** |  | [optional] |
| **_version** | **Integer** | The team version | [optional] |
| **_idp_synced** | **Boolean** | Whether the team has been synced with an external identity provider (IdP). Team sync is available to customers on an Enterprise plan. | [optional] |
| **roles** | [**TeamCustomRoles**](TeamCustomRoles.md) |  | [optional] |
| **members** | [**TeamMembers**](TeamMembers.md) |  | [optional] |
| **projects** | [**TeamProjects**](TeamProjects.md) |  | [optional] |
| **maintainers** | [**TeamMaintainers**](TeamMaintainers.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Team.new(
  description: Description for this team.,
  key: team-key-123abc,
  name: Example team,
  _access: null,
  _creation_date: null,
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/teams&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;roles&quot;:{&quot;href&quot;:&quot;/api/v2/teams/example-team/roles&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/teams/example-team&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  _last_modified: null,
  _version: 3,
  _idp_synced: true,
  roles: null,
  members: null,
  projects: null,
  maintainers: null
)
```

