# LaunchDarklyApi::RandomizationUnitRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **randomization_unit** | **String** | The unit of randomization. Defaults to user. | [optional] |
| **standard_randomization_unit** | **String** | One of LaunchDarkly&#39;s fixed set of standard randomization units. | [optional] |
| **default** | **Boolean** | Whether this randomization unit is the default for experiments | [optional] |
| **_hidden** | **Boolean** |  | [optional] |
| **_display_name** | **String** | The display name for the randomization unit, displayed in the LaunchDarkly user interface. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::RandomizationUnitRep.new(
  randomization_unit: user,
  standard_randomization_unit: user,
  default: true,
  _hidden: null,
  _display_name: User
)
```

