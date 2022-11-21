# LaunchDarklyApi::BooleanDefaults

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **true_display_name** | **String** |  | [optional] |
| **false_display_name** | **String** |  | [optional] |
| **true_description** | **String** |  | [optional] |
| **false_description** | **String** |  | [optional] |
| **on_variation** | **Integer** |  | [optional] |
| **off_variation** | **Integer** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::BooleanDefaults.new(
  true_display_name: null,
  false_display_name: null,
  true_description: null,
  false_description: null,
  on_variation: null,
  off_variation: null
)
```

