# LaunchDarklyApi::ExperimentPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The experiment name |  |
| **description** | **String** | The experiment description | [optional] |
| **maintainer_id** | **String** | The ID of the member who maintains this experiment | [optional] |
| **key** | **String** | The experiment key |  |
| **iteration** | [**IterationInput**](IterationInput.md) |  |  |
| **holdout_id** | **String** | The ID of the holdout | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the experiment | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExperimentPost.new(
  name: Example experiment,
  description: An example experiment, used in testing,
  maintainer_id: 12ab3c45de678910fgh12345,
  key: experiment-key-123abc,
  iteration: null,
  holdout_id: f3b74309-d581-44e1-8a2b-bb2933b4fe40,
  tags: null
)
```

