# LaunchDarklyApi::Import

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The import ID |  |
| **segment_key** | **String** | The segment key |  |
| **creation_time** | **Integer** |  |  |
| **mode** | **String** | The import mode used, either &lt;code&gt;merge&lt;/code&gt; or &lt;code&gt;replace&lt;/code&gt; |  |
| **status** | **String** | The import status |  |
| **files** | [**Array&lt;FileRep&gt;**](FileRep.md) | The imported files and their status | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Import.new(
  id: 1234a567-bcd8-9123-4567-abcd1234567f,
  segment_key: example-big-segment,
  creation_time: null,
  mode: replace,
  status: complete,
  files: [{&quot;filename&quot;:&quot;bigsegimport.csv&quot;,&quot;status&quot;:&quot;complete&quot;}],
  _links: null
)
```

