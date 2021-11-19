# LaunchDarklyApi::HunkRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **starting_line_number** | **Integer** | Line number of beginning of code reference hunk |  |
| **lines** | **String** | Contextual lines of code that include the referenced feature flag | [optional] |
| **proj_key** | **String** | The project key | [optional] |
| **flag_key** | **String** | The feature flag key | [optional] |
| **aliases** | **Array&lt;String&gt;** | An array of flag key aliases | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::HunkRep.new(
  starting_line_number: 45,
  lines: var enableFeature &#x3D; &#39;enable-feature&#39;;,
  proj_key: default,
  flag_key: enable-feature,
  aliases: [&quot;enableFeature&quot;,&quot;EnableFeature&quot;]
)
```

