# LaunchDarklyApi::AgentOptimizationResultPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |
| **agent_optimization_version** | **Integer** |  |  |
| **iteration** | **Integer** |  |  |
| **instructions** | **String** |  |  |
| **user_input** | **String** |  |  |
| **parameters** | **Hash&lt;String, Object&gt;** |  | [optional] |

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

