# LaunchDarklyApi::LegacyExperimentRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_key** | **String** |  | [optional] |
| **_metric** | [**MetricListingRep**](MetricListingRep.md) |  | [optional] |
| **environments** | **Array&lt;String&gt;** |  | [optional] |
| **_environment_settings** | [**Hash&lt;String, ExperimentEnvironmentSettingRep&gt;**](ExperimentEnvironmentSettingRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::LegacyExperimentRep.new(
  metric_key: my-metric,
  _metric: null,
  environments: [&quot;production&quot;,&quot;test&quot;,&quot;my-environment&quot;],
  _environment_settings: null
)
```

