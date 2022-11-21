# LaunchDarklyApi::Export

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The export ID |  |
| **segment_key** | **String** | The segment key |  |
| **creation_time** | **Integer** |  |  |
| **status** | **String** | The export status |  |
| **size_bytes** | **Integer** | The export size, in bytes |  |
| **size** | **String** | The export size, with units |  |
| **initiator** | [**InitiatorRep**](InitiatorRep.md) |  |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources, including the location of the exported file |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Export.new(
  id: 1234a567-bcd8-9123-4567-abcd1234567f,
  segment_key: example-big-segment,
  creation_time: null,
  status: complete,
  size_bytes: 18,
  size: 18 B,
  initiator: null,
  _links: null
)
```

