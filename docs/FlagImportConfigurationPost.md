# LaunchDarklyApi::FlagImportConfigurationPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config** | **Hash&lt;String, Object&gt;** |  |  |
| **tags** | **Array&lt;String&gt;** | Tags to associate with the configuration | [optional] |
| **name** | **String** | Name to identify the configuration | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagImportConfigurationPost.new(
  config: null,
  tags: [&quot;example-tag&quot;],
  name: Sample configuration
)
```

