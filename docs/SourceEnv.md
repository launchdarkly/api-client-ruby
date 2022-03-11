# LaunchDarklyApi::SourceEnv

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The key of the source environment to clone from | [optional] |
| **version** | **Integer** | (Optional) The version number of the source environment to clone from. Used for optimistic locking | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SourceEnv.new(
  key: null,
  version: null
)
```

