# LaunchDarklyApi::AIConfigVariation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**ParentLink**](ParentLink.md) |  | [optional] |
| **key** | **String** |  |  |
| **messages** | [**Array&lt;Message&gt;**](Message.md) |  |  |
| **model** | **Object** |  |  |
| **model_config_key** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **created_at** | **Integer** |  |  |
| **version** | **Integer** |  |  |
| **state** | **String** |  | [optional] |
| **_archived_at** | **Integer** |  | [optional] |
| **_published_at** | **Integer** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfigVariation.new(
  _links: null,
  key: null,
  messages: null,
  model: null,
  model_config_key: null,
  name: null,
  created_at: null,
  version: null,
  state: null,
  _archived_at: null,
  _published_at: null
)
```

