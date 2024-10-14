# LaunchDarklyApi::LayerReservationRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experiment_key** | **String** | The key of the experiment |  |
| **flag_key** | **String** | The key of the flag |  |
| **reservation_percent** | **Integer** | The percentage of traffic reserved for the experiment |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::LayerReservationRep.new(
  experiment_key: checkout-flow-experiment,
  flag_key: checkout-flow-flag,
  reservation_percent: 20
)
```

