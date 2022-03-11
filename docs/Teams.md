# LaunchDarklyApi::Teams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;Team&gt;**](Team.md) |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **total_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Teams.new(
  items: null,
  _links: null,
  total_count: null
)
```

