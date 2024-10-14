# LaunchDarklyApi::Member

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **_id** | **String** | The member&#39;s ID |  |
| **first_name** | **String** | The member&#39;s first name | [optional] |
| **last_name** | **String** | The member&#39;s last name | [optional] |
| **role** | **String** | The member&#39;s built-in role. If the member has no custom roles, this role will be in effect. |  |
| **email** | **String** | The member&#39;s email address |  |
| **_pending_invite** | **Boolean** | Whether the member has a pending invitation |  |
| **_verified** | **Boolean** | Whether the member&#39;s email address has been verified |  |
| **_pending_email** | **String** | The member&#39;s email address before it has been verified, for accounts where email verification is required | [optional] |
| **custom_roles** | **Array&lt;String&gt;** | The set of custom roles (as keys) assigned to the member |  |
| **mfa** | **String** | Whether multi-factor authentication is enabled for this member |  |
| **excluded_dashboards** | **Array&lt;String&gt;** | Default dashboards that the member has chosen to ignore | [optional] |
| **_last_seen** | **Integer** |  |  |
| **_last_seen_metadata** | [**LastSeenMetadata**](LastSeenMetadata.md) |  | [optional] |
| **_integration_metadata** | [**IntegrationMetadata**](IntegrationMetadata.md) |  | [optional] |
| **teams** | [**Array&lt;MemberTeamSummaryRep&gt;**](MemberTeamSummaryRep.md) | Details on the teams this member is assigned to | [optional] |
| **permission_grants** | [**Array&lt;MemberPermissionGrantSummaryRep&gt;**](MemberPermissionGrantSummaryRep.md) | A list of permission grants. Permission grants allow a member to have access to a specific action, without having to create or update a custom role. | [optional] |
| **creation_date** | **Integer** |  |  |
| **oauth_providers** | **Array&lt;String&gt;** | A list of OAuth providers | [optional] |
| **version** | **Integer** | Version of the current configuration | [optional] |
| **role_attributes** | **Hash&lt;String, Array&gt;** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Member.new(
  _links: null,
  _id: 507f1f77bcf86cd799439011,
  first_name: Ariel,
  last_name: Flores,
  role: reader,
  email: ariel@acme.com,
  _pending_invite: false,
  _verified: true,
  _pending_email: null,
  custom_roles: [&quot;devOps&quot;,&quot;backend-devs&quot;],
  mfa: null,
  excluded_dashboards: null,
  _last_seen: null,
  _last_seen_metadata: null,
  _integration_metadata: null,
  teams: null,
  permission_grants: null,
  creation_date: null,
  oauth_providers: null,
  version: 1,
  role_attributes: null
)
```

