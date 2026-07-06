# LaunchDarklyApi::SnippetReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_config_key** | **String** | The key of the config with a variation that references this snippet. |  |
| **ai_config_name** | **String** | The name of the config with a variation that references this snippet. |  |
| **variation_id** | **String** | The ID of the variation that references this snippet. |  |
| **variation_key** | **String** | The key of the config variation that references this snippet. |  |
| **variation_name** | **String** | The name of the variation that references this snippet. |  |
| **resource_version** | **Integer** | The version of the snippet being referenced. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SnippetReference.new(
  ai_config_key: null,
  ai_config_name: null,
  variation_id: null,
  variation_key: null,
  variation_name: null,
  resource_version: null
)
```

