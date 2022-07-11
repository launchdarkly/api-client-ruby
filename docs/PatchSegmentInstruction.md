# LaunchDarklyApi::PatchSegmentInstruction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** | The type of change to make to the user&#39;s removal date from this segment |  |
| **user_key** | **String** | A unique key used to represent the user |  |
| **target_type** | **String** | The segment&#39;s target type |  |
| **value** | **Integer** | The time, in Unix milliseconds, when the user should be removed from this segment. Required if &lt;code&gt;kind&lt;/code&gt; is &lt;code&gt;addExpireUserTargetDate&lt;/code&gt; or &lt;code&gt;updateExpireUserTargetDate&lt;/code&gt;. | [optional] |
| **version** | **Integer** | The version of the segment to update. Required if &lt;code&gt;kind&lt;/code&gt; is &lt;code&gt;updateExpireUserTargetDate&lt;/code&gt;. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PatchSegmentInstruction.new(
  kind: addExpireUserTargetDate,
  user_key: null,
  target_type: null,
  value: 1653469200000,
  version: 1
)
```

