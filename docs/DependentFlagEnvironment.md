# LaunchDarklyApi::DependentFlagEnvironment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The environment name | [optional] |
| **key** | **String** | The environment key |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **_site** | [**Link**](Link.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DependentFlagEnvironment.new(
  name: Example environment,
  key: example-environment,
  _links: null,
  _site: null
)
```

