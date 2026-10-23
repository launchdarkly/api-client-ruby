# LaunchDarklyApi::ProgressiveReleaseConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rollout_context_kind_key** | **String** | Context kind key to use as the randomization unit for the rollout | [optional] |
| **stages** | [**Array&lt;ReleasePolicyStage&gt;**](ReleasePolicyStage.md) | List of stages. At most 10 stages by default; the server enforces the per-account limit, which is never more than 20. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ProgressiveReleaseConfig.new(
  rollout_context_kind_key: user,
  stages: [{&quot;allocation&quot;:25000,&quot;durationMillis&quot;:60000},{&quot;allocation&quot;:50000,&quot;durationMillis&quot;:60000}]
)
```

