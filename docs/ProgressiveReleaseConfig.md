# LaunchDarklyApi::ProgressiveReleaseConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rollout_context_kind_key** | **String** | Context kind key to use as the randomization unit for the rollout | [optional] |
| **stages** | [**Array&lt;ReleasePolicyStage&gt;**](ReleasePolicyStage.md) | List of stages | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ProgressiveReleaseConfig.new(
  rollout_context_kind_key: user,
  stages: null
)
```

