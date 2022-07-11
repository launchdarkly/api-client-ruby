# LaunchDarklyApi::Destinations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | Links to other resources within the API. Includes the URL and content type of those resources. | [optional] |
| **items** | [**Array&lt;Destination&gt;**](Destination.md) | An array of Data Export destinations | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Destinations.new(
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/destinations&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  items: null
)
```

