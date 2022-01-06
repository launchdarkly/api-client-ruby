# LaunchDarklyApi::ExpandedTeamRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_roles** | [**Array&lt;CustomRolesRep&gt;**](CustomRolesRep.md) |  | [optional] |
| **team_maintainers** | [**Array&lt;MemberSummaryRep&gt;**](MemberSummaryRep.md) |  | [optional] |
| **custom_role_keys** | **Array&lt;String&gt;** |  | [optional] |
| **description** | **String** |  | [optional] |
| **key** | **String** |  | [optional] |
| **member_ids** | **Array&lt;String&gt;** |  | [optional] |
| **name** | **String** |  | [optional] |
| **permission_grants** | [**Array&lt;PermissionGrantRep&gt;**](PermissionGrantRep.md) |  | [optional] |
| **project_keys** | **Array&lt;String&gt;** |  | [optional] |
| **_access** | [**AccessRep**](AccessRep.md) |  | [optional] |
| **_created_at** | **Integer** |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **_updated_at** | **Integer** |  | [optional] |
| **_version** | **Integer** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpandedTeamRep.new(
  custom_roles: null,
  team_maintainers: null,
  custom_role_keys: null,
  description: null,
  key: null,
  member_ids: null,
  name: null,
  permission_grants: null,
  project_keys: null,
  _access: null,
  _created_at: null,
  _links: null,
  _updated_at: null,
  _version: null
)
```

