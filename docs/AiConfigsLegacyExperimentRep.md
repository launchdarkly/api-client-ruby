# LaunchDarklyApi::AiConfigsLegacyExperimentRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_key** | **String** |  | [optional] |
| **_metric** | [**AiConfigsMetricListingRep**](AiConfigsMetricListingRep.md) |  | [optional] |
| **environments** | **Array&lt;String&gt;** |  | [optional] |
| **_environment_settings** | [**Hash&lt;String, AiConfigsExperimentEnvironmentSettingRep&gt;**](AiConfigsExperimentEnvironmentSettingRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AiConfigsLegacyExperimentRep.new(
  metric_key: my-metric,
  _metric: null,
  environments: [&quot;production&quot;,&quot;test&quot;,&quot;my-environment&quot;],
  _environment_settings: null
)
```

