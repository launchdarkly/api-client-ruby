# LaunchDarklyApi::MetricEventDefaultRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disabled** | **Boolean** | Whether to disable defaulting missing unit events when calculating results. Defaults to false | [optional] |
| **value** | **Float** | The default value applied to missing unit events. Only available when &lt;code&gt;disabled&lt;/code&gt; is false. Defaults to 0 | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricEventDefaultRep.new(
  disabled: null,
  value: null
)
```

