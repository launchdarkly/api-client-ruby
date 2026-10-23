# LaunchDarklyApi::EnvironmentReleaseClause

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context_kind** | **String** | Context kind the clause applies to. Omit for &#x60;segmentMatch&#x60;. | [optional] |
| **attribute** | **String** |  |  |
| **op** | **String** | One of &#x60;in&#x60;, &#x60;endsWith&#x60;, &#x60;startsWith&#x60;, &#x60;matches&#x60;, &#x60;contains&#x60;, &#x60;lessThan&#x60;, &#x60;lessThanOrEqual&#x60;, &#x60;greaterThan&#x60;, &#x60;greaterThanOrEqual&#x60;, &#x60;before&#x60;, &#x60;after&#x60;, &#x60;segmentMatch&#x60;, &#x60;semVerEqual&#x60;, &#x60;semVerLessThan&#x60;, &#x60;semVerGreaterThan&#x60;.  |  |
| **values** | **Array&lt;Object&gt;** | JSON primitives only (strings, numbers, booleans); objects, arrays, and null are rejected. |  |
| **negate** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::EnvironmentReleaseClause.new(
  context_kind: null,
  attribute: null,
  op: null,
  values: null,
  negate: null
)
```

