# LaunchDarklyApi::BooleanFlagDefaults

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **true_display_name** | **String** |  |  |
| **false_display_name** | **String** |  |  |
| **true_description** | **String** |  |  |
| **false_description** | **String** |  |  |
| **on_variation** | **Integer** |  |  |
| **off_variation** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::BooleanFlagDefaults.new(
  true_display_name: null,
  false_display_name: null,
  true_description: null,
  false_description: null,
  on_variation: null,
  off_variation: null
)
```

