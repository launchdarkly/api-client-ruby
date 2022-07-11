# LaunchDarklyApi::ProjectSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **key** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ProjectSummary.new(
  _links: {&quot;environments&quot;:{&quot;href&quot;:&quot;/api/v2/projects/example-project/environments&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/example-project&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  key: example-project,
  name: Example project
)
```

