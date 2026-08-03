# LaunchDarklyApi::AgentSkill

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  |  |
| **_access** | [**AiConfigsAccess**](AiConfigsAccess.md) |  | [optional] |
| **_links** | [**ParentAndSelfLinks**](ParentAndSelfLinks.md) |  | [optional] |
| **_maintainer** | [**AIConfigMaintainer**](AIConfigMaintainer.md) |  | [optional] |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **markdown** | **String** | The verbatim SKILL.md content of the agent skill |  |
| **tags** | **Array&lt;String&gt;** |  |  |
| **version** | **Integer** |  |  |
| **created_at** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AgentSkill.new(
  key: null,
  _access: null,
  _links: null,
  _maintainer: null,
  name: null,
  description: null,
  markdown: null,
  tags: null,
  version: null,
  created_at: null
)
```

