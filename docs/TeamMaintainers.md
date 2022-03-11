# LaunchDarklyApi::TeamMaintainers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** |  | [optional] |
| **items** | [**Array&lt;MemberSummary&gt;**](MemberSummary.md) |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TeamMaintainers.new(
  total_count: null,
  items: null,
  _links: null
)
```

