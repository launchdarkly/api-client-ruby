# LaunchDarklyApi::AnnouncementAccessAllowedReason

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resources** | **Array&lt;String&gt;** | Resource specifier strings | [optional] |
| **not_resources** | **Array&lt;String&gt;** | Targeted resources are the resources NOT in this list. The &lt;code&gt;resources&lt;/code&gt; and &lt;code&gt;notActions&lt;/code&gt; fields must be empty to use this field. | [optional] |
| **actions** | **Array&lt;String&gt;** | Actions to perform on a resource | [optional] |
| **not_actions** | **Array&lt;String&gt;** | Targeted actions are the actions NOT in this list. The &lt;code&gt;actions&lt;/code&gt; and &lt;code&gt;notResources&lt;/code&gt; fields must be empty to use this field. | [optional] |
| **effect** | **String** | Whether this statement should allow or deny actions on the resources. |  |
| **role_name** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AnnouncementAccessAllowedReason.new(
  resources: [&quot;proj/*:env/*;qa_*:/flag/*&quot;],
  not_resources: null,
  actions: [&quot;*&quot;],
  not_actions: null,
  effect: allow,
  role_name: null
)
```

