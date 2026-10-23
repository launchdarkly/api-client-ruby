# LaunchDarklyApi::AgentSkill

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The agent skill key |  |
| **_access** | [**AiConfigsAccess**](AiConfigsAccess.md) |  | [optional] |
| **_links** | [**ParentAndSelfLinks**](ParentAndSelfLinks.md) |  | [optional] |
| **_maintainer** | [**AIConfigMaintainer**](AIConfigMaintainer.md) |  | [optional] |
| **name** | **String** | Human-readable name of the agent skill. |  |
| **description** | **String** | Human-readable description of what the agent skill does. | [optional] |
| **markdown** | **String** | The verbatim SKILL.md content of the agent skill |  |
| **tags** | **Array&lt;String&gt;** | Tags for the agent skill. Tags can be used in custom role policies. |  |
| **version** | **Integer** | Version of the agent skill. Starts at 1, and each update that changes the name, description, or markdown creates a new version. Pass this value with &#x60;key&#x60; in a variation&#39;s &#x60;skills: [{key, version}]&#x60;. |  |
| **created_at** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentSkill.new(
  key: null,
  _access: null,
  _links: null,
  _maintainer: null,
  name: PDF extraction,
  description: Extracts text and tables from PDF files.,
  markdown: null,
  tags: [&quot;documents&quot;],
  version: 2,
  created_at: null
)
```

