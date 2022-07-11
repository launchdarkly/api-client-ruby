# LaunchDarklyApi::UserFlagSetting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources. |  |
| **_value** | **Object** | The value of the flag variation that the user receives. If there is no defined default rule, this is null. |  |
| **setting** | **Object** | Whether the user is explicitly targeted to receive a particular variation. The setting is false if you have turned off a feature flag for a user. It is null if you haven&#39;t assigned that user to a specific variation. |  |
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

