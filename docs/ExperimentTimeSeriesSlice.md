# LaunchDarklyApi::ExperimentTimeSeriesSlice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time** | **Integer** |  | [optional] |
| **variation_data** | [**Array&lt;ExperimentTimeSeriesVariationSlice&gt;**](ExperimentTimeSeriesVariationSlice.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExperimentTimeSeriesSlice.new(
  time: null,
  variation_data: null
)
```

