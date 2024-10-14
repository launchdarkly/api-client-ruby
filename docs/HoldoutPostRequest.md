# LaunchDarklyApi::HoldoutPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-friendly name for the holdout | [optional] |
| **key** | **String** | A key that identifies the holdout | [optional] |
| **description** | **String** | Description of the holdout | [optional] |
| **randomizationunit** | **String** | The chosen randomization unit for the holdout base experiment | [optional] |
| **attributes** | **Array&lt;String&gt;** | The attributes that the holdout iteration&#39;s results can be sliced by | [optional] |
| **holdoutamount** | **String** | Audience allocation for the holdout | [optional] |
| **primarymetrickey** | **String** | The key of the primary metric for this holdout | [optional] |
| **metrics** | [**Array&lt;MetricInput&gt;**](MetricInput.md) | Details on the metrics for this experiment | [optional] |
| **prerequisiteflagkey** | **String** | The key of the flag that the holdout is dependent on | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::HoldoutPostRequest.new(
  name: holdout-one-name,
  key: holdout-key,
  description: My holdout-one description,
  randomizationunit: user,
  attributes: [&quot;country&quot;,&quot;device&quot;,&quot;os&quot;],
  holdoutamount: 10,
  primarymetrickey: metric-key-123abc,
  metrics: null,
  prerequisiteflagkey: flag-key-123abc
)
```

