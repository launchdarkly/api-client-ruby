# LaunchDarklyApi::CopiedFromEnv

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Key of feature flag copied |  |
| **version** | **Integer** | Version of feature flag copied | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CopiedFromEnv.new(
  key: source-flag-key-123abc,
  version: 1
)
```

