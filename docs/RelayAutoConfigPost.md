# LaunchDarklyApi::RelayAutoConfigPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-friendly name for the Relay Proxy configuration |  |
| **policy** | [**Array&lt;Statement&gt;**](Statement.md) | A description of what environments and projects the Relay Proxy should include or exclude. To learn more, read [Write an inline policy](https://launchdarkly.com/docs/sdk/relay-proxy/automatic-configuration#write-an-inline-policy). |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::RelayAutoConfigPost.new(
  name: null,
  policy: null
)
```

