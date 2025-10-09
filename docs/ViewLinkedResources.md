# LaunchDarklyApi::ViewLinkedResources

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**ViewsPaginatedLinks**](ViewsPaginatedLinks.md) |  | [optional] |
| **items** | [**Array&lt;ViewLinkedResource&gt;**](ViewLinkedResource.md) |  |  |
| **total_count** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ViewLinkedResources.new(
  _links: null,
  items: null,
  total_count: null
)
```

