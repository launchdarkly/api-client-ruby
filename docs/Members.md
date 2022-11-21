# LaunchDarklyApi::Members

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;Member&gt;**](Member.md) | An array of members |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **total_count** | **Integer** | The number of members returned | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Members.new(
  items: null,
  _links: null,
  total_count: null
)
```

