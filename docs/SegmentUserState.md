# LaunchDarklyApi::SegmentUserState

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **included** | [**SegmentUserList**](SegmentUserList.md) |  | [optional] |
| **excluded** | [**SegmentUserList**](SegmentUserList.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SegmentUserState.new(
  included: null,
  excluded: null
)
```

