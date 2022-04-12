# LaunchDarklyApi::EvaluationReason

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** | Describes the general reason that LaunchDarkly selected this variation. |  |
| **rule_index** | **Integer** | The positional index of the matching rule if the kind is &#39;RULE_MATCH&#39;. The index is 0-based. | [optional] |
| **rule_id** | **String** | The unique identifier of the matching rule if the kind is &#39;RULE_MATCH&#39;. | [optional] |
| **prerequisite_key** | **String** | The key of the flag that failed if the kind is &#39;PREREQUISITE_FAILED&#39;. | [optional] |
| **in_experiment** | **Boolean** | Indicates whether the user was evaluated as part of an experiment. | [optional] |
| **error_kind** | **String** | The specific error type if the kind is &#39;ERROR&#39;. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::EvaluationReason.new(
  kind: OFF,
  rule_index: 3,
  rule_id: 1234567890,
  prerequisite_key: someotherflagkey,
  in_experiment: true,
  error_kind: USER_NOT_SPECIFIED
)
```

