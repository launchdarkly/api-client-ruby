# LaunchDarklyApi::CreateApplicationVersionInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The unique identifier of this application version |  |
| **name** | **String** | The name of this version |  |
| **supported** | **Boolean** | Whether this version is supported. Only applicable if the application &lt;code&gt;kind&lt;/code&gt; is &lt;code&gt;mobile&lt;/code&gt;. Defaults to &lt;code&gt;true&lt;/code&gt;. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CreateApplicationVersionInput.new(
  key: 2,
  name: 01.02.03,
  supported: true
)
```

