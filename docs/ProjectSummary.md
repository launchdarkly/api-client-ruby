# LaunchDarklyApi::ProjectSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The ID of this project |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **key** | **String** | The project key |  |
| **name** | **String** | The project name |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ProjectSummary.new(
  _id: 57be1db38b75bf0772d11383,
  _links: {&quot;environments&quot;:{&quot;href&quot;:&quot;/api/v2/projects/example-project/environments&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/example-project&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  key: project-key-123abc,
  name: Example project
)
```

