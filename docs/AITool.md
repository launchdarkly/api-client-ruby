# LaunchDarklyApi::AITool

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The tool key |  |
| **_access** | [**AiConfigsAccess**](AiConfigsAccess.md) |  | [optional] |
| **_links** | [**ParentAndSelfLinks**](ParentAndSelfLinks.md) |  | [optional] |
| **_site** | [**CoreLink**](CoreLink.md) |  | [optional] |
| **_maintainer** | [**AIConfigMaintainer**](AIConfigMaintainer.md) |  | [optional] |
| **description** | **String** | A description of the tool | [optional] |
| **schema** | **Object** | JSON Schema defining the tool&#39;s parameters for LLM consumption |  |
| **custom_parameters** | **Object** | Custom metadata and configuration for application-level use (not sent to LLM) | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the tool. Tags can be used in custom role policies. | [optional] |
| **version** | **Integer** | Version of the tool. Starts at 1, and each update that changes the description, schema, custom parameters, or tags creates a new version. Pass this value with &#x60;key&#x60; in a variation&#39;s &#x60;tools: [{key, version}]&#x60;. |  |
| **created_at** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AITool.new(
  key: null,
  _access: null,
  _links: null,
  _site: null,
  _maintainer: null,
  description: null,
  schema: null,
  custom_parameters: {&quot;requiresApproval&quot;:true,&quot;timeoutMs&quot;:5000},
  tags: [&quot;support&quot;],
  version: 2,
  created_at: null
)
```

