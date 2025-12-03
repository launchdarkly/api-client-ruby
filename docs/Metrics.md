# LaunchDarklyApi::Metrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **input_tokens** | **Integer** |  | [optional] |
| **output_tokens** | **Integer** |  | [optional] |
| **total_tokens** | **Integer** |  | [optional] |
| **generation_count** | **Integer** | Number of attempted generations | [optional] |
| **generation_success_count** | **Integer** | Number of successful generations | [optional] |
| **generation_error_count** | **Integer** | Number of generations with errors | [optional] |
| **thumbs_up** | **Integer** |  | [optional] |
| **thumbs_down** | **Integer** |  | [optional] |
| **duration_ms** | **Integer** |  | [optional] |
| **time_to_first_token_ms** | **Integer** |  | [optional] |
| **satisfaction_rating** | **Float** | A value between 0 and 1 representing satisfaction rating | [optional] |
| **input_cost** | **Float** | Cost of input tokens in USD | [optional] |
| **output_cost** | **Float** | Cost of output tokens in USD | [optional] |
| **judge_accuracy** | **Float** | Average accuracy judge score (0.0-1.0) | [optional] |
| **judge_relevance** | **Float** | Average relevance judge score (0.0-1.0) | [optional] |
| **judge_toxicity** | **Float** | Average toxicity judge score (0.0-1.0) | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Metrics.new(
  input_tokens: null,
  output_tokens: null,
  total_tokens: null,
  generation_count: null,
  generation_success_count: null,
  generation_error_count: null,
  thumbs_up: null,
  thumbs_down: null,
  duration_ms: null,
  time_to_first_token_ms: null,
  satisfaction_rating: null,
  input_cost: null,
  output_cost: null,
  judge_accuracy: null,
  judge_relevance: null,
  judge_toxicity: null
)
```

