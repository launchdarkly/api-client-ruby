# LaunchDarklyApi::FlagMigrationSettingsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context_kind** | **String** | The context kind targeted by this migration flag. Only applicable for six-stage migrations. | [optional] |
| **stage_count** | **Integer** | The number of stages for this migration flag | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagMigrationSettingsRep.new(
  context_kind: device,
  stage_count: 6
)
```

