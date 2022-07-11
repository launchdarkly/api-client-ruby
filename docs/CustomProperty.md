# LaunchDarklyApi::CustomProperty

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the custom property of this type. |  |
| **value** | **Array&lt;String&gt;** | An array of values for the custom property data to associate with this flag. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CustomProperty.new(
  name: Jira issues,
  value: [&quot;is-123&quot;,&quot;is-456&quot;]
)
```

