# LaunchDarklyApi::Clause

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **attribute** | **String** |  |  |
| **op** | **String** |  |  |
| **values** | **Array&lt;Object&gt;** |  |  |
| **context_kind** | **String** |  | [optional] |
| **negate** | **Boolean** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Clause.new(
  _id: null,
  attribute: null,
  op: null,
  values: null,
  context_kind: null,
  negate: null
)
```

