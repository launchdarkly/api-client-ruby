# LaunchDarklyApi::Release

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **name** | **String** | The release pipeline name |  |
| **release_pipeline_key** | **String** | The release pipeline key |  |
| **release_pipeline_description** | **String** | The release pipeline description |  |
| **phases** | [**Array&lt;ReleasePhase&gt;**](ReleasePhase.md) | An ordered list of the release pipeline phases |  |
| **_version** | **Integer** | The release version |  |
| **_release_variation_id** | **String** | The chosen release variation ID to use across all phases of a release | [optional] |
| **_canceled_at** | **Integer** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Release.new(
  _links: null,
  name: Example release pipeline,
  release_pipeline_key: example-release-pipeline,
  release_pipeline_description: Our release pipeline for typical testing and deployment,
  phases: null,
  _version: 1,
  _release_variation_id: null,
  _canceled_at: null
)
```

