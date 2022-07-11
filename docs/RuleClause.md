# LaunchDarklyApi::RuleClause

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attribute** | **String** | The attribute the rule applies to, for example, last name or email address | [optional] |
| **op** | **String** | The operator to apply to the given attribute | [optional] |
| **negate** | **Boolean** | Whether the operator should be negated | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::RuleClause.new(
  attribute: null,
  op: null,
  negate: null
)
```

