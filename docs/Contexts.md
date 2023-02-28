# LaunchDarklyApi::Contexts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **total_count** | **Integer** | The number of contexts | [optional] |
| **_environment_id** | **String** | The environment ID where the context was evaluated |  |
| **continuation_token** | **String** | An obfuscated string that references the last context instance on the previous page of results. You can use this for pagination, however, we recommend using the &lt;code&gt;next&lt;/code&gt; link instead. | [optional] |
| **items** | [**Array&lt;ContextRecord&gt;**](ContextRecord.md) | A collection of contexts. Can include multiple versions of contexts that have the same &lt;code&gt;kind&lt;/code&gt; and &lt;code&gt;key&lt;/code&gt;, but different &lt;code&gt;applicationId&lt;/code&gt;s. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Contexts.new(
  _links: {&quot;next&quot;:{&quot;href&quot;:&quot;/app.launchdarkly.com/api/v2/projects/my-project/environments/my-environment/contexts?filter&#x3D;kind:{\&quot;equals\&quot;: [\&quot;organization\&quot;]}&amp;limit&#x3D;2&amp;continuationToken&#x3D;QAGFKH1313KUGI2351&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-proj/environments/my-env/contexts?filter&#x3D;kind:{\&quot;equals\&quot;: [\&quot;organization\&quot;]}&amp;limit&#x3D;2&amp;continuationToken&#x3D;QAGFKH1313KUGI2351&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  total_count: 100,
  _environment_id: 57be1db38b75bf0772d11384,
  continuation_token: QAGFKH1313KUGI2351,
  items: null
)
```

