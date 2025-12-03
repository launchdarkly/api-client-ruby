# LaunchDarklyApi::PostReleasePolicyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scope** | [**ReleasePolicyScope**](ReleasePolicyScope.md) |  | [optional] |
| **release_method** | [**ReleaseMethod**](ReleaseMethod.md) |  |  |
| **guarded_release_config** | [**GuardedReleaseConfig**](GuardedReleaseConfig.md) |  | [optional] |
| **progressive_release_config** | **Object** | Configuration for progressive releases | [optional] |
| **name** | **String** | The name of the release policy |  |
| **key** | **String** | The human-readable key of the release policy |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PostReleasePolicyRequest.new(
  scope: null,
  release_method: null,
  guarded_release_config: null,
  progressive_release_config: {&quot;rolloutContextKindKey&quot;:&quot;user&quot;,&quot;stages&quot;:[{&quot;allocation&quot;:25000,&quot;durationMillis&quot;:60000},{&quot;allocation&quot;:25000,&quot;durationMillis&quot;:60000}]},
  name: Production Release,
  key: production-release
)
```

