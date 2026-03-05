# LaunchDarklyApi::VariationTool

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The key of the tool to use. |  |
| **version** | **Integer** | The version of the tool. |  |
| **custom_parameters** | **Hash&lt;String, Object&gt;** | Custom metadata and configuration for application-level use | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::VariationTool.new(
  key: null,
  version: null,
  custom_parameters: null
)
```

