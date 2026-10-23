# LaunchDarklyApi::DataExportProjectRankingPageRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The bounded page size requested. |  |
| **count** | **Integer** | The number of items on this page. |  |
| **total_count** | **Integer** | The number of matching projects with usage. |  |
| **next_cursor** | **String** | An opaque cursor for the next page. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DataExportProjectRankingPageRep.new(
  limit: null,
  count: null,
  total_count: null,
  next_cursor: null
)
```

