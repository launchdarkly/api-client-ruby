# LaunchDarklyApi::Environment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | Links to other resources within the API. Includes the URL and content type of those resources |  |
| **_id** | **String** |  |  |
| **key** | **String** | A project-unique key for the new environment. |  |
| **name** | **String** | A human-friendly name for the new environment. |  |
| **api_key** | **String** | API key to use with client-side SDKs. |  |
| **mobile_key** | **String** | API key to use with mobile SDKs. |  |
| **color** | **String** | The color used to indicate this environment in the UI. |  |
| **default_ttl** | **Integer** | The default time (in minutes) that the PHP SDK can cache feature flag rules locally. |  |
| **secure_mode** | **Boolean** | Secure mode ensures that a user of the client-side SDK cannot impersonate another user. |  |
| **default_track_events** | **Boolean** | Enables tracking detailed information for new flags by default. |  |
| **require_comments** | **Boolean** | Whether members who modify flags and user segments through the LaunchDarkly user interface are required to add a comment |  |
| **confirm_changes** | **Boolean** | Whether members who modify flags and user segments through the LaunchDarkly user interface are required to confirm those changes |  |
| **tags** | **Array&lt;String&gt;** | A list of tags for this environment |  |
| **approval_settings** | [**ApprovalSettings**](ApprovalSettings.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Environment.new(
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/environments/my-environment&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  _id: 57be1db38b75bf0772d11384,
  key: my-environment,
  name: My Environment,
  api_key: XYZ,
  mobile_key: XYZ,
  color: F5A623,
  default_ttl: 5,
  secure_mode: true,
  default_track_events: false,
  require_comments: true,
  confirm_changes: true,
  tags: [&quot;ops&quot;],
  approval_settings: null
)
```

