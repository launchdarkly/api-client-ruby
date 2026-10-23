# LaunchDarklyApi::AdaptiveTriggerInstruction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** |  |  |
| **variation_id** | **String** |  |  |
| **rule_id** | **String** | The targeting rule this adaptive trigger acts on. Required for updateRuleVariationOrRollout instructions. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AdaptiveTriggerInstruction.new(
  kind: null,
  variation_id: null,
  rule_id: null
)
```

