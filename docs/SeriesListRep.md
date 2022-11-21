# LaunchDarklyApi::SeriesListRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | **Hash&lt;String, Object&gt;** | The location and content type of related resources |  |
| **metadata** | **Array&lt;Hash&gt;** | Metadata about each series |  |
| **series** | **Array&lt;Hash&gt;** | An array of data points with timestamps |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SeriesListRep.new(
  _links: null,
  metadata: null,
  series: null
)
```

