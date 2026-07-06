# LaunchDarklyApi::AgentOptimizationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_access** | [**AiConfigsAccess**](AiConfigsAccess.md) |  | [optional] |
| **_links** | [**ParentAndSelfLinks**](ParentAndSelfLinks.md) |  | [optional] |
| **id** | **String** |  |  |
| **run_id** | **String** |  |  |
| **agent_optimization_id** | **String** |  |  |
| **agent_optimization_version** | **Integer** |  |  |
| **status** | [**AgentOptimizationResultStatus**](AgentOptimizationResultStatus.md) |  |  |
| **activity** | [**AgentOptimizationResultActivity**](AgentOptimizationResultActivity.md) |  |  |
| **iteration** | **Integer** |  |  |
| **instructions** | **String** |  |  |
| **parameters** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **user_input** | **String** |  |  |
| **completion_response** | **String** |  | [optional] |
| **variation** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **scores** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **generation_tokens** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **evaluation_tokens** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **generation_latency** | **Integer** |  | [optional] |
| **evaluation_latencies** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **completed_at** | **Integer** |  | [optional] |
| **created_variation_key** | **String** |  | [optional] |
| **created_at** | **Integer** |  |  |
| **updated_at** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentOptimizationResult.new(
  _access: null,
  _links: null,
  id: null,
  run_id: null,
  agent_optimization_id: null,
  agent_optimization_version: null,
  status: null,
  activity: null,
  iteration: null,
  instructions: null,
  parameters: null,
  user_input: null,
  completion_response: null,
  variation: null,
  scores: null,
  generation_tokens: null,
  evaluation_tokens: null,
  generation_latency: null,
  evaluation_latencies: null,
  completed_at: null,
  created_variation_key: null,
  created_at: null,
  updated_at: null
)
```

