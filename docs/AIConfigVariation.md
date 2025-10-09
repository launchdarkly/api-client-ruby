# LaunchDarklyApi::AIConfigVariation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**ParentLink**](ParentLink.md) |  | [optional] |
| **color** | **String** |  | [optional] |
| **comment** | **String** |  | [optional] |
| **description** | **String** | Returns the description for the agent. This is only returned for agent variations. | [optional] |
| **instructions** | **String** | Returns the instructions for the agent. This is only returned for agent variations. | [optional] |
| **key** | **String** |  |  |
| **_id** | **String** |  |  |
| **messages** | [**Array&lt;Message&gt;**](Message.md) |  | [optional] |
| **model** | **Object** |  |  |
| **model_config_key** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **created_at** | **Integer** |  |  |
| **version** | **Integer** |  |  |
| **state** | **String** |  | [optional] |
| **_archived_at** | **Integer** |  | [optional] |
| **_published_at** | **Integer** |  | [optional] |
| **tools** | [**Array&lt;VariationTool&gt;**](VariationTool.md) |  | [optional] |
| **judge_configuration** | [**JudgeConfiguration**](JudgeConfiguration.md) |  | [optional] |
| **judging_config_keys** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfigVariation.new(
  _links: null,
  color: null,
  comment: null,
  description: null,
  instructions: null,
  key: null,
  _id: null,
  messages: null,
  model: null,
  model_config_key: null,
  name: null,
  created_at: null,
  version: null,
  state: null,
  _archived_at: null,
  _published_at: null,
  tools: null,
  judge_configuration: null,
  judging_config_keys: null
)
```

