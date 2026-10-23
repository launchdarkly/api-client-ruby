# LaunchDarklyApi::AgentOptimizationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_access** | [**AiConfigsAccess**](AiConfigsAccess.md) |  | [optional] |
| **_links** | [**ParentAndSelfLinks**](ParentAndSelfLinks.md) |  | [optional] |
| **id** | **String** | The result ID |  |
| **run_id** | **String** | The ID of the run this result belongs to |  |
| **agent_optimization_id** | **String** | The agent optimization ID |  |
| **agent_optimization_version** | **Integer** | The version of the agent optimization used |  |
| **status** | [**AgentOptimizationResultStatus**](AgentOptimizationResultStatus.md) |  |  |
| **activity** | [**AgentOptimizationResultActivity**](AgentOptimizationResultActivity.md) |  |  |
| **iteration** | **Integer** | The iteration number within the run |  |
| **instructions** | **String** | The instructions used for this attempt |  |
| **parameters** | **Hash&lt;String, Object&gt;** | The model parameters used for this attempt | [optional] |
| **user_input** | **String** | The user input used for this attempt |  |
| **completion_response** | **String** | The model response | [optional] |
| **variation** | **Hash&lt;String, Object&gt;** | The variation that was tested | [optional] |
| **scores** | **Hash&lt;String, Object&gt;** | The scores for the response | [optional] |
| **generation_tokens** | **Hash&lt;String, Object&gt;** | Token usage for generating the response | [optional] |
| **evaluation_tokens** | **Hash&lt;String, Object&gt;** | Token usage for judging the response | [optional] |
| **generation_latency** | **Integer** | How long the response took to generate | [optional] |
| **evaluation_latencies** | **Hash&lt;String, Object&gt;** | How long each evaluation took | [optional] |
| **completed_at** | **Integer** | When this finished, in Unix milliseconds | [optional] |
| **created_variation_key** | **String** | The key of the variation created from this result | [optional] |
| **created_at** | **Integer** | When this resource was created, in Unix milliseconds |  |
| **updated_at** | **Integer** | When this resource was last updated, in Unix milliseconds |  |

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

