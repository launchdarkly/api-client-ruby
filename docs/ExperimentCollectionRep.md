# LaunchDarklyApi::ExperimentCollectionRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;Experiment&gt;**](Experiment.md) | An array of experiments | [optional] |
| **total_count** | **Integer** | The total number of experiments in this project and environment. Does not include legacy experiments. | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExperimentCollectionRep.new(
  items: null,
  total_count: null,
  _links: null
)
```

