# LaunchDarklyApi::AgentOptimization

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_access** | [**AiConfigsAccess**](AiConfigsAccess.md) |  | [optional] |
| **_links** | [**ParentAndSelfLinks**](ParentAndSelfLinks.md) |  | [optional] |
| **id** | **String** |  |  |
| **key** | **String** |  |  |
| **ai_config_key** | **String** |  |  |
| **max_attempts** | **Integer** |  |  |
| **model_choices** | **Array&lt;String&gt;** |  |  |
| **judge_model** | **String** |  |  |
| **variable_choices** | **Array&lt;Hash&lt;String, Object&gt;&gt;** |  |  |
| **acceptance_statements** | [**Array&lt;AgentOptimizationAcceptanceStatement&gt;**](AgentOptimizationAcceptanceStatement.md) |  |  |
| **judges** | [**Array&lt;AgentOptimizationJudge&gt;**](AgentOptimizationJudge.md) |  |  |
| **user_input_options** | **Array&lt;String&gt;** |  |  |
| **ground_truth_responses** | **Array&lt;String&gt;** |  |  |
| **metric_key** | **String** |  | [optional] |
| **token_limit** | **Integer** |  | [optional] |
| **variation_key** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **latency_optimization** | **Boolean** |  | [optional] |
| **token_optimization** | **Boolean** |  | [optional] |
| **auto_commit** | **Boolean** |  | [optional] |
| **version** | **Integer** |  |  |
| **created_at** | **Integer** |  |  |

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

