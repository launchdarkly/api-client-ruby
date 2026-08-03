# LaunchDarklyApi::MetricPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique key to reference the metric |  |
| **name** | **String** | A human-friendly name for the metric | [optional] |
| **description** | **String** | Description of the metric | [optional] |
| **kind** | **String** | The kind of event your metric will track |  |
| **selector** | **String** | One or more CSS selectors. Required for click metrics only. | [optional] |
| **urls** | [**Array&lt;UrlPost&gt;**](UrlPost.md) | One or more target URLs. Required for click and pageview metrics only. | [optional] |
| **is_numeric** | **Boolean** | Whether to track numeric changes in value against a baseline (&lt;code&gt;true&lt;/code&gt;) or to track a conversion when an end user takes an action (&lt;code&gt;false&lt;/code&gt;). Required for custom and trace metrics only. | [optional] |
| **unit** | **String** | The unit of measure. Applicable for numeric custom and trace metrics only. | [optional] |
| **event_key** | **String** | The event key to use in your code. Required for custom conversion/binary and custom numeric metrics only. | [optional] |
| **success_criteria** | **String** | Success criteria. Required for custom and trace numeric metrics, optional for custom and trace conversion metrics. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the metric | [optional] |
| **randomization_units** | **Array&lt;String&gt;** | Deprecated, use &lt;code&gt;analysisUnits&lt;/code&gt; instead. | [optional] |
| **analysis_units** | **Array&lt;String&gt;** | An array of analysis units allowed for this metric. | [optional] |
| **maintainer_id** | **String** | The ID of the member who maintains this metric | [optional] |
| **unit_aggregation_type** | **String** | The method by which multiple unit event values are aggregated | [optional] |
| **analysis_type** | **String** | The method for analyzing metric events | [optional] |
| **percentile_value** | **Integer** | The percentile for the analysis method. An integer denoting the target percentile between 0 and 100. Required when &lt;code&gt;analysisType&lt;/code&gt; is &lt;code&gt;percentile&lt;/code&gt;. | [optional] |
| **event_default** | [**MetricEventDefaultRep**](MetricEventDefaultRep.md) |  | [optional] |
| **data_source** | [**MetricDataSourceRefRep**](MetricDataSourceRefRep.md) |  | [optional] |
| **filters** | [**EventFilter**](EventFilter.md) |  | [optional] |
| **window_start_offset** | **Integer** | Not yet implemented - The start of the measurement window, in milliseconds relative to the unit&#39;s first exposure to a flag variation | [optional] |
| **window_end_offset** | **Integer** | Not yet implemented - The end of the measurement window, in milliseconds relative to the unit&#39;s first exposure to a flag variation | [optional] |
| **winsor_lower_percentile** | **Float** | Lower winsorization percentile, expressed as a percent in the open interval (0, 100). When both bounds are set, defines a two-sided clamp range. Otherwise lower-only winsorization. | [optional] |
| **winsor_upper_percentile** | **Float** | Upper winsorization percentile, expressed as a percent in the open interval (0, 100). When both bounds are set, must be greater than winsorLowerPercentile. | [optional] |
| **winsor_include_imputed** | **Boolean** | When true, the percentile bound calculation includes imputed zeros. Only meaningful when at least one bound is set and the metric includes units that didn&#39;t send events. | [optional] |
| **trace_query** | **String** | The trace query to use for the metric. Required for trace metrics. | [optional] |
| **trace_value_location** | **String** | The location in the trace to use for numeric values. Required for numeric trace metrics. | [optional] |
| **unit_aggregation_field** | **String** | The warehouse column to use for counting distinct values. Required when the unitAggregationType is count_distinct. | [optional] |
| **value_column** | **String** | For numeric warehouse-native metrics, the column holding the numeric value. Overrides the value column mapped on the data source. | [optional] |
| **denominator** | [**DenominatorPost**](DenominatorPost.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricPost.new(
  key: metric-key-123abc,
  name: Example metric,
  description: optional description,
  kind: custom,
  selector: .dropdown-toggle,
  urls: invalid example,
  is_numeric: false,
  unit: orders,
  event_key: Order placed,
  success_criteria: HigherThanBaseline,
  tags: [&quot;example-tag&quot;],
  randomization_units: [&quot;user&quot;],
  analysis_units: [&quot;user&quot;],
  maintainer_id: 569fdeadbeef1644facecafe,
  unit_aggregation_type: average,
  analysis_type: mean,
  percentile_value: 95,
  event_default: null,
  data_source: null,
  filters: null,
  window_start_offset: null,
  window_end_offset: null,
  winsor_lower_percentile: 1,
  winsor_upper_percentile: 99.5,
  winsor_include_imputed: false,
  trace_query: service.name &#x3D; &quot;checkout&quot;,
  trace_value_location: duration,
  unit_aggregation_field: null,
  value_column: null,
  denominator: null
)
```

