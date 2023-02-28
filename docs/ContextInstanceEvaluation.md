# LaunchDarklyApi::ContextInstanceEvaluation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the flag. |  |
| **key** | **String** | Key of the flag. |  |
| **_value** | **Object** | The value of the flag variation that the context receives. If there is no defined default rule, this is null. |  |
| **reason** | [**ContextInstanceEvaluationReason**](ContextInstanceEvaluationReason.md) |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ContextInstanceEvaluation.new(
  name: My Flag,
  key: my-flag,
  _value: true,
  reason: null,
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/{projectKey}/environments/{environmentKey}/flags/evaluate&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;site&quot;:{&quot;href&quot;:&quot;/my-project/my-environment/features/sort.order/targeting&quot;,&quot;type&quot;:&quot;text/html&quot;}}
)
```

