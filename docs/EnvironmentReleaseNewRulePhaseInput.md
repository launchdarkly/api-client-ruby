# LaunchDarklyApi::EnvironmentReleaseNewRulePhaseInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clauses** | [**Array&lt;EnvironmentReleaseClause&gt;**](EnvironmentReleaseClause.md) | Clauses for a new rule. Must include the &#x60;kind&#x60; clause for &#x60;randomizationUnit&#x60; described in &#x60;startEnvironmentRelease&#x60;. A new rule that exactly duplicates an existing rule on the flag returns &#x60;400&#x60; with &#x60;new rule is exact duplicate of an existing rule at index &lt;n&gt;&#x60;.  |  |
| **description** | **String** | Description for a new rule. Must differ from the description of every other rule on the flag, including rules an earlier release left in place, or the request returns &#x60;400&#x60; with &#x60;duplicate rule description not allowed&#x60;.  | [optional] |
| **steps** | [**Array&lt;EnvironmentReleaseStepInput&gt;**](EnvironmentReleaseStepInput.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::EnvironmentReleaseNewRulePhaseInput.new(
  clauses: null,
  description: null,
  steps: null
)
```

