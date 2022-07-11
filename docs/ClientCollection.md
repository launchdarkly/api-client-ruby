# LaunchDarklyApi::ClientCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **items** | [**Array&lt;Client&gt;**](Client.md) | List of client objects |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ClientCollection.new(
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/oauth/clients&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  items: null
)
```

