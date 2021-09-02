# LaunchDarklyApi::FlagCopyConfigPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | [**FlagCopyConfigEnvironment**](FlagCopyConfigEnvironment.md) |  |  |
| **target** | [**FlagCopyConfigEnvironment**](FlagCopyConfigEnvironment.md) |  |  |
| **comment** | **String** |  | [optional] |
| **included_actions** | **Array&lt;String&gt;** |  | [optional] |
| **excluded_actions** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagCopyConfigPost.new(
  source: null,
  target: null,
  comment: null,
  included_actions: null,
  excluded_actions: null
)
```

