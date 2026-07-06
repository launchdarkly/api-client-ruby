# LaunchDarklyApi::PromptSnippet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  |  |
| **_access** | [**AiConfigsAccess**](AiConfigsAccess.md) |  | [optional] |
| **_links** | [**ParentAndSelfLinks**](ParentAndSelfLinks.md) |  | [optional] |
| **_maintainer** | [**AIConfigMaintainer**](AIConfigMaintainer.md) |  | [optional] |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **text** | **String** | The text content of the prompt snippet |  |
| **tags** | **Array&lt;String&gt;** |  |  |
| **version** | **Integer** |  |  |
| **created_at** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PromptSnippet.new(
  key: null,
  _access: null,
  _links: null,
  _maintainer: null,
  name: null,
  description: null,
  text: null,
  tags: null,
  version: null,
  created_at: null
)
```

