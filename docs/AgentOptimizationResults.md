# LaunchDarklyApi::AgentOptimizationResults

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**PaginatedLinks**](PaginatedLinks.md) |  | [optional] |
| **items** | [**Array&lt;AgentOptimizationResult&gt;**](AgentOptimizationResult.md) | The items on this page |  |
| **total_count** | **Integer** | The total number of items | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentOptimizationResults.new(
  _links: null,
  items: null,
  total_count: null
)
```

