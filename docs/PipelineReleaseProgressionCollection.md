# LaunchDarklyApi::PipelineReleaseProgressionCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_count** | **Integer** | The number of active releases |  |
| **completed_count** | **Integer** | The number of completed releases |  |
| **items** | [**Array&lt;PipelineReleaseProgression&gt;**](PipelineReleaseProgression.md) | A list of details for each release, across all flags, for this release pipeline |  |
| **phases** | [**Array&lt;PhaseInfo&gt;**](PhaseInfo.md) | A list of details for each phase, across all releases, for this release pipeline |  |
| **total_count** | **Integer** | The total number of releases for this release pipeline |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PipelineReleaseProgressionCollection.new(
  active_count: 3,
  completed_count: 1,
  items: null,
  phases: null,
  total_count: 8,
  _links: null
)
```

