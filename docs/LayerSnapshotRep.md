# LaunchDarklyApi::LayerSnapshotRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Key of the layer the experiment was part of |  |
| **name** | **String** | Layer name at the time this experiment iteration was stopped |  |
| **reservation_percent** | **Integer** | Percent of layer traffic that was reserved in the layer for this experiment iteration |  |
| **other_reservation_percent** | **Integer** | Percent of layer traffic that was reserved for other experiments in the same environment, when this experiment iteration was stopped |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::LayerSnapshotRep.new(
  key: checkout-flow,
  name: Checkout Flow,
  reservation_percent: 10,
  other_reservation_percent: 70
)
```

