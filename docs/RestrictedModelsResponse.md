# LaunchDarklyApi::RestrictedModelsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **successes** | **Array&lt;String&gt;** | Model config keys that were added to the restricted list |  |
| **errors** | [**Array&lt;RestrictedModelError&gt;**](RestrictedModelError.md) | Model config keys that were not added, with the reason for each key |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::RestrictedModelsResponse.new(
  successes: [&quot;OpenAI.gpt-image-2&quot;],
  errors: null
)
```

