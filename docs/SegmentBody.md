# LaunchDarklyApi::SegmentBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-friendly name for the segment |  |
| **key** | **String** | A unique key used to reference the segment |  |
| **description** | **String** | A description of the segment&#39;s purpose | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the segment | [optional] |
| **unbounded** | **Boolean** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SegmentBody.new(
  name: null,
  key: null,
  description: null,
  tags: [&quot;ops&quot;],
  unbounded: null
)
```

