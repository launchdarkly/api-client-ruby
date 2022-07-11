# LaunchDarklyApi::FlagCopyConfigEnvironment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The environment key |  |
| **current_version** | **Integer** | Optional flag version. If you include this, the operation only succeeds if the current flag version in the environment matches this version. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagCopyConfigEnvironment.new(
  key: null,
  current_version: null
)
```

