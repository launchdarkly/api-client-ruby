# LaunchDarklyApi::SdkKeyPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** | The kind of SDK key. Can be either \&quot;sdk\&quot; (server-side) or \&quot;mobile\&quot; (mobile). Defaults to \&quot;sdk\&quot; when not explicitly defined. | [optional][default to &#39;sdk&#39;] |
| **key** | **String** | The user-defined key of the SDK key. |  |
| **name** | **String** | The human-readable name of the SDK key. |  |
| **description** | **String** | The optional description of the SDK key. | [optional] |
| **expiry** | **Integer** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SdkKeyPost.new(
  kind: null,
  key: null,
  name: null,
  description: null,
  expiry: null
)
```

