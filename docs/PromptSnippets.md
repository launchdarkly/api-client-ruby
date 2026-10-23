# LaunchDarklyApi::PromptSnippets

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**PaginatedLinks**](PaginatedLinks.md) |  | [optional] |
| **items** | [**Array&lt;PromptSnippet&gt;**](PromptSnippet.md) | The items on this page |  |
| **total_count** | **Integer** | The total number of items |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PromptSnippets.new(
  _links: null,
  items: null,
  total_count: null
)
```

