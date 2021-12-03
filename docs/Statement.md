# LaunchDarklyApi::Statement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resources** | **Array&lt;String&gt;** | Resource specifier strings | [optional] |
| **not_resources** | **Array&lt;String&gt;** | Targeted resources are the resources NOT in this list. The \&quot;resources\&quot; field must be empty to use this field. | [optional] |
| **actions** | **Array&lt;String&gt;** | Actions to perform on a resource | [optional] |
| **not_actions** | **Array&lt;String&gt;** | Targeted actions are the actions NOT in this list. The \&quot;actions\&quot; field must be empty to use this field. | [optional] |
| **effect** | **String** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Statement.new(
  resources: null,
  not_resources: null,
  actions: null,
  not_actions: null,
  effect: null
)
```

