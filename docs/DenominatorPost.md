# LaunchDarklyApi::DenominatorPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_name** | **String** | The warehouse event column for the denominator. Required. | [optional] |
| **is_numeric** | **Boolean** | Whether the denominator aggregates a numeric value | [optional] |
| **data_source** | [**MetricDataSourceRefRep**](MetricDataSourceRefRep.md) |  | [optional] |
| **unit_aggregation_type** | **String** | How individual unit values are aggregated. One of: average, sum, count_distinct | [optional] |
| **unit_aggregation_field** | **String** | The warehouse column to use for counting distinct values. Required when the unitAggregationType is count_distinct. | [optional] |
| **value_column** | **String** | For a numeric denominator, the column holding the numeric value. Overrides the value column mapped on the denominator data source. | [optional] |
| **filters** | [**EventFilter**](EventFilter.md) |  | [optional] |
| **window_start_offset** | **Integer** | Start of the measurement window in milliseconds | [optional] |
| **window_end_offset** | **Integer** | End of the measurement window in milliseconds | [optional] |
| **winsor_lower_percentile** | **Float** | Lower winsorization percentile in the open interval (0, 100) | [optional] |
| **winsor_upper_percentile** | **Float** | Upper winsorization percentile in the open interval (0, 100) | [optional] |
| **winsor_include_imputed** | **Boolean** | When true, includes imputed zeros in the percentile bound calculation | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DenominatorPost.new(
  event_name: checkout.started,
  is_numeric: null,
  data_source: null,
  unit_aggregation_type: sum,
  unit_aggregation_field: null,
  value_column: null,
  filters: null,
  window_start_offset: null,
  window_end_offset: null,
  winsor_lower_percentile: null,
  winsor_upper_percentile: null,
  winsor_include_imputed: null
)
```

