# LaunchDarklyApi::AIConfigTargetingDefaults

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_variation** | **Integer** | Index of the variation served when targeting is on |  |
| **off_variation** | **Integer** | Index of the variation served when targeting is off |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfigTargetingDefaults.new(
  on_variation: null,
  off_variation: null
)
```

