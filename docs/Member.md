# LaunchDarklyApi::Member

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **_id** | **String** | The member&#39;s ID |  |
| **first_name** | **String** | The member&#39;s first name | [optional] |
| **last_name** | **String** | The member&#39;s last name | [optional] |
| **role** | **String** | The member&#39;s built-in role. If the member has no custom roles, this role will be in effect. |  |
| **email** | **String** | The member&#39;s email address |  |
| **_pending_invite** | **Boolean** | Whether or not the member has a pending invitation |  |
| **_verified** | **Boolean** | Whether or not the member&#39;s email address has been verified |  |
| **_pending_email** | **String** |  | [optional] |
| **custom_roles** | **Array&lt;String&gt;** | The set of custom roles (as keys) assigned to the member |  |
| **mfa** | **String** | Whether or not multi-factor authentication is enabled for this member |  |
| **excluded_dashboards** | **Array&lt;String&gt;** | Default dashboards that the member has chosen to ignore |  |
| **_last_seen** | **Integer** |  |  |
| **_last_seen_metadata** | [**LastSeenMetadata**](LastSeenMetadata.md) |  | [optional] |
| **_integration_metadata** | [**IntegrationMetadata**](IntegrationMetadata.md) |  | [optional] |
| **teams** | [**Array&lt;MemberTeamSummaryRep&gt;**](MemberTeamSummaryRep.md) |  | [optional] |
| **permission_grants** | [**Array&lt;MemberPermissionGrantSummaryRep&gt;**](MemberPermissionGrantSummaryRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Member.new(
  _links: null,
  _id: 507f1f77bcf86cd799439011,
  first_name: Bob,
  last_name: Loblaw,
  role: reader,
  email: bob@loblaw.com,
  _pending_invite: null,
  _verified: null,
  _pending_email: null,
  custom_roles: [&quot;devOps&quot;,&quot;backend-devs&quot;],
  mfa: null,
  excluded_dashboards: null,
  _last_seen: null,
  _last_seen_metadata: null,
  _integration_metadata: null,
  teams: null,
  permission_grants: null
)
```

