# LaunchDarklyApi::SeriesIntervalsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **series** | [**Array&lt;Series&gt;**](Series.md) | An array of timestamps and values for a given meter |  |
| **_links** | **Hash&lt;String, Object&gt;** | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SeriesIntervalsRep.new(
  series: null,
  _links: null
)
```

