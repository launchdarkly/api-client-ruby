# LaunchDarklyApi::PullRequestLeadTimeRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **coding_duration_ms** | **Integer** | The coding duration in milliseconds |  |
| **review_duration_ms** | **Integer** | The review duration in milliseconds | [optional] |
| **max_wait_duration_ms** | **Integer** | The max wait duration between merge time and deploy start time in milliseconds | [optional] |
| **avg_wait_duration_ms** | **Integer** | The average wait duration between merge time and deploy start time in milliseconds | [optional] |
| **max_deploy_duration_ms** | **Integer** | The max deploy duration in milliseconds | [optional] |
| **avg_deploy_duration_ms** | **Integer** | The average deploy duration in milliseconds | [optional] |
| **max_total_lead_time_ms** | **Integer** | The max total lead time in milliseconds | [optional] |
| **avg_total_lead_time_ms** | **Integer** | The average total lead time in milliseconds | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PullRequestLeadTimeRep.new(
  coding_duration_ms: 1000000,
  review_duration_ms: 500000,
  max_wait_duration_ms: 100000,
  avg_wait_duration_ms: 100000,
  max_deploy_duration_ms: 100000,
  avg_deploy_duration_ms: 100000,
  max_total_lead_time_ms: 1600000,
  avg_total_lead_time_ms: 1600000
)
```

