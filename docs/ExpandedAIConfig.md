# LaunchDarklyApi::ExpandedAIConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique key used to reference the AI config | [optional] |
| **name** | **String** | A human-friendly name for the AI config | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the AI config | [optional] |
| **description** | **String** | Description of the AI config | [optional] |
| **version** | **Integer** | Version of the AI config | [optional] |
| **created_at** | **Integer** | Creation date in milliseconds | [optional] |
| **updated_at** | **Integer** | Last modification date in milliseconds | [optional] |
| **flag_key** | **String** | Key of the flag that this AI config is attached to | [optional] |
| **_links** | [**ParentAndSelfLinks**](ParentAndSelfLinks.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpandedAIConfig.new(
  key: null,
  name: null,
  tags: null,
  description: null,
  version: null,
  created_at: null,
  updated_at: null,
  flag_key: null,
  _links: null
)
```

