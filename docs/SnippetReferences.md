# LaunchDarklyApi::SnippetReferences

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**PaginatedLinks**](PaginatedLinks.md) |  | [optional] |
| **resource_key** | **String** | The key of the prompt snippet. |  |
| **resource_type** | **String** | The type of the resource being referenced. |  |
| **items** | [**Array&lt;SnippetReference&gt;**](SnippetReference.md) |  |  |
| **total_count** | **Integer** | The total number of references. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SnippetReferences.new(
  _links: null,
  resource_key: null,
  resource_type: null,
  items: null,
  total_count: null
)
```

