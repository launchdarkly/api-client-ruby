# LaunchDarklyApi::MultiEnvironmentDependentFlags

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;MultiEnvironmentDependentFlag&gt;**](MultiEnvironmentDependentFlag.md) | An array of dependent flags with their environment information |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **_site** | [**Link**](Link.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MultiEnvironmentDependentFlags.new(
  items: null,
  _links: null,
  _site: null
)
```

