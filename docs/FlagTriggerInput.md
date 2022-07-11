# LaunchDarklyApi::FlagTriggerInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | Optional comment describing the update | [optional] |
| **instructions** | **Array&lt;Hash&gt;** | The instructions to perform when updating. This should be an array with objects that look like &lt;code&gt;{\&quot;kind\&quot;: \&quot;trigger_action\&quot;}&lt;/code&gt;. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagTriggerInput.new(
  comment: optional comment,
  instructions: [{&quot;kind&quot;:&quot;disableTrigger&quot;}]
)
```

