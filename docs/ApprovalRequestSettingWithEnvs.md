# LaunchDarklyApi::ApprovalRequestSettingWithEnvs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environments** | [**Hash&lt;String, ApprovalRequestSetting&gt;**](ApprovalRequestSetting.md) | Environment-specific overrides. | [optional] |
| **_default** | [**ApprovalRequestSetting**](ApprovalRequestSetting.md) |  | [optional] |
| **_strict** | [**ApprovalRequestSetting**](ApprovalRequestSetting.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ApprovalRequestSettingWithEnvs.new(
  environments: null,
  _default: null,
  _strict: null
)
```

