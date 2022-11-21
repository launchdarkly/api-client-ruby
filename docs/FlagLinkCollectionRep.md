# LaunchDarklyApi::FlagLinkCollectionRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;FlagLinkRep&gt;**](FlagLinkRep.md) | An array of flag links |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagLinkCollectionRep.new(
  items: null,
  _links: null
)
```

