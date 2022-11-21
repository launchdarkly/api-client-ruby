# LaunchDarklyApi::Integration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **_id** | **String** | The ID for this integration audit log subscription | [optional] |
| **kind** | **String** | The type of integration | [optional] |
| **name** | **String** | A human-friendly name for the integration | [optional] |
| **config** | **Hash&lt;String, Object&gt;** | Details on configuration for an integration of this type. Refer to the &lt;code&gt;formVariables&lt;/code&gt; field in the corresponding &lt;code&gt;manifest.json&lt;/code&gt; for a full list of fields for each integration. | [optional] |
| **statements** | [**Array&lt;Statement&gt;**](Statement.md) | Represents a Custom role policy, defining a resource kinds filter the integration audit log subscription responds to. | [optional] |
| **on** | **Boolean** | Whether the integration is currently active | [optional] |
| **tags** | **Array&lt;String&gt;** | An array of tags for this integration | [optional] |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **_status** | [**IntegrationSubscriptionStatusRep**](IntegrationSubscriptionStatusRep.md) |  | [optional] |
| **url** | **String** | Slack webhook receiver URL. Only used for legacy Slack webhook integrations. | [optional] |
| **api_key** | **String** | Datadog API key. Only used for legacy Datadog webhook integrations. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Integration.new(
  _links: null,
  _id: 1234a56b7c89d012345e678f,
  kind: datadog,
  name: Example Datadog integration,
  config: null,
  statements: null,
  on: true,
  tags: [&quot;testing&quot;],
  _access: null,
  _status: null,
  url: null,
  api_key: null
)
```

