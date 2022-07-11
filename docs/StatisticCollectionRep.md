# LaunchDarklyApi::StatisticCollectionRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flags** | **Hash&lt;String, Array&lt;StatisticRep&gt;&gt;** | A map of flag keys to a list of code reference statistics for each code repository in which the flag key appears |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::StatisticCollectionRep.new(
  flags: null,
  _links: null
)
```

