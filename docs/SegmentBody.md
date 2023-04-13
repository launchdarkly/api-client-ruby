# LaunchDarklyApi::SegmentBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-friendly name for the segment |  |
| **key** | **String** | A unique key used to reference the segment |  |
| **description** | **String** | A description of the segment&#39;s purpose | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the segment | [optional] |
| **unbounded** | **Boolean** | Whether to create a standard segment (false) or a Big Segment (true). Only use a Big Segment if you need to add more than 15,000 individual targets. | [optional] |
| **unbounded_context_kind** | **String** | If unbounded is true, you can use this field to set the Big Segment&#39;s context kind | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SegmentBody.new(
  name: Example segment,
  key: segment-key-123abc,
  description: Bundle our sample customers together,
  tags: [&quot;testing&quot;],
  unbounded: false,
  unbounded_context_kind: device
)
```

