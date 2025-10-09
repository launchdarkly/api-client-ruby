# LaunchDarklyApi::AIConfigTargetingEnvironment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context_targets** | [**Array&lt;AIConfigTargetingEnvironmentTarget&gt;**](AIConfigTargetingEnvironmentTarget.md) |  |  |
| **enabled** | **Boolean** |  |  |
| **fallthrough** | [**AIConfigTargetingEnvironmentFallthrough**](AIConfigTargetingEnvironmentFallthrough.md) |  |  |
| **last_modified** | **Integer** |  |  |
| **off_variation** | **Integer** |  | [optional] |
| **rules** | [**Array&lt;AIConfigTargetingEnvironmentRule&gt;**](AIConfigTargetingEnvironmentRule.md) |  |  |
| **targets** | [**Array&lt;AIConfigTargetingEnvironmentTarget&gt;**](AIConfigTargetingEnvironmentTarget.md) |  |  |
| **track_events** | **Boolean** |  |  |
| **track_events_fallthrough** | **Boolean** |  |  |
| **_environment_name** | **String** |  |  |
| **_version** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfigTargetingEnvironment.new(
  context_targets: null,
  enabled: null,
  fallthrough: null,
  last_modified: null,
  off_variation: null,
  rules: null,
  targets: null,
  track_events: null,
  track_events_fallthrough: null,
  _environment_name: null,
  _version: null
)
```

