# LaunchDarklyApi::DataExportProjectRankingRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;DataExportProjectRankRep&gt;**](DataExportProjectRankRep.md) | Projects in deterministic rank order. |  |
| **page** | [**DataExportProjectRankingPageRep**](DataExportProjectRankingPageRep.md) |  |  |
| **scope** | [**DataExportProjectRankingScopeRep**](DataExportProjectRankingScopeRep.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DataExportProjectRankingRep.new(
  items: null,
  page: null,
  scope: null
)
```

