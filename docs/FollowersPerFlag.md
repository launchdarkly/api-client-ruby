# LaunchDarklyApi::FollowersPerFlag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flag_key** | **String** | The flag key | [optional] |
| **followers** | [**Array&lt;FollowFlagMember&gt;**](FollowFlagMember.md) | A list of members who are following this flag | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FollowersPerFlag.new(
  flag_key: example-flag-key,
  followers: null
)
```

