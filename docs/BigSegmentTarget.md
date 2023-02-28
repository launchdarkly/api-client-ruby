# LaunchDarklyApi::BigSegmentTarget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_key** | **String** | The target key |  |
| **included** | **Boolean** | Indicates whether the target is included.&lt;br /&gt;Included targets are always segment members, regardless of segment rules. |  |
| **excluded** | **Boolean** | Indicates whether the target is excluded.&lt;br /&gt;Segment rules bypass excluded targets, so they will never be included based on rules. Excluded targets may still be included explicitly. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::BigSegmentTarget.new(
  user_key: null,
  included: null,
  excluded: null
)
```

