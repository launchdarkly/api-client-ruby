# LaunchDarklyApi::Experiment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **key** | **String** |  |  |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **_maintainer_id** | **String** |  |  |
| **_creation_date** | **Integer** |  |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **current_iteration** | [**IterationRep**](IterationRep.md) |  | [optional] |
| **draft_iteration** | [**IterationRep**](IterationRep.md) |  | [optional] |
| **previous_iterations** | [**Array&lt;IterationRep&gt;**](IterationRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Experiment.new(
  _id: null,
  key: null,
  name: null,
  description: null,
  _maintainer_id: null,
  _creation_date: null,
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/environments/my-environment&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/environments/my-environment/experiments/my-experiment&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  current_iteration: null,
  draft_iteration: null,
  previous_iterations: null
)
```

