# LaunchDarklyApi::ReleaseMetric

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_key** | **String** |  |  |
| **metric_version_id** | **String** |  | [optional][readonly] |
| **auto_rollback** | **Boolean** | Whether a regression automatically reverts the release. |  |
| **definition** | [**EnvironmentReleasesMetricListingRep**](EnvironmentReleasesMetricListingRep.md) | Present only when the caller requests &#x60;expand&#x3D;metrics&#x60; and the pinned metric version still exists. A metric whose pinned version has been deleted keeps its &#x60;metricKey&#x60; and &#x60;metricVersionId&#x60; but has no definition.  | [optional][readonly] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ReleaseMetric.new(
  metric_key: null,
  metric_version_id: null,
  auto_rollback: null,
  definition: null
)
```

