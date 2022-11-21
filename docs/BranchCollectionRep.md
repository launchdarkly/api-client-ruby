# LaunchDarklyApi::BranchCollectionRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **items** | [**Array&lt;BranchRep&gt;**](BranchRep.md) | An array of branches |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::BranchCollectionRep.new(
  _links: null,
  items: null
)
```

