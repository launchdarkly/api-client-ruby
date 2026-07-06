# LaunchDarklyApi::Experiment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The experiment ID | [optional] |
| **key** | **String** | The experiment key |  |
| **name** | **String** | The experiment name |  |
| **description** | **String** | The experiment description | [optional] |
| **_maintainer_id** | **String** | The ID of the member who maintains this experiment. |  |
| **_creation_date** | **Integer** |  |  |
| **environment_key** | **String** |  |  |
| **methodology** | **String** | The results analysis approach. | [optional] |
| **data_source** | **String** | The source of metric data in order to analyze results. Defaults to \&quot;launchdarkly\&quot; when not provided. | [optional] |
| **archived_date** | **Integer** |  | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the experiment | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **holdout_id** | **String** | The holdout ID | [optional] |
| **current_iteration** | [**IterationRep**](IterationRep.md) |  | [optional] |
| **type** | **String** | The experiment type | [optional] |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **draft_iteration** | [**IterationRep**](IterationRep.md) |  | [optional] |
| **previous_iterations** | [**Array&lt;IterationRep&gt;**](IterationRep.md) | Details on the previous iterations for this experiment. | [optional] |
| **analysis_config** | [**AnalysisConfigRep**](AnalysisConfigRep.md) |  | [optional] |
| **mutable_fields_by_status** | [**MutableFieldsByStatusRep**](MutableFieldsByStatusRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Experiment.new(
  _id: 12ab3c45de678910fgh12345,
  key: experiment-key-123abc,
  name: Example experiment,
  description: An example experiment, used in testing,
  _maintainer_id: 12ab3c45de678910fgh12345,
  _creation_date: null,
  environment_key: null,
  methodology: bayesian,
  data_source: snowflake,
  archived_date: null,
  tags: [&quot;experiment&quot;,&quot;feature&quot;],
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/environments/my-environment&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/environments/my-environment/experiments/my-experiment&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  holdout_id: f3b74309-d581-44e1-8a2b-bb2933b4fe40,
  current_iteration: null,
  type: experiment,
  _access: null,
  draft_iteration: null,
  previous_iterations: null,
  analysis_config: null,
  mutable_fields_by_status: null
)
```

