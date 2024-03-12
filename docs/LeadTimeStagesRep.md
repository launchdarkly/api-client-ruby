# LaunchDarklyApi::LeadTimeStagesRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **coding_duration_ms** | **Integer** | The coding duration in milliseconds |  |
| **review_duration_ms** | **Integer** | The review duration in milliseconds | [optional] |
| **wait_duration_ms** | **Integer** | The wait duration between merge time and deploy start time in milliseconds | [optional] |
| **deploy_duration_ms** | **Integer** | The deploy duration in milliseconds | [optional] |
| **total_lead_time_ms** | **Integer** | The total lead time in milliseconds | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::LeadTimeStagesRep.new(
  coding_duration_ms: 1000000,
  review_duration_ms: 500000,
  wait_duration_ms: 100000,
  deploy_duration_ms: 100000,
  total_lead_time_ms: 1600000
)
```

