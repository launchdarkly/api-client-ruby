# LaunchDarklyApi::Extinction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **revision** | **String** | The identifier for the revision where flag became extinct. For example, a commit SHA. |  |
| **message** | **String** | Description of the extinction. For example, the commit message for the revision. |  |
| **time** | **Integer** |  |  |
| **flag_key** | **String** | The feature flag key |  |
| **proj_key** | **String** | The project key |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Extinction.new(
  revision: a94a8fe5ccb19ba61c4c0873d391e987982fbbd3,
  message: Remove flag for launched feature,
  time: null,
  flag_key: enable-feature,
  proj_key: default
)
```

