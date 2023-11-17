# LaunchDarklyApi::EnvironmentSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **key** | **String** | A project-unique key for the environment |  |
| **name** | **String** | A human-friendly name for the environment |  |
| **color** | **String** | The color used to indicate this environment in the UI |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::EnvironmentSummary.new(
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/environments/my-environment&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  key: environment-key-123abc,
  name: My Environment,
  color: F5A623
)
```

