# LaunchDarklyApi::SegmentMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **env_id** | **String** |  | [optional] |
| **segment_id** | **String** |  | [optional] |
| **version** | **Integer** |  | [optional] |
| **included_count** | **Integer** |  | [optional] |
| **excluded_count** | **Integer** |  | [optional] |
| **deleted** | **Boolean** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SegmentMetadata.new(
  env_id: null,
  segment_id: null,
  version: null,
  included_count: null,
  excluded_count: null,
  deleted: null
)
```

