# LaunchDarklyApi::ExperimentCollectionRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;ExperimentRep&gt;**](ExperimentRep.md) |  | [optional] |
| **total_count** | **Integer** |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExperimentCollectionRep.new(
  items: null,
  total_count: null,
  _links: null
)
```

