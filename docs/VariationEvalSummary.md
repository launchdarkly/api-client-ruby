# LaunchDarklyApi::VariationEvalSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Object** | The variation value | [optional] |
| **before** | **Integer** | The number of evaluations in the ten minutes before the flag event | [optional] |
| **after** | **Integer** | The number of evaluations in the ten minutes after the flag event | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::VariationEvalSummary.new(
  value: true,
  before: 1000,
  after: 500
)
```

