# LaunchDarklyApi::BigSegmentTarget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_key** | **String** | The user key |  |
| **included** | **Boolean** | Indicates whether the user is included.&lt;br /&gt;Included users are always segment members, regardless of segment rules. |  |
| **excluded** | **Boolean** | Indicates whether the user is excluded.&lt;br /&gt;Segment rules bypass excluded users, so they will never be included based on rules. Excluded users may still be included explicitly. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::BigSegmentTarget.new(
  user_key: null,
  included: null,
  excluded: null
)
```

