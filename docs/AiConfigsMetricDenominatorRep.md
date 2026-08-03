# LaunchDarklyApi::AiConfigsMetricDenominatorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_name** | **String** | The warehouse event column for the denominator | [optional] |
| **is_numeric** | **Boolean** | Whether the denominator aggregates a numeric value | [optional] |
| **unit_aggregation_type** | **String** | How individual unit values are aggregated for the denominator | [optional] |
| **unit_aggregation_field** | **String** | The column to count distinct values of; required when unitAggregationType is count_distinct | [optional] |
| **value_column** | **String** | For a numeric denominator, the column holding the numeric value | [optional] |
| **data_source** | [**AiConfigsMetricDataSourceRefRep**](AiConfigsMetricDataSourceRefRep.md) |  | [optional] |
| **filters** | [**AiConfigsFilter**](AiConfigsFilter.md) |  | [optional] |
| **window_start_offset** | **Integer** | Start of the measurement window in milliseconds | [optional] |
| **window_end_offset** | **Integer** | End of the measurement window in milliseconds | [optional] |
| **winsor_lower_percentile** | **Float** | Lower winsorization percentile in the open interval (0, 100) | [optional] |
| **winsor_upper_percentile** | **Float** | Upper winsorization percentile in the open interval (0, 100) | [optional] |
| **winsor_include_imputed** | **Boolean** | When true, the percentile bound calculation includes imputed zeros | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AiConfigsMetricDenominatorRep.new(
  event_name: null,
  is_numeric: null,
  unit_aggregation_type: null,
  unit_aggregation_field: null,
  value_column: null,
  data_source: null,
  filters: null,
  window_start_offset: null,
  window_end_offset: null,
  winsor_lower_percentile: null,
  winsor_upper_percentile: null,
  winsor_include_imputed: null
)
```

