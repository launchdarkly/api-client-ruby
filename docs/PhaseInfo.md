# LaunchDarklyApi::PhaseInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The phase ID |  |
| **name** | **String** | The release phase name |  |
| **release_count** | **Integer** | The number of active releases in this phase |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PhaseInfo.new(
  _id: 1234a56b7c89d012345e678f,
  name: Phase 1 - Testing,
  release_count: 2
)
```

