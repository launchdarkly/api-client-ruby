# LaunchDarklyApi::AIConfigTargetingEnvironmentRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clauses** | [**Array&lt;AIConfigTargetingEnvironmentRuleClause&gt;**](AIConfigTargetingEnvironmentRuleClause.md) | The clauses a context must match |  |
| **track_events** | **Boolean** | Whether to send detailed events for evaluations that match this rule |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfigTargetingEnvironmentRule.new(
  clauses: null,
  track_events: null
)
```

