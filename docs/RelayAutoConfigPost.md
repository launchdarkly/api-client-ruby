# LaunchDarklyApi::RelayAutoConfigPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-friendly name for the Relay Proxy configuration |  |
| **policy** | [**Array&lt;StatementRep&gt;**](StatementRep.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::RelayAutoConfigPost.new(
  name: null,
  policy: null
)
```

