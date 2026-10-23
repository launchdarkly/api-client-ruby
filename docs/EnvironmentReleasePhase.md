# LaunchDarklyApi::EnvironmentReleasePhase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **phase_index** | **Integer** | Zero-based index of this phase. | [readonly] |
| **rule_id** | **String** | ID of the flag rule for this phase. New public-API releases always have a rule ID. &#x60;null&#x60; is retained only when reading a historical release that ran on the default rule.  |  |
| **description** | **String** | The description of the flag rule when this release was created. Omitted for default-rule phases.  | [optional][readonly] |
| **status** | [**ReleaseStatus**](ReleaseStatus.md) |  |  |
| **status_reason** | [**ReleaseStatusReason**](ReleaseStatusReason.md) |  | [optional] |
| **steps** | [**Array&lt;ReleaseStep&gt;**](ReleaseStep.md) |  |  |
| **current_step_index** | **Integer** | Zero-based index of the step the phase is on. Omitted until the first step starts. Once the phase completes or reverts, it stays at the last step that started, unlike &#x60;currentPhaseIndex&#x60;, which becomes &#x60;null&#x60; when the release reaches a terminal status.  | [optional][readonly] |
| **started_at** | **Integer** | Start of the phase in Unix milliseconds. | [optional][readonly] |
| **ended_at** | **Integer** | End of the phase in Unix milliseconds. | [optional][readonly] |
| **metric_statuses** | [**Hash&lt;String, ReleaseMetricStatus&gt;**](ReleaseMetricStatus.md) | Per-phase metric status keyed by metric key. Empty for progressive releases. Metric definitions and monitoring preferences live once in the parent release&#39;s &#x60;metrics&#x60; array.  | [readonly] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::EnvironmentReleasePhase.new(
  id: null,
  phase_index: null,
  rule_id: null,
  description: null,
  status: null,
  status_reason: null,
  steps: null,
  current_step_index: null,
  started_at: null,
  ended_at: null,
  metric_statuses: null
)
```

