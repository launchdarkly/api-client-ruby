# LaunchDarklyApi::IpList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **outbound_addresses** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::IpList.new(
  addresses: [&quot;104.156.80.0/20&quot;,&quot;151.101.0.0/16&quot;],
  outbound_addresses: [&quot;52.21.152.96/32&quot;]
)
```

