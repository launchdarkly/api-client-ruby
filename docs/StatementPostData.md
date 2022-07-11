# LaunchDarklyApi::StatementPostData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resources** | **Array&lt;String&gt;** | Resource specifier strings | [optional] |
| **not_resources** | **Array&lt;String&gt;** | Targeted resources are the resources NOT in this list. The &lt;code&gt;resources&lt;/code&gt; field must be empty to use this field. | [optional] |
| **actions** | **Array&lt;String&gt;** | Actions to perform on a resource | [optional] |
| **not_actions** | **Array&lt;String&gt;** | Targeted actions are the actions NOT in this list. The &lt;code&gt;actions&lt;/code&gt; field must be empty to use this field. | [optional] |
| **effect** | **String** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::StatementPostData.new(
  resources: [&quot;proj/*:env/*:flag/*;testing-tag&quot;],
  not_resources: null,
  actions: [&quot;*&quot;],
  not_actions: null,
  effect: null
)
```

