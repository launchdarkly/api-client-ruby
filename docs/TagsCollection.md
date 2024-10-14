# LaunchDarklyApi::TagsCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | **Array&lt;String&gt;** | List of tags |  |
| **_links** | [**Hash&lt;String, TagsLink&gt;**](TagsLink.md) |  |  |
| **total_count** | **Integer** | The total number of tags | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TagsCollection.new(
  items: [&quot;ops&quot;,&quot;pro&quot;],
  _links: null,
  total_count: 103
)
```

