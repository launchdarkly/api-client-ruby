# LaunchDarklyApi::AgentGraphs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**PaginatedLinks**](PaginatedLinks.md) |  | [optional] |
| **items** | [**Array&lt;AgentGraph&gt;**](AgentGraph.md) | The items on this page |  |
| **total_count** | **Integer** | The total number of items |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentGraphs.new(
  _links: null,
  items: null,
  total_count: null
)
```

