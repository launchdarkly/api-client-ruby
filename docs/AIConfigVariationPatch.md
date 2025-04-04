# LaunchDarklyApi::AIConfigVariationPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **messages** | [**Array&lt;Message&gt;**](Message.md) |  | [optional] |
| **model** | **Object** |  | [optional] |
| **model_config_key** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **published** | **Boolean** |  | [optional] |
| **state** | **String** | One of &#39;archived&#39;, &#39;published&#39; | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfigVariationPatch.new(
  messages: null,
  model: null,
  model_config_key: null,
  name: null,
  published: null,
  state: null
)
```

