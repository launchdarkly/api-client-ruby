# LaunchDarklyApi::MetricGroupRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The ID of this metric group |  |
| **key** | **String** | A unique key to reference the metric group |  |
| **name** | **String** | A human-friendly name for the metric group |  |
| **kind** | **String** | The type of the metric group |  |
| **description** | **String** | Description of the metric group | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the metric group |  |
| **_creation_date** | **Integer** |  |  |
| **_last_modified** | **Integer** |  |  |
| **maintainer** | [**MaintainerRep**](MaintainerRep.md) |  |  |
| **metrics** | [**Array&lt;MetricInGroupRep&gt;**](MetricInGroupRep.md) | An ordered list of the metrics in this metric group |  |
| **_version** | **Integer** | The version of this metric group |  |
| **experiments** | [**Array&lt;DependentExperimentRep&gt;**](DependentExperimentRep.md) |  | [optional] |
| **experiment_count** | **Integer** | The number of experiments using this metric group | [optional] |
| **active_experiment_count** | **Integer** | The number of active experiments using this metric group | [optional] |
| **active_guarded_rollout_count** | **Integer** | The number of active guarded rollouts using this metric group | [optional] |
| **total_connections_count** | **Integer** | The total number of connections using this metric group | [optional] |
| **total_active_connections_count** | **Integer** | The total number of active connections using this metric group | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricGroupRep.new(
  _id: bc3e5be1-02d2-40c7-9926-26d0aacd7aab,
  key: metric-group-key-123abc,
  name: My metric group,
  kind: funnel,
  description: Description of the metric group,
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/metric-groups/my-metric-group&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  _access: null,
  tags: [&quot;ops&quot;],
  _creation_date: null,
  _last_modified: null,
  maintainer: null,
  metrics: null,
  _version: 1,
  experiments: null,
  experiment_count: 0,
  active_experiment_count: 0,
  active_guarded_rollout_count: 0,
  total_connections_count: 0,
  total_active_connections_count: 0
)
```

