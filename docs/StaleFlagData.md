# LaunchDarklyApi::StaleFlagData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ready_for_code_removal** | **Boolean** | Whether the flag is ready for code removal | [optional] |
| **ready_to_archive** | **Boolean** | Whether the flag is ready to be archived | [optional] |
| **cleanup_id** | **String** | If a third-party system helps clean up the flag, the ID from that system | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::StaleFlagData.new(
  ready_for_code_removal: null,
  ready_to_archive: null,
  cleanup_id: null
)
```

