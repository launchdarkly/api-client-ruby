# LaunchDarklyApi::ApplicationVersionsCollectionRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **items** | [**Array&lt;ApplicationVersionRep&gt;**](ApplicationVersionRep.md) | A list of the versions for this application | [optional] |
| **total_count** | **Integer** | The number of versions for this application | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ApplicationVersionsCollectionRep.new(
  _links: null,
  items: null,
  total_count: 1
)
```

