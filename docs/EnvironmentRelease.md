# LaunchDarklyApi::EnvironmentRelease

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **status** | [**ReleaseStatus**](ReleaseStatus.md) |  |  |
| **status_reason** | [**ReleaseStatusReason**](ReleaseStatusReason.md) |  | [optional] |
| **project_key** | **String** |  |  |
| **environment_key** | **String** |  |  |
| **flag_key** | **String** |  |  |
| **original_variation_id** | **String** | ID of the variation the release started from. |  |
| **original_variation_value** | **Object** | The value of the variation. This may be a string, boolean, number, JSON object, or array. |  |
| **target_variation_id** | **String** | ID of the variation being released. |  |
| **target_variation_value** | **Object** | The value of the variation. This may be a string, boolean, number, JSON object, or array. |  |
| **randomization_unit** | **String** | Key of the context kind the release randomizes on. |  |
| **cleanup_behavior** | [**CleanupBehavior**](CleanupBehavior.md) |  |  |
| **kind** | [**ReleaseType**](ReleaseType.md) |  |  |
| **metrics** | [**Array&lt;ReleaseMetric&gt;**](ReleaseMetric.md) |  |  |
| **phases** | [**Array&lt;EnvironmentReleasePhase&gt;**](EnvironmentReleasePhase.md) |  |  |
| **current_phase_index** | **Integer** | Zero-based index of the active phase. Null before the first phase, between phases, and after the release reaches a terminal status. |  |
| **advancement_mode** | [**EnvironmentReleaseAdvancementMode**](EnvironmentReleaseAdvancementMode.md) |  |  |
| **created_at** | **Integer** | Creation time in Unix milliseconds. |  |
| **started_at** | **Integer** | Start of the first phase in Unix milliseconds. Absent until a phase has started. | [optional][readonly] |
| **ended_at** | **Integer** | End of the last started phase in Unix milliseconds. Present only after the release reaches a terminal status of &#x60;completed&#x60; or &#x60;reverted&#x60;. | [optional][readonly] |
| **_links** | [**Hash&lt;String, EnvironmentReleaseLink&gt;**](EnvironmentReleaseLink.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::EnvironmentRelease.new(
  id: null,
  status: null,
  status_reason: null,
  project_key: null,
  environment_key: null,
  flag_key: null,
  original_variation_id: null,
  original_variation_value: null,
  target_variation_id: null,
  target_variation_value: null,
  randomization_unit: null,
  cleanup_behavior: null,
  kind: null,
  metrics: null,
  phases: null,
  current_phase_index: null,
  advancement_mode: null,
  created_at: null,
  started_at: null,
  ended_at: null,
  _links: null
)
```

