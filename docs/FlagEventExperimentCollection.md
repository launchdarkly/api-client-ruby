# LaunchDarklyApi::FlagEventExperimentCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** | The total number of experiments |  |
| **items** | [**Array&lt;FlagEventExperiment&gt;**](FlagEventExperiment.md) | A list of experiments |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagEventExperimentCollection.new(
  total_count: 1,
  items: null
)
```

