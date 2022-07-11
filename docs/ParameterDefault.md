# LaunchDarklyApi::ParameterDefault

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Object** | The default value for the given parameter | [optional] |
| **boolean_variation_value** | **Boolean** | Variation value for boolean flags. Not applicable for non-boolean flags. | [optional] |
| **rule_clause** | [**RuleClause**](RuleClause.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ParameterDefault.new(
  value: null,
  boolean_variation_value: null,
  rule_clause: null
)
```

