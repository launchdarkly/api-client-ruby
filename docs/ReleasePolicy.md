# LaunchDarklyApi::ReleasePolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_access** | [**ReleasePoliciesAccessRep**](ReleasePoliciesAccessRep.md) |  | [optional] |
| **_id** | **String** | The unique identifier of the release policy |  |
| **scope** | [**ReleasePolicyScope**](ReleasePolicyScope.md) |  | [optional] |
| **rank** | **Integer** | The rank/priority of the release policy |  |
| **release_method** | [**ReleaseMethod**](ReleaseMethod.md) |  |  |
| **guarded_release_config** | [**GuardedReleaseConfig**](GuardedReleaseConfig.md) |  | [optional] |
| **progressive_release_config** | [**ProgressiveReleaseConfig**](ProgressiveReleaseConfig.md) |  | [optional] |
| **name** | **String** | The name of the release policy |  |
| **key** | **String** | The human-readable key of the release policy |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ReleasePolicy.new(
  _access: null,
  _id: 550e8400-e29b-41d4-a716-446655440000,
  scope: null,
  rank: 1,
  release_method: null,
  guarded_release_config: null,
  progressive_release_config: null,
  name: Production Release,
  key: production-release
)
```

