# LaunchDarklyApi::ContextInstanceSearch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | A collection of context instance filters | [optional] |
| **sort** | **String** | Specifies a field by which to sort. LaunchDarkly supports sorting by timestamp in ascending order by specifying &lt;code&gt;ts&lt;/code&gt; for this value, or descending order by specifying &lt;code&gt;-ts&lt;/code&gt;. | [optional] |
| **limit** | **Integer** | Specifies the maximum number of items in the collection to return (max: 50, default: 20) | [optional] |
| **continuation_token** | **String** | Limits results to context instances with sort values after the value specified. You can use this for pagination, however, we recommend using the &lt;code&gt;next&lt;/code&gt; link instead, because this value is an obfuscated string. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ContextInstanceSearch.new(
  filter: {&quot;filter&quot;: &quot;kindKeys:{&quot;contains&quot;: [&quot;user:Henry&quot;]},&quot;sort&quot;: &quot;-ts&quot;,&quot;limit&quot;: 50},
  sort: -ts,
  limit: 10,
  continuation_token: QAGFKH1313KUGI2351
)
```

