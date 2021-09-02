# LaunchDarklyApi::Statement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resources** | **Array&lt;Object&gt;** |  | [optional] |
| **not_resources** | **Array&lt;Object&gt;** |  | [optional] |
| **actions** | **Array&lt;String&gt;** |  | [optional] |
| **not_actions** | **Array&lt;String&gt;** |  | [optional] |
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

