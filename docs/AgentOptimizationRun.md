# LaunchDarklyApi::AgentOptimizationRun

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |
| **optimization_key** | **String** |  |  |
| **agent_optimization_id** | **String** |  |  |
| **agent_optimization_version** | **Integer** |  |  |
| **status** | [**AgentOptimizationResultStatus**](AgentOptimizationResultStatus.md) |  |  |
| **activity** | [**AgentOptimizationResultActivity**](AgentOptimizationResultActivity.md) |  |  |
| **created_at** | **Integer** |  |  |
| **completed_at** | **Integer** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentOptimizationRun.new(
  run_id: null,
  optimization_key: null,
  agent_optimization_id: null,
  agent_optimization_version: null,
  status: null,
  activity: null,
  created_at: null,
  completed_at: null
)
```

