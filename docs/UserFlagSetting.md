# LaunchDarklyApi::UserFlagSetting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **_value** | **Object** |  |  |
| **setting** | **Object** |  |  |
| **reason** | [**EvaluationReason**](EvaluationReason.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::UserFlagSetting.new(
  _links: {&quot;sort.order&quot;:{&quot;href&quot;:&quot;/api/v2/users/lacuna/production/Abbie_Braun/flags/sort.order&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  _value: true,
  setting: null,
  reason: null
)
```

