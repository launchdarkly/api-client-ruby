# LaunchDarklyApi::RestrictedModelsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keys** | **Array&lt;String&gt;** | Model config keys, not provider model IDs. Get keys from the list AI model configs endpoint. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::RestrictedModelsRequest.new(
  keys: [&quot;OpenAI.gpt-image-2&quot;]
)
```

