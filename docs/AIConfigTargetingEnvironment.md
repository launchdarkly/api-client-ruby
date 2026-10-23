# LaunchDarklyApi::AIConfigTargetingEnvironment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context_targets** | [**Array&lt;AIConfigTargetingEnvironmentTarget&gt;**](AIConfigTargetingEnvironmentTarget.md) | Individual context targets for non-user context kinds |  |
| **enabled** | **Boolean** | Whether targeting is on in this environment |  |
| **fallthrough** | [**AIConfigTargetingEnvironmentFallthrough**](AIConfigTargetingEnvironmentFallthrough.md) |  |  |
| **last_modified** | **Integer** |  |  |
| **off_variation** | **Integer** | Index of the variation served when targeting is off | [optional] |
| **rules** | [**Array&lt;AIConfigTargetingEnvironmentRule&gt;**](AIConfigTargetingEnvironmentRule.md) | The targeting rules |  |
| **targets** | [**Array&lt;AIConfigTargetingEnvironmentTarget&gt;**](AIConfigTargetingEnvironmentTarget.md) | Individual user targets |  |
| **track_events** | **Boolean** | Whether to send detailed events for all evaluations |  |
| **track_events_fallthrough** | **Boolean** | Whether to send detailed events for evaluations that fall through to the default rule |  |
| **_environment_name** | **String** | The environment name |  |
| **_version** | **Integer** | The version of the targeting in this environment |  |

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

