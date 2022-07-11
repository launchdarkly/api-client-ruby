# LaunchDarklyApi::StatisticsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;StatisticRep&gt;**](StatisticRep.md) | A list of code reference statistics for each code repository | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::StatisticsRep.new(
  items: null,
  _links: null
)
```

