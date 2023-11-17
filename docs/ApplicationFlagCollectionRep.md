# LaunchDarklyApi::ApplicationFlagCollectionRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;FlagListingRep&gt;**](FlagListingRep.md) | A list of the flags that have been evaluated by the application | [optional] |
| **total_count** | **Integer** | The number of flags that have been evaluated by the application | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ApplicationFlagCollectionRep.new(
  items: null,
  total_count: 1,
  _links: null
)
```

