# LaunchDarklyApi::AIConfigTargetingEnvironmentRuleClause

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attribute** | **String** | The context attribute to match |  |
| **id** | **String** | The clause ID |  |
| **negate** | **Boolean** | Whether to negate the match |  |
| **op** | **String** | The operator to use |  |
| **values** | **Array&lt;Object&gt;** | The values to match against |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfigTargetingEnvironmentRuleClause.new(
  attribute: null,
  id: null,
  negate: null,
  op: null,
  values: null
)
```

