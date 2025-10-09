# LaunchDarklyApi::RandomizationUnitInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **randomization_unit** | **String** | The unit of randomization. Must match the key of an existing context kind in this project. |  |
| **default** | **Boolean** | If true, any experiment iterations created within this project will default to using this randomization unit. A project can only have one default randomization unit. | [optional] |
| **standard_randomization_unit** | **String** | (deprecated) This field is deprecated and will be removed. Use randomizationUnit instead. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::RandomizationUnitInput.new(
  randomization_unit: user,
  default: true,
  standard_randomization_unit: user
)
```

