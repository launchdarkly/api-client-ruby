# LaunchDarklyApi::BooleanFlagDefaults

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **true_display_name** | **String** | The display name for the true variation, displayed in the LaunchDarkly user interface |  |
| **false_display_name** | **String** | The display name for the false variation, displayed in the LaunchDarkly user interface |  |
| **true_description** | **String** | The description for the true variation |  |
| **false_description** | **String** | The description for the false variation |  |
| **on_variation** | **Integer** | The variation index of the flag variation to use for the default targeting behavior when a flag&#39;s targeting is on and the target did not match any rules |  |
| **off_variation** | **Integer** | The variation index of the flag variation to use for the default targeting behavior when a flag&#39;s targeting is off |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::BooleanFlagDefaults.new(
  true_display_name: True,
  false_display_name: False,
  true_description: serve true,
  false_description: serve false,
  on_variation: 0,
  off_variation: 1
)
```

