# LaunchDarklyApi::ExtinctionCollectionRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **items** | **Hash&lt;String, Array&lt;Extinction&gt;&gt;** | An array of extinction events |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExtinctionCollectionRep.new(
  _links: null,
  items: null
)
```

