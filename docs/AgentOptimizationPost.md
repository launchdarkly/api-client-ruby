# LaunchDarklyApi::AgentOptimizationPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique key for the agent optimization |  |
| **ai_config_key** | **String** | The key of the AI Config to optimize |  |
| **max_attempts** | **Integer** | The maximum number of attempts |  |
| **model_choices** | **Array&lt;String&gt;** | The models to try | [optional] |
| **judge_model** | **String** | The model used to judge responses |  |
| **variable_choices** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | Sets of prompt variable values to try | [optional] |
| **acceptance_statements** | [**Array&lt;AgentOptimizationAcceptanceStatement&gt;**](AgentOptimizationAcceptanceStatement.md) | Statements a response must satisfy to pass | [optional] |
| **judges** | [**Array&lt;AgentOptimizationJudge&gt;**](AgentOptimizationJudge.md) | Judges that score each response | [optional] |
| **user_input_options** | **Array&lt;String&gt;** | User inputs to test with | [optional] |
| **ground_truth_responses** | **Array&lt;String&gt;** | Expected responses to compare against | [optional] |
| **metric_key** | **String** | The key of the metric to optimize | [optional] |
| **token_limit** | **Integer** | The maximum number of tokens to use | [optional] |
| **variation_key** | **String** | The key of the variation to start from | [optional] |
| **label** | **String** | A label for the optimization | [optional] |
| **latency_optimization** | **Boolean** | Whether to optimize for lower latency | [optional] |
| **token_optimization** | **Boolean** | Whether to optimize for lower token use | [optional] |
| **auto_commit** | **Boolean** | Whether to save the best result as a new variation automatically | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentOptimizationPost.new(
  key: null,
  ai_config_key: null,
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

