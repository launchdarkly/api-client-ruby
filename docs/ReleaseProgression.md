# LaunchDarklyApi::ReleaseProgression

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_created_at** | **Integer** |  |  |
| **_completed_at** | **Integer** |  | [optional] |
| **flag_key** | **String** | The flag key |  |
| **active_phase_id** | **String** | The ID of the currently active release phase | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ReleaseProgression.new(
  _created_at: null,
  _completed_at: null,
  flag_key: flag-key-123abc,
  active_phase_id: 1234a56b7c89d012345e678f,
  _links: null
)
```

