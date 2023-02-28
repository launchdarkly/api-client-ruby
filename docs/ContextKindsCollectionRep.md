# LaunchDarklyApi::ContextKindsCollectionRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;ContextKindRep&gt;**](ContextKindRep.md) | An array of context kinds |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ContextKindsCollectionRep.new(
  items: null,
  _links: null
)
```

