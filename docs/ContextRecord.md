# LaunchDarklyApi::ContextRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_seen** | **Time** | Timestamp of the last time an evaluation occurred for this context | [optional] |
| **application_id** | **String** | An identifier representing the application where the LaunchDarkly SDK is running | [optional] |
| **context** | **Object** | The context, including its kind and attributes |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **associated_contexts** | **Integer** | The total number of associated contexts. Associated contexts are contexts that have appeared in the same context instance, that is, they were part of the same flag evaluation. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ContextRecord.new(
  last_seen: 2022-04-15T15:00:57.526470334Z,
  application_id: GoSDK/1.2,
  context: {&quot;kind&quot;: &quot;user&quot;, &quot;key&quot;: &quot;context-key-123abc&quot;, &quot;name&quot;: &quot;Sandy Smith&quot;, &quot;email&quot;: &quot;sandy@example.com&quot;},
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/environments/my-environment&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/environments/my-env/contexts/organization:launch-darkly:user:henry?filter&#x3D;applicationId:\&quot;GoSDK/1.2\&quot;&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;site&quot;:{&quot;href&quot;:&quot;/my-project/my-environment/context/organization:launch-darkly:user:henry&quot;,&quot;type&quot;:&quot;text/html&quot;}},
  _access: null,
  associated_contexts: 0
)
```

