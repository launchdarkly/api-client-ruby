# LaunchDarklyApi::Series

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time** | **Integer** | The timestamp |  |
| **value** | **Float** | The value for the given timestamp |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Series.new(
  time: 1676332800000,
  value: 92
)
```

