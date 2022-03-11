# LaunchDarklyApi::EnvironmentPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-friendly name for the new environment. |  |
| **key** | **String** | A project-unique key for the new environment. |  |
| **color** | **String** | A color to indicate this environment in the UI. |  |
| **default_ttl** | **Integer** | The default time (in minutes) that the PHP SDK can cache feature flag rules locally. | [optional] |
| **secure_mode** | **Boolean** | Ensures that a user of the client-side SDK cannot impersonate another user. | [optional] |
| **default_track_events** | **Boolean** | Enables tracking detailed information for new flags by default. | [optional] |
| **confirm_changes** | **Boolean** | Requires confirmation for all flag and segment changes via the UI in this environment. | [optional] |
| **require_comments** | **Boolean** | Requires comments for all flag and segment changes via the UI in this environment. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags to apply to the new environment. | [optional] |
| **source** | [**SourceEnv**](SourceEnv.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::EnvironmentPost.new(
  name: My Environment,
  key: my-environment,
  color: F5A623,
  default_ttl: 5,
  secure_mode: true,
  default_track_events: false,
  confirm_changes: false,
  require_comments: false,
  tags: [&quot;ops&quot;],
  source: null
)
```

