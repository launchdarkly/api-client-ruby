# LaunchDarklyApi::InstructionUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** | The type of change to make to the removal date for this user from individual targeting for this flag. |  |
| **flag_key** | **String** | The flag key |  |
| **variation_id** | **String** | ID of a variation on the flag |  |
| **value** | **Integer** | The time, in Unix milliseconds, when LaunchDarkly should remove the user from individual targeting for this flag. Required if &lt;code&gt;kind&lt;/code&gt; is &lt;code&gt;addExpireUserTargetDate&lt;/code&gt; or &lt;code&gt;updateExpireUserTargetDate&lt;/code&gt;. | [optional] |
| **version** | **Integer** | The version of the expiring user target to update. Optional and only used if &lt;code&gt;kind&lt;/code&gt; is &lt;code&gt;updateExpireUserTargetDate&lt;/code&gt;. If included, update will fail if version doesn&#39;t match current version of the expiring user target. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InstructionUserRequest.new(
  kind: addExpireUserTargetDate,
  flag_key: sample-flag-key,
  variation_id: ce12d345-a1b2-4fb5-a123-ab123d4d5f5d,
  value: 1653469200000,
  version: 1
)
```

