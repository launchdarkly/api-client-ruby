# LaunchDarklyApi::IntegrationConfigurationPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the integration configuration |  |
| **enabled** | **Boolean** | Whether the integration configuration is enabled. If omitted, defaults to true | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the integration | [optional] |
| **config_values** | **Hash&lt;String, Object&gt;** | The unique set of fields required to configure the integration. Refer to the &lt;code&gt;formVariables&lt;/code&gt; field in the corresponding &lt;code&gt;manifest.json&lt;/code&gt; at https://github.com/launchdarkly/integration-framework/tree/main/integrations for a full list of fields for the integration you wish to configure. |  |
| **capability_config** | [**CapabilityConfigPost**](CapabilityConfigPost.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::IntegrationConfigurationPost.new(
  name: Example integration configuration,
  enabled: true,
  tags: [&quot;ops&quot;],
  config_values: {&quot;optional&quot;:&quot;an optional property&quot;,&quot;required&quot;:&quot;the required property&quot;,&quot;url&quot;:&quot;https://example.com&quot;},
  capability_config: null
)
```

