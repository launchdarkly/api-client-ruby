# LaunchDarklyApi::SdkVersionListRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | **Hash&lt;String, Object&gt;** | The location and content type of related resources |  |
| **sdk_versions** | [**Array&lt;SdkVersionRep&gt;**](SdkVersionRep.md) | The list of SDK names and versions |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SdkVersionListRep.new(
  _links: null,
  sdk_versions: [{&quot;sdk&quot;:&quot;Android&quot;,&quot;version&quot;:&quot;3.1.2&quot;},{&quot;sdk&quot;:&quot;Android&quot;,&quot;version&quot;:&quot;3.1.5&quot;},{&quot;sdk&quot;:&quot;C&quot;,&quot;version&quot;:&quot;2.4.6&quot;}]
)
```

