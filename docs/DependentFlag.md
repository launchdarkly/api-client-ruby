# LaunchDarklyApi::DependentFlag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The flag name | [optional] |
| **key** | **String** | The flag key |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **_site** | [**Link**](Link.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DependentFlag.new(
  name: Example dependent flag,
  key: example-dependent-flag,
  _links: null,
  _site: null
)
```

