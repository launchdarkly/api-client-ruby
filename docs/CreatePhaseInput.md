# LaunchDarklyApi::CreatePhaseInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **audiences** | [**Array&lt;AudiencePost&gt;**](AudiencePost.md) | An ordered list of the audiences for this release phase. Each audience corresponds to a LaunchDarkly environment. |  |
| **name** | **String** | The release phase name |  |
| **configuration** | **Object** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CreatePhaseInput.new(
  audiences: null,
  name: Phase 1 - Testing,
  configuration: null
)
```

