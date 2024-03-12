# LaunchDarklyApi::FlagEventCollectionRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** | The total number of flag events |  |
| **items** | [**Array&lt;FlagEventRep&gt;**](FlagEventRep.md) | A list of flag events |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagEventCollectionRep.new(
  total_count: 1200,
  items: null,
  _links: {&quot;next&quot;:{&quot;href&quot;:&quot;/api/v2/engineering-insights/flag-events?after&#x3D;a4290006-1fd1-4ca5-acf7-9f31fac61cf5&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/engineering-insights/flag-events&quot;,&quot;type&quot;:&quot;application/json&quot;}}
)
```

