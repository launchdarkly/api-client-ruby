# LaunchDarklyApi::PromptSnippet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The prompt snippet key |  |
| **_access** | [**AiConfigsAccess**](AiConfigsAccess.md) |  | [optional] |
| **_links** | [**ParentAndSelfLinks**](ParentAndSelfLinks.md) |  | [optional] |
| **_site** | [**CoreLink**](CoreLink.md) |  | [optional] |
| **_maintainer** | [**AIConfigMaintainer**](AIConfigMaintainer.md) |  | [optional] |
| **name** | **String** | The prompt snippet name |  |
| **description** | **String** | A description of the prompt snippet | [optional] |
| **text** | **String** | The text content of the prompt snippet |  |
| **tags** | **Array&lt;String&gt;** | Tags for this resource |  |
| **version** | **Integer** | The version number of this resource |  |
| **created_at** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PromptSnippet.new(
  key: null,
  _access: null,
  _links: null,
  _site: null,
  _maintainer: null,
  name: null,
  description: null,
  text: null,
  tags: null,
  version: null,
  created_at: null
)
```

