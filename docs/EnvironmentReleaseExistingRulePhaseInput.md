# LaunchDarklyApi::EnvironmentReleaseExistingRulePhaseInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** | Existing rule to release on. The rule must already include the &#x60;kind&#x60; clause for &#x60;randomizationUnit&#x60; described in &#x60;startEnvironmentRelease&#x60;.  |  |
| **steps** | [**Array&lt;EnvironmentReleaseStepInput&gt;**](EnvironmentReleaseStepInput.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::EnvironmentReleaseExistingRulePhaseInput.new(
  rule_id: null,
  steps: null
)
```

