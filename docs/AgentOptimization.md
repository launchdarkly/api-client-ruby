# LaunchDarklyApi::AgentOptimization

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_access** | [**AiConfigsAccess**](AiConfigsAccess.md) |  | [optional] |
| **_links** | [**ParentAndSelfLinks**](ParentAndSelfLinks.md) |  | [optional] |
| **id** | **String** | The agent optimization ID |  |
| **key** | **String** | The agent optimization key |  |
| **ai_config_key** | **String** | The key of the AI Config to optimize |  |
| **max_attempts** | **Integer** | The maximum number of attempts |  |
| **model_choices** | **Array&lt;String&gt;** | The models to try |  |
| **judge_model** | **String** | The model used to judge responses |  |
| **variable_choices** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | Sets of prompt variable values to try |  |
| **acceptance_statements** | [**Array&lt;AgentOptimizationAcceptanceStatement&gt;**](AgentOptimizationAcceptanceStatement.md) | Statements a response must satisfy to pass |  |
| **judges** | [**Array&lt;AgentOptimizationJudge&gt;**](AgentOptimizationJudge.md) | Judges that score each response |  |
| **user_input_options** | **Array&lt;String&gt;** | User inputs to test with |  |
| **ground_truth_responses** | **Array&lt;String&gt;** | Expected responses to compare against |  |
| **metric_key** | **String** | The key of the metric to optimize | [optional] |
| **token_limit** | **Integer** | The maximum number of tokens to use | [optional] |
| **variation_key** | **String** | The key of the variation to start from | [optional] |
| **label** | **String** | A label for the optimization | [optional] |
| **latency_optimization** | **Boolean** | Whether to optimize for lower latency | [optional] |
| **token_optimization** | **Boolean** | Whether to optimize for lower token use | [optional] |
| **auto_commit** | **Boolean** | Whether to save the best result as a new variation automatically | [optional] |
| **version** | **Integer** | The version number of this resource |  |
| **created_at** | **Integer** | When this resource was created, in Unix milliseconds |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentOptimization.new(
  _access: null,
  _links: null,
  id: null,
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
  auto_commit: null,
  version: null,
  created_at: null
)
```

