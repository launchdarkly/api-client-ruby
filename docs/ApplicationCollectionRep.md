# LaunchDarklyApi::ApplicationCollectionRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **items** | [**Array&lt;ApplicationRep&gt;**](ApplicationRep.md) | A list of applications | [optional] |
| **total_count** | **Integer** | The number of applications | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ApplicationCollectionRep.new(
  _links: null,
  items: null,
  total_count: 1
)
```

