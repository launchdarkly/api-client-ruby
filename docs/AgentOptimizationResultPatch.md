# LaunchDarklyApi::AgentOptimizationResultPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**AgentOptimizationResultStatus**](AgentOptimizationResultStatus.md) |  | [optional] |
| **activity** | [**AgentOptimizationResultActivity**](AgentOptimizationResultActivity.md) |  | [optional] |
| **completion_response** | **String** | The model response | [optional] |
| **variation** | **Hash&lt;String, Object&gt;** | The variation that was tested | [optional] |
| **scores** | **Hash&lt;String, Object&gt;** | The scores for the response | [optional] |
| **generation_tokens** | **Hash&lt;String, Object&gt;** | Token usage for generating the response | [optional] |
| **evaluation_tokens** | **Hash&lt;String, Object&gt;** | Token usage for judging the response | [optional] |
| **generation_latency** | **Integer** | How long the response took to generate | [optional] |
| **evaluation_latencies** | **Hash&lt;String, Object&gt;** | How long each evaluation took | [optional] |
| **created_variation_key** | **String** | The key of the variation created from this result | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentOptimizationResultPatch.new(
  status: null,
  activity: null,
  completion_response: null,
  variation: null,
  scores: null,
  generation_tokens: null,
  evaluation_tokens: null,
  generation_latency: null,
  evaluation_latencies: null,
  created_variation_key: null
)
```

