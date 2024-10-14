# LaunchDarklyApi::Audience

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment** | [**EnvironmentSummary**](EnvironmentSummary.md) |  |  |
| **name** | **String** | The release phase name |  |
| **configuration** | [**AudienceConfiguration**](AudienceConfiguration.md) |  | [optional] |
| **segment_keys** | **Array&lt;String&gt;** | A list of segment keys | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Audience.new(
  environment: null,
  name: Phase 1 - Testing,
  configuration: null,
  segment_keys: [&quot;segment-key-123abc&quot;]
)
```

