# LaunchDarklyApi::InsightScores

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **period** | [**InsightPeriod**](InsightPeriod.md) |  |  |
| **last_period** | [**InsightPeriod**](InsightPeriod.md) |  |  |
| **scores** | [**InsightGroupScores**](InsightGroupScores.md) |  |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InsightScores.new(
  period: null,
  last_period: null,
  scores: null,
  _links: null
)
```

