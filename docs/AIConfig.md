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
| **evaluation_metric_key** | **String** | Evaluation metric key for this AI Config | [optional] |
| **evaluation_metric_keys** | **Array&lt;String&gt;** | List of evaluation metric keys for this AI Config | [optional] |
| **is_inverted** | **Boolean** | Whether the evaluation metric is inverted, meaning a lower value is better if set as true | [optional] |

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
  updated_at: null,
  evaluation_metric_key: null,
  evaluation_metric_keys: null,
  is_inverted: null
)
```

