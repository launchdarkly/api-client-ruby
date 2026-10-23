# LaunchDarklyApi::AgentOptimizationResultPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** | The ID of the run this result belongs to |  |
| **agent_optimization_version** | **Integer** | The version of the agent optimization used |  |
| **iteration** | **Integer** | The iteration number within the run |  |
| **instructions** | **String** | The instructions used for this attempt |  |
| **user_input** | **String** | The user input used for this attempt |  |
| **parameters** | **Hash&lt;String, Object&gt;** | The model parameters used for this attempt | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentOptimizationResultPost.new(
  run_id: null,
  agent_optimization_version: null,
  iteration: null,
  instructions: null,
  user_input: null,
  parameters: null
)
```

