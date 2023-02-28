# LaunchDarklyApi::ContextInstances

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **total_count** | **Integer** | The number of unique context instances | [optional] |
| **_environment_id** | **String** | The environment ID |  |
| **continuation_token** | **String** | An obfuscated string that references the last context instance on the previous page of results. You can use this for pagination, however, we recommend using the &lt;code&gt;next&lt;/code&gt; link instead. | [optional] |
| **items** | [**Array&lt;ContextInstanceRecord&gt;**](ContextInstanceRecord.md) | A collection of context instances. Can include multiple versions of context instances that have the same &lt;code&gt;id&lt;/code&gt;, but different &lt;code&gt;applicationId&lt;/code&gt;s. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ContextInstances.new(
  _links: {&quot;next&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/environments/my-env/context-instances/organization:launch-darkly:user:henry?limit&#x3D;2&amp;continuationToken&#x3D;2022-04-15T15:00:57.526470334Z&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-proj/environments/my-env/context-instances/organization:launch-darkly:user:henry-jacobs?limit&#x3D;2&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  total_count: 100,
  _environment_id: 57be1db38b75bf0772d11384,
  continuation_token: QAGFKH1313KUGI2351,
  items: null
)
```

