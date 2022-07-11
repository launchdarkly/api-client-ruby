# LaunchDarklyApi::FlagCopyConfigPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | [**FlagCopyConfigEnvironment**](FlagCopyConfigEnvironment.md) |  |  |
| **target** | [**FlagCopyConfigEnvironment**](FlagCopyConfigEnvironment.md) |  |  |
| **comment** | **String** | Optional comment | [optional] |
| **included_actions** | **Array&lt;String&gt;** | Optional list of the flag changes to copy from the source environment to the target environment. You may include either &lt;code&gt;includedActions&lt;/code&gt; or &lt;code&gt;excludedActions&lt;/code&gt;, but not both. If you include neither, then all flag changes will be copied. | [optional] |
| **excluded_actions** | **Array&lt;String&gt;** | Optional list of the flag changes NOT to copy from the source environment to the target environment. You may include either  &lt;code&gt;includedActions&lt;/code&gt; or &lt;code&gt;excludedActions&lt;/code&gt;, but not both. If you include neither, then all flag changes will be copied. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagCopyConfigPost.new(
  source: null,
  target: null,
  comment: null,
  included_actions: [&quot;updateOn&quot;],
  excluded_actions: [&quot;updateOn&quot;]
)
```

