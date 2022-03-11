# LaunchDarklyApi::TagCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | **Array&lt;String&gt;** | List of tags |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **total_count** | **Integer** | The total number of tags | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TagCollection.new(
  items: [&quot;ops&quot;,&quot;pro&quot;],
  _links: null,
  total_count: 103
)
```

