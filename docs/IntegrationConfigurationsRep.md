# LaunchDarklyApi::IntegrationConfigurationsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **_id** | **String** | The unique identifier for this integration configuration |  |
| **name** | **String** | A human-friendly name for the integration |  |
| **_created_at** | **Integer** |  | [optional] |
| **_integration_key** | **String** | The type of integration | [optional] |
| **tags** | **Array&lt;String&gt;** | An array of tags for this integration | [optional] |
| **enabled** | **Boolean** | Whether the integration is currently active | [optional] |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **config_values** | **Hash&lt;String, Object&gt;** | Details on configuration for an integration of this type. Refer to the &lt;code&gt;formVariables&lt;/code&gt; field in the corresponding &lt;code&gt;manifest.json&lt;/code&gt; for a full list of fields for each integration. | [optional] |
| **capability_config** | [**CapabilityConfigRep**](CapabilityConfigRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::IntegrationConfigurationsRep.new(
  _links: null,
  _id: null,
  name: Example Datadog integration,
  _created_at: null,
  _integration_key: datadog,
  tags: [&quot;testing&quot;],
  enabled: null,
  _access: null,
  config_values: null,
  capability_config: null
)
```

