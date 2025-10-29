# LaunchDarklyApi::Environment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **_id** | **String** | The ID for the environment. Use this as the client-side ID for authorization in some client-side SDKs, and to associate LaunchDarkly environments with CDN integrations in edge SDKs. |  |
| **key** | **String** | A project-unique key for the new environment |  |
| **name** | **String** | A human-friendly name for the new environment |  |
| **api_key** | **String** | The SDK key for the environment. Use this for authorization in server-side SDKs. |  |
| **mobile_key** | **String** | The mobile key for the environment. Use this for authorization in mobile SDKs. |  |
| **color** | **String** | The color used to indicate this environment in the UI |  |
| **default_ttl** | **Integer** | The default time (in minutes) that the PHP SDK can cache feature flag rules locally |  |
| **secure_mode** | **Boolean** | Ensures that one end user of the client-side SDK cannot inspect the variations for another end user |  |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **default_track_events** | **Boolean** | Enables tracking detailed information for new flags by default |  |
| **require_comments** | **Boolean** | Whether members who modify flags and segments through the LaunchDarkly user interface are required to add a comment |  |
| **confirm_changes** | **Boolean** | Whether members who modify flags and segments through the LaunchDarkly user interface are required to confirm those changes |  |
| **tags** | **Array&lt;String&gt;** | A list of tags for this environment |  |
| **approval_settings** | [**ApprovalSettings**](ApprovalSettings.md) |  | [optional] |
| **resource_approval_settings** | [**Hash&lt;String, ApprovalSettings&gt;**](ApprovalSettings.md) | Details on the approval settings for this environment for each resource kind | [optional] |
| **critical** | **Boolean** | Whether the environment is critical |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Environment.new(
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/environments/my-environment&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  _id: 57be1db38b75bf0772d11384,
  key: environment-key-123abc,
  name: My Environment,
  api_key: sdk-xxx,
  mobile_key: mob-xxx,
  color: F5A623,
  default_ttl: 5,
  secure_mode: true,
  _access: null,
  default_track_events: false,
  require_comments: true,
  confirm_changes: true,
  tags: [&quot;ops&quot;],
  approval_settings: null,
  resource_approval_settings: null,
  critical: true
)
```

