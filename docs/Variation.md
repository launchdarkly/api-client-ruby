# LaunchDarklyApi::Variation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The ID of the variation. Leave empty when you are creating a flag. | [optional] |
| **value** | **Object** | The value of the variation. For boolean flags, this must be &lt;code&gt;true&lt;/code&gt; or &lt;code&gt;false&lt;/code&gt;. For multivariate flags, this may be a string, number, or JSON object. |  |
| **description** | **String** | Description of the variation. Defaults to an empty string, but is omitted from the response if not set. | [optional] |
| **name** | **String** | A human-friendly name for the variation. Defaults to an empty string, but is omitted from the response if not set. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Variation.new(
  _id: null,
  value: null,
  description: null,
  name: null
)
```

