# LaunchDarklyApi::MetricRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experiment_count** | **Integer** | The number of experiments using this metric | [optional] |
| **metric_group_count** | **Integer** | The number of metric groups using this metric | [optional] |
| **_id** | **String** | The ID of this metric |  |
| **_version_id** | **String** | The version ID of the metric |  |
| **key** | **String** | A unique key to reference the metric |  |
| **name** | **String** | A human-friendly name for the metric |  |
| **kind** | **String** | The kind of event the metric tracks |  |
| **_attached_flag_count** | **Integer** | The number of feature flags currently attached to this metric | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **_site** | [**Link**](Link.md) |  | [optional] |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the metric |  |
| **_creation_date** | **Integer** |  |  |
| **last_modified** | [**Modification**](Modification.md) |  | [optional] |
| **maintainer_id** | **String** | The ID of the member who maintains this metric | [optional] |
| **_maintainer** | [**MemberSummary**](MemberSummary.md) |  | [optional] |
| **description** | **String** | Description of the metric | [optional] |
| **is_numeric** | **Boolean** | For custom metrics, whether to track numeric changes in value against a baseline (&lt;code&gt;true&lt;/code&gt;) or to track a conversion when an end user takes an action (&lt;code&gt;false&lt;/code&gt;). | [optional] |
| **success_criteria** | **String** | For custom metrics, the success criteria | [optional] |
| **unit** | **String** | For numeric custom metrics, the unit of measure | [optional] |
| **event_key** | **String** | For custom metrics, the event key to use in your code | [optional] |
| **randomization_units** | **Array&lt;String&gt;** | An array of randomization units allowed for this metric | [optional] |
| **unit_aggregation_type** | **String** | The method in which multiple unit event values are aggregated | [optional] |
| **analysis_type** | **String** | The strategy for analyzing metric events | [optional] |
| **percentile_value** | **Integer** | The percentile, an integer denoting the target percentile between 0 and 100. Only present when &lt;code&gt;analysisType&lt;/code&gt; is &lt;code&gt;percentile&lt;/code&gt;. | [optional] |
| **event_default** | [**MetricEventDefaultRep**](MetricEventDefaultRep.md) |  | [optional] |
| **experiments** | [**Array&lt;DependentExperimentRep&gt;**](DependentExperimentRep.md) |  | [optional] |
| **metric_groups** | [**Array&lt;DependentMetricGroupRep&gt;**](DependentMetricGroupRep.md) | Metric groups that use this metric | [optional] |
| **is_active** | **Boolean** | Whether the metric is active | [optional] |
| **_attached_features** | [**Array&lt;FlagListingRep&gt;**](FlagListingRep.md) | Details on the flags attached to this metric | [optional] |
| **_version** | **Integer** | Version of the metric | [optional] |
| **selector** | **String** | For click metrics, the CSS selectors | [optional] |
| **urls** | **Array&lt;Hash&gt;** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricRep.new(
  experiment_count: 0,
  metric_group_count: 0,
  _id: 5902deadbeef667524a01290,
  _version_id: version-id-123abc,
  key: metric-key-123abc,
  name: My metric,
  kind: custom,
  _attached_flag_count: 0,
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/metrics/my-project&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/metrics/my-project/my-metric&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  _site: null,
  _access: null,
  tags: [],
  _creation_date: null,
  last_modified: null,
  maintainer_id: 569fdeadbeef1644facecafe,
  _maintainer: null,
  description: null,
  is_numeric: true,
  success_criteria: null,
  unit: null,
  event_key: null,
  randomization_units: [&quot;user&quot;],
  unit_aggregation_type: average,
  analysis_type: mean,
  percentile_value: 95,
  event_default: null,
  experiments: null,
  metric_groups: null,
  is_active: true,
  _attached_features: null,
  _version: 1,
  selector: null,
  urls: null
)
```

