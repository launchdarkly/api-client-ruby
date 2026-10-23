# LaunchDarklyApi::PromptSnippetPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique key for the prompt snippet |  |
| **name** | **String** | A human-readable name for the prompt snippet |  |
| **description** | **String** | A description of the prompt snippet | [optional] |
| **text** | **String** | The text content of the prompt snippet |  |
| **maintainer_id** | **String** | The ID of the member who maintains this resource | [optional] |
| **maintainer_team_key** | **String** | The key of the team that maintains this resource | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for this resource | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PromptSnippetPost.new(
  key: null,
  name: null,
  description: null,
  text: null,
  maintainer_id: 507f1f77bcf86cd799439011,
  maintainer_team_key: example-team-key,
  tags: null
)
```

