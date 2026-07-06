# LaunchDarklyApi::AITool

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  |  |
| **_access** | [**AiConfigsAccess**](AiConfigsAccess.md) |  | [optional] |
| **_links** | [**ParentAndSelfLinks**](ParentAndSelfLinks.md) |  | [optional] |
| **_maintainer** | [**AIConfigMaintainer**](AIConfigMaintainer.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **schema** | **Object** | JSON Schema defining the tool&#39;s parameters for LLM consumption |  |
| **custom_parameters** | **Object** | Custom metadata and configuration for application-level use (not sent to LLM) | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **version** | **Integer** |  |  |
| **created_at** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AITool.new(
  key: null,
  _access: null,
  _links: null,
  _maintainer: null,
  description: null,
  schema: null,
  custom_parameters: null,
  tags: null,
  version: null,
  created_at: null
)
```

