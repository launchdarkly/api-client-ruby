# LaunchDarklyApi::UserSegments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;UserSegment&gt;**](UserSegment.md) | An array of segments |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **total_count** | **Integer** | The total number of segments | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::UserSegments.new(
  items: null,
  _links: null,
  total_count: null
)
```

