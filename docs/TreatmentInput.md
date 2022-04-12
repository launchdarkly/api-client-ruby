# LaunchDarklyApi::TreatmentInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **baseline** | **Boolean** |  |  |
| **allocation_percent** | **String** |  |  |
| **parameters** | [**Array&lt;TreatmentParameterInput&gt;**](TreatmentParameterInput.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TreatmentInput.new(
  name: null,
  baseline: null,
  allocation_percent: null,
  parameters: null
)
```

