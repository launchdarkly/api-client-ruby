# LaunchDarklyApi::GuardedReleaseConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rollout_context_kind_key** | **String** | Context kind key to use as the randomization unit for the rollout | [optional] |
| **min_sample_size** | **Integer** | The minimum number of samples required to make a decision | [optional] |
| **rollback_on_regression** | **Boolean** | Whether to roll back on regression | [optional] |
| **metric_keys** | **Array&lt;String&gt;** | List of metric keys | [optional] |
| **metric_group_keys** | **Array&lt;String&gt;** | List of metric group keys | [optional] |
| **stages** | [**Array&lt;ReleasePolicyStage&gt;**](ReleasePolicyStage.md) | List of stages | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::GuardedReleaseConfig.new(
  rollout_context_kind_key: user,
  min_sample_size: 100,
  rollback_on_regression: true,
  metric_keys: [&quot;http-errors&quot;,&quot;latency&quot;],
  metric_group_keys: [&quot;frontend-metrics&quot;,&quot;backend-metrics&quot;],
  stages: null
)
```

