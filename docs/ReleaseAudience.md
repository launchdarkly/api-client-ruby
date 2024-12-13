# LaunchDarklyApi::ReleaseAudience

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The audience ID |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **environment** | [**EnvironmentSummary**](EnvironmentSummary.md) |  | [optional] |
| **name** | **String** | The release phase name |  |
| **configuration** | [**AudienceConfiguration**](AudienceConfiguration.md) |  | [optional] |
| **segment_keys** | **Array&lt;String&gt;** | A list of segment keys | [optional] |
| **status** | **String** |  | [optional] |
| **_rule_ids** | **Array&lt;String&gt;** | The rules IDs added or updated by this audience | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ReleaseAudience.new(
  _id: 1234a56b7c89d012345e678g,
  _links: null,
  environment: null,
  name: Phase 1 - Testing,
  configuration: null,
  segment_keys: [&quot;segment-key-123abc&quot;],
  status: null,
  _rule_ids: null
)
```

