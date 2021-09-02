# LaunchDarklyApi::FeatureFlagStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Status of the flag |  |
| **last_requested** | **Time** | Timestamp of last time flag was requested | [optional] |
| **default** | **Object** | Default value seen from code | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FeatureFlagStatus.new(
  name: inactive,
  last_requested: 2020-02-05T18:17:01.514Z,
  default: null
)
```

