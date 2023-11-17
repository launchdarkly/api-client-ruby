# LaunchDarklyApi::PatchSegmentExpiringTargetInstruction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** | The type of change to make to the context&#39;s removal date from this segment |  |
| **context_key** | **String** | A unique key used to represent the context |  |
| **context_kind** | **String** | The kind of context |  |
| **target_type** | **String** | The segment&#39;s target type |  |
| **value** | **Integer** | The time, in Unix milliseconds, when the context should be removed from this segment. Required if &lt;code&gt;kind&lt;/code&gt; is &lt;code&gt;addExpiringTarget&lt;/code&gt; or &lt;code&gt;updateExpiringTarget&lt;/code&gt;. | [optional] |
| **version** | **Integer** | The version of the expiring target to update. Optional and only used if &lt;code&gt;kind&lt;/code&gt; is &lt;code&gt;updateExpiringTarget&lt;/code&gt;. If included, update will fail if version doesn&#39;t match current version of the expiring target. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PatchSegmentExpiringTargetInstruction.new(
  kind: addExpiringTarget,
  context_key: null,
  context_kind: user,
  target_type: null,
  value: 1653469200000,
  version: 1
)
```

