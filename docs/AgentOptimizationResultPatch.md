# LaunchDarklyApi::AgentOptimizationResultPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**AgentOptimizationResultStatus**](AgentOptimizationResultStatus.md) |  | [optional] |
| **activity** | [**AgentOptimizationResultActivity**](AgentOptimizationResultActivity.md) |  | [optional] |
| **completion_response** | **String** |  | [optional] |
| **variation** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **scores** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **generation_tokens** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **evaluation_tokens** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **generation_latency** | **Integer** |  | [optional] |
| **evaluation_latencies** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **created_variation_key** | **String** |  | [optional] |

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

