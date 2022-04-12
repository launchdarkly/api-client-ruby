# LaunchDarklyApi::ExperimentResults

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **metadata** | [**Array&lt;ExperimentMetadataRep&gt;**](ExperimentMetadataRep.md) |  | [optional] |
| **totals** | [**Array&lt;ExperimentTotalsRep&gt;**](ExperimentTotalsRep.md) |  | [optional] |
| **series** | [**Array&lt;ExperimentTimeSeriesSlice&gt;**](ExperimentTimeSeriesSlice.md) |  | [optional] |
| **stats** | [**ExperimentStatsRep**](ExperimentStatsRep.md) |  | [optional] |
| **granularity** | **String** |  | [optional] |
| **metric_seen** | [**MetricSeen**](MetricSeen.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExperimentResults.new(
  _links: null,
  metadata: null,
  totals: null,
  series: null,
  stats: null,
  granularity: null,
  metric_seen: null
)
```

