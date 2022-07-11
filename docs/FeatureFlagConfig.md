# LaunchDarklyApi::FeatureFlagConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on** | **Boolean** |  |  |
| **archived** | **Boolean** |  |  |
| **salt** | **String** |  |  |
| **sel** | **String** |  |  |
| **last_modified** | **Integer** |  |  |
| **version** | **Integer** |  |  |
| **targets** | [**Array&lt;Target&gt;**](Target.md) |  | [optional] |
| **rules** | [**Array&lt;Rule&gt;**](Rule.md) |  | [optional] |
| **fallthrough** | [**VariationOrRolloutRep**](VariationOrRolloutRep.md) |  | [optional] |
| **off_variation** | **Integer** |  | [optional] |
| **prerequisites** | [**Array&lt;Prerequisite&gt;**](Prerequisite.md) |  | [optional] |
| **_site** | [**Link**](Link.md) |  |  |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **_environment_name** | **String** |  |  |
| **track_events** | **Boolean** |  |  |
| **track_events_fallthrough** | **Boolean** |  |  |
| **_debug_events_until_date** | **Integer** |  | [optional] |
| **_summary** | [**FlagSummary**](FlagSummary.md) |  | [optional] |

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
  _summary: null
)
```

