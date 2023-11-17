# LaunchDarklyApi::SegmentBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-friendly name for the segment |  |
| **key** | **String** | A unique key used to reference the segment |  |
| **description** | **String** | A description of the segment&#39;s purpose | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the segment | [optional] |
| **unbounded** | **Boolean** | Whether to create a standard segment (&lt;code&gt;false&lt;/code&gt;) or a Big Segment (&lt;code&gt;true&lt;/code&gt;). Standard segments include rule-based and smaller list-based segments. Big Segments include larger list-based segments and synced segments. Only use a Big Segment if you need to add more than 15,000 individual targets. | [optional] |
| **unbounded_context_kind** | **String** | For Big Segments, the targeted context kind. | [optional] |

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

