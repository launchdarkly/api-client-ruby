# LaunchDarklyApi::Users

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **total_count** | **Integer** |  |  |
| **items** | [**Array&lt;UserRecord&gt;**](UserRecord.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Users.new(
  _links: null,
  total_count: null,
  items: null
)
```

