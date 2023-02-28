# LaunchDarklyApi::ResourceId

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment_key** | **String** | The environment key | [optional] |
| **flag_key** | **String** | Deprecated, use &lt;code&gt;key&lt;/code&gt; instead | [optional] |
| **key** | **String** | The key of the flag or segment | [optional] |
| **kind** | **String** |  | [optional] |
| **project_key** | **String** | The project key | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ResourceId.new(
  environment_key: staging,
  flag_key: null,
  key: example-key,
  kind: null,
  project_key: example-project
)
```

