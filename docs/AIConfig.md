# LaunchDarklyApi::AIConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_access** | [**AiConfigsAccess**](AiConfigsAccess.md) |  | [optional] |
| **_links** | [**ParentAndSelfLinks**](ParentAndSelfLinks.md) |  | [optional] |
| **description** | **String** |  |  |
| **key** | **String** |  |  |
| **_maintainer** | [**AIConfigMaintainer**](AIConfigMaintainer.md) |  | [optional] |
| **mode** | **String** |  | [optional][default to &#39;completion&#39;] |
| **name** | **String** |  |  |
| **tags** | **Array&lt;String&gt;** |  |  |
| **version** | **Integer** |  |  |
| **variations** | [**Array&lt;AIConfigVariation&gt;**](AIConfigVariation.md) |  |  |
| **created_at** | **Integer** |  |  |
| **updated_at** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfig.new(
  _access: null,
  _links: null,
  description: null,
  key: null,
  _maintainer: null,
  mode: null,
  name: null,
  tags: null,
  version: null,
  variations: null,
  created_at: null,
  updated_at: null
)
```

