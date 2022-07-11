# LaunchDarklyApi::Defaults

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_variation** | **Integer** | The index, from the array of variations for this flag, of the variation to serve by default when targeting is on. |  |
| **off_variation** | **Integer** | The index, from the array of variations for this flag, of the variation to serve by default when targeting is off. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Defaults.new(
  on_variation: 0,
  off_variation: 1
)
```

