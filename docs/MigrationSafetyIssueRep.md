# LaunchDarklyApi::MigrationSafetyIssueRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **causing_rule_id** | **String** | The ID of the rule which caused this issue | [optional] |
| **affected_rule_ids** | **Array&lt;String&gt;** | A list of the IDs of the rules which are affected by this issue. &lt;code&gt;fallthrough&lt;/code&gt; is a sentinel value for the default rule. | [optional] |
| **issue** | **String** | A description of the issue that &lt;code&gt;causingRuleId&lt;/code&gt; has caused for &lt;code&gt;affectedRuleIds&lt;/code&gt;. | [optional] |
| **old_system_affected** | **Boolean** | Whether the changes caused by &lt;code&gt;causingRuleId&lt;/code&gt; bring inconsistency to the old system | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MigrationSafetyIssueRep.new(
  causing_rule_id: null,
  affected_rule_ids: null,
  issue: null,
  old_system_affected: null
)
```

