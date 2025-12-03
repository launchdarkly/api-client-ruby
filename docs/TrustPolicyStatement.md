# LaunchDarklyApi::TrustPolicyStatement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **effect** | **String** | The effect of trust policy statement | [optional] |
| **action** | **Array&lt;String&gt;** | The action of trust policy statement | [optional] |
| **principal** | **Object** | The principal of trust policy statement | [optional] |
| **condition** | **Object** | The condition of trust policy statement | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TrustPolicyStatement.new(
  effect: null,
  action: null,
  principal: null,
  condition: null
)
```

