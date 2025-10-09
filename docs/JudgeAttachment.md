# LaunchDarklyApi::JudgeAttachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **judge_config_key** | **String** | Key of the judge AI config |  |
| **sampling_rate** | **Float** | Sampling rate for this judge attachment (0.0 to 1.0) |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::JudgeAttachment.new(
  judge_config_key: null,
  sampling_rate: null
)
```

