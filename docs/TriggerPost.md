# LaunchDarklyApi::TriggerPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | Optional comment describing the trigger | [optional] |
| **instructions** | **Array&lt;Hash&gt;** | The action to perform when triggering. This should be an array with a single object that looks like &lt;code&gt;{\&quot;kind\&quot;: \&quot;flag_action\&quot;}&lt;/code&gt;. Supported flag actions are &lt;code&gt;turnFlagOn&lt;/code&gt; and &lt;code&gt;turnFlagOff&lt;/code&gt;. | [optional] |
| **integration_key** | **String** | The unique identifier of the integration for your trigger. Use &lt;code&gt;generic-trigger&lt;/code&gt; for integrations not explicitly supported. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TriggerPost.new(
  comment: example comment,
  instructions: [{&quot;kind&quot;:&quot;turnFlagOn&quot;}],
  integration_key: generic-trigger
)
```

