# LaunchDarklyApi::Rule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The flag rule ID | [optional] |
| **disabled** | **Boolean** | Whether the rule is disabled | [optional] |
| **variation** | **Integer** | The index of the variation, from the array of variations for this flag | [optional] |
| **rollout** | [**Rollout**](Rollout.md) |  | [optional] |
| **clauses** | [**Array&lt;Clause&gt;**](Clause.md) | An array of clauses used for individual targeting based on attributes |  |
| **track_events** | **Boolean** | Whether the SDK sends a detailed event for every evaluation of this rule, instead of only summary counts. Required for Data Export, but doesn&#39;t enable Data Export on its own. |  |
| **description** | **String** | The rule description | [optional] |
| **ref** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Rule.new(
  _id: null,
  disabled: null,
  variation: null,
  rollout: null,
  clauses: null,
  track_events: null,
  description: null,
  ref: null
)
```

