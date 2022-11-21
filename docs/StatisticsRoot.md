# LaunchDarklyApi::StatisticsRoot

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **projects** | [**Array&lt;Link&gt;**](Link.md) | The location and content type of all projects that have code references | [optional] |
| **_self** | [**Link**](Link.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::StatisticsRoot.new(
  projects: [{&quot;href&quot;:&quot;/api/v2/code-refs/statistics/example-project-with-code-refs&quot;,&quot;type&quot;:&quot;application/json&quot;}],
  _self: null
)
```

