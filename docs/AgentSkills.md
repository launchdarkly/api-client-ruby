# LaunchDarklyApi::AgentSkills

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**PaginatedLinks**](PaginatedLinks.md) |  | [optional] |
| **items** | [**Array&lt;AgentSkill&gt;**](AgentSkill.md) | The items on this page |  |
| **total_count** | **Integer** | The total number of items |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentSkills.new(
  _links: null,
  items: null,
  total_count: null
)
```

