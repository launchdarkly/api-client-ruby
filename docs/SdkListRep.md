# LaunchDarklyApi::SdkListRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | **Hash&lt;String, Object&gt;** | The location and content type of related resources |  |
| **sdks** | **Array&lt;String&gt;** | The list of SDK names |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SdkListRep.new(
  _links: null,
  sdks: [&quot;Android&quot;,&quot;Java&quot;,&quot;Node.js&quot;]
)
```

