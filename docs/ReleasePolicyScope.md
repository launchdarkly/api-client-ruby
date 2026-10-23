# LaunchDarklyApi::ReleasePolicyScope

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment_keys** | **Array&lt;String&gt;** | List of environment keys this policy applies to | [optional] |
| **flag_tag_keys** | **Array&lt;String&gt;** | List of flag tag keys this policy applies to. At most 1000 keys. Each key must only contain letters, numbers, &#39;-&#39;, &#39;_&#39;, or &#39;.&#39;, and be at most 64 characters. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ReleasePolicyScope.new(
  environment_keys: [&quot;production&quot;,&quot;staging&quot;],
  flag_tag_keys: [&quot;frontend&quot;,&quot;backend&quot;]
)
```

