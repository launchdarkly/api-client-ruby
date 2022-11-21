# LaunchDarklyApi::DependentFlagsByEnvironment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;DependentFlag&gt;**](DependentFlag.md) | A list of dependent flags, which are flags that use the requested flag as a prerequisite |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **_site** | [**Link**](Link.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DependentFlagsByEnvironment.new(
  items: null,
  _links: null,
  _site: null
)
```

