# LaunchDarklyApi::Import

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **segment_key** | **String** |  |  |
| **creation_time** | **Integer** |  |  |
| **mode** | **String** |  |  |
| **status** | **String** |  |  |
| **files** | [**Array&lt;FileRep&gt;**](FileRep.md) |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Import.new(
  id: null,
  segment_key: null,
  creation_time: null,
  mode: null,
  status: null,
  files: null,
  _links: null
)
```

