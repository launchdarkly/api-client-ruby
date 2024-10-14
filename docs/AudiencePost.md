# LaunchDarklyApi::AudiencePost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment_key** | **String** | A project-unique key for the environment. |  |
| **name** | **String** | The audience name |  |
| **segment_keys** | **Array&lt;String&gt;** | Segments targeted by this audience. | [optional] |
| **configuration** | [**AudienceConfiguration**](AudienceConfiguration.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AudiencePost.new(
  environment_key: null,
  name: null,
  segment_keys: null,
  configuration: null
)
```

