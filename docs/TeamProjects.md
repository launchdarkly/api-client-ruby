# LaunchDarklyApi::TeamProjects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** |  | [optional] |
| **items** | [**Array&lt;ProjectSummary&gt;**](ProjectSummary.md) | Details on each project where team members have write privileges on at least one resource type (e.g. flags) | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TeamProjects.new(
  total_count: 1,
  items: [{&quot;_links&quot;:{&quot;environments&quot;:{&quot;href&quot;:&quot;/api/v2/projects/example-project/environments&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/example-project&quot;,&quot;type&quot;:&quot;application/json&quot;}},&quot;key&quot;:&quot;project-key-123abc&quot;,&quot;name&quot;:&quot;Example project&quot;}]
)
```

