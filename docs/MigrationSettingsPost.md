# LaunchDarklyApi::MigrationSettingsPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context_kind** | **String** | Context kind for a migration with 6 stages, where data is being moved | [optional] |
| **stage_count** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MigrationSettingsPost.new(
  context_kind: null,
  stage_count: null
)
```

