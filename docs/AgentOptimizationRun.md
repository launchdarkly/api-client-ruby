# LaunchDarklyApi::AgentOptimizationRun

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** | The run ID |  |
| **optimization_key** | **String** | The agent optimization key |  |
| **agent_optimization_id** | **String** | The agent optimization ID |  |
| **agent_optimization_version** | **Integer** | The version of the agent optimization used |  |
| **status** | [**AgentOptimizationResultStatus**](AgentOptimizationResultStatus.md) |  |  |
| **activity** | [**AgentOptimizationResultActivity**](AgentOptimizationResultActivity.md) |  |  |
| **created_at** | **Integer** | When this resource was created, in Unix milliseconds |  |
| **completed_at** | **Integer** | When this finished, in Unix milliseconds | [optional] |

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

