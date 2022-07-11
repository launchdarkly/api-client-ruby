# LaunchDarklyApi::Projects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | A link to this resource. |  |
| **items** | [**Array&lt;Project&gt;**](Project.md) | List of projects. |  |
| **total_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Projects.new(
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  items: null,
  total_count: null
)
```

