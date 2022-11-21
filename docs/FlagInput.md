# LaunchDarklyApi::FlagInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** | The ID of the variation or rollout of the flag to use. Use \&quot;fallthrough\&quot; for the default targeting behavior when the flag is on. |  |
| **flag_config_version** | **Integer** | The flag version |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagInput.new(
  rule_id: e432f62b-55f6-49dd-a02f-eb24acf39d05,
  flag_config_version: 12
)
```

