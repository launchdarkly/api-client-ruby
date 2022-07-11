# LaunchDarklyApi::FollowersPerFlag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flag_key** | **String** |  | [optional] |
| **followers** | [**Array&lt;FollowFlagMember&gt;**](FollowFlagMember.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FollowersPerFlag.new(
  flag_key: null,
  followers: null
)
```

