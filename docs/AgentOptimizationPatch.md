# LaunchDarklyApi::AgentOptimizationPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_attempts** | **Integer** |  | [optional] |
| **model_choices** | **Array&lt;String&gt;** |  | [optional] |
| **judge_model** | **String** |  | [optional] |
| **variable_choices** | **Array&lt;Hash&lt;String, Object&gt;&gt;** |  | [optional] |
| **acceptance_statements** | [**Array&lt;AgentOptimizationAcceptanceStatement&gt;**](AgentOptimizationAcceptanceStatement.md) |  | [optional] |
| **judges** | [**Array&lt;AgentOptimizationJudge&gt;**](AgentOptimizationJudge.md) |  | [optional] |
| **user_input_options** | **Array&lt;String&gt;** |  | [optional] |
| **ground_truth_responses** | **Array&lt;String&gt;** |  | [optional] |
| **metric_key** | **String** |  | [optional] |
| **token_limit** | **Integer** |  | [optional] |
| **variation_key** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **latency_optimization** | **Boolean** |  | [optional] |
| **token_optimization** | **Boolean** |  | [optional] |
| **auto_commit** | **Boolean** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentOptimizationPatch.new(
  max_attempts: null,
  model_choices: null,
  judge_model: null,
  variable_choices: null,
  acceptance_statements: null,
  judges: null,
  user_input_options: null,
  ground_truth_responses: null,
  metric_key: null,
  token_limit: null,
  variation_key: null,
  label: null,
  latency_optimization: null,
  token_optimization: null,
  auto_commit: null
)
```

