# LaunchDarklyApi::Export

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **segment_key** | **String** |  |  |
| **creation_time** | **Integer** |  |  |
| **status** | **String** |  |  |
| **size_bytes** | **Integer** |  |  |
| **size** | **String** |  |  |
| **initiator** | [**InitiatorRep**](InitiatorRep.md) |  |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Export.new(
  id: null,
  segment_key: null,
  creation_time: null,
  status: null,
  size_bytes: null,
  size: null,
  initiator: null,
  _links: null
)
```

