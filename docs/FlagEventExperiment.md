# LaunchDarklyApi::FlagEventExperiment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The experiment key |  |
| **name** | **String** | The experiment name |  |
| **iteration** | [**FlagEventExperimentIteration**](FlagEventExperimentIteration.md) |  |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagEventExperiment.new(
  key: experiment-1,
  name: Experiment 1,
  iteration: null,
  _links: null
)
```

