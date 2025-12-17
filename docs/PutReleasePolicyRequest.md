# LaunchDarklyApi::PutReleasePolicyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scope** | [**ReleasePolicyScope**](ReleasePolicyScope.md) |  | [optional] |
| **release_method** | [**ReleaseMethod**](ReleaseMethod.md) |  |  |
| **guarded_release_config** | [**GuardedReleaseConfig**](GuardedReleaseConfig.md) |  | [optional] |
| **progressive_release_config** | [**ProgressiveReleaseConfig**](ProgressiveReleaseConfig.md) |  | [optional] |
| **name** | **String** | The name of the release policy |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PutReleasePolicyRequest.new(
  scope: null,
  release_method: null,
  guarded_release_config: null,
  progressive_release_config: null,
  name: Production Release
)
```

