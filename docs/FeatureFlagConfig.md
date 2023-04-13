# LaunchDarklyApi::FeatureFlagConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on** | **Boolean** | Whether the flag is on |  |
| **archived** | **Boolean** | Boolean indicating if the feature flag is archived |  |
| **salt** | **String** |  |  |
| **sel** | **String** |  |  |
| **last_modified** | **Integer** |  |  |
| **version** | **Integer** | Version of the feature flag |  |
| **targets** | [**Array&lt;Target&gt;**](Target.md) | An array of the individual targets that will receive a specific variation based on their key. Individual targets with a context kind of &#39;user&#39; are included here. | [optional] |
| **context_targets** | [**Array&lt;Target&gt;**](Target.md) | An array of the individual targets that will receive a specific variation based on their key. Individual targets with context kinds other than &#39;user&#39; are included here. | [optional] |
| **rules** | [**Array&lt;Rule&gt;**](Rule.md) | An array of the rules for how to serve a variation to specific targets based on their attributes | [optional] |
| **fallthrough** | [**VariationOrRolloutRep**](VariationOrRolloutRep.md) |  | [optional] |
| **off_variation** | **Integer** | The ID of the variation to serve when the flag is off | [optional] |
| **prerequisites** | [**Array&lt;Prerequisite&gt;**](Prerequisite.md) | An array of the prerequisite flags and their variations that are required before this flag takes effect | [optional] |
| **_site** | [**Link**](Link.md) |  |  |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **_environment_name** | **String** | The environment name |  |
| **track_events** | **Boolean** | Whether LaunchDarkly tracks events for the feature flag, for all rules |  |
| **track_events_fallthrough** | **Boolean** | Whether LaunchDarkly tracks events for the feature flag, for the default rule |  |
| **_debug_events_until_date** | **Integer** |  | [optional] |
| **_summary** | [**FlagSummary**](FlagSummary.md) |  | [optional] |
| **evaluation** | [**FlagConfigEvaluation**](FlagConfigEvaluation.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FeatureFlagConfig.new(
  on: null,
  archived: null,
  salt: null,
  sel: null,
  last_modified: null,
  version: null,
  targets: null,
  context_targets: null,
  rules: null,
  fallthrough: null,
  off_variation: null,
  prerequisites: null,
  _site: null,
  _access: null,
  _environment_name: null,
  track_events: null,
  track_events_fallthrough: null,
  _debug_events_until_date: null,
  _summary: null,
  evaluation: null
)
```

