# LaunchDarklyApi::PromptSnippetPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  |  |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **text** | **String** | The text content of the prompt snippet |  |
| **maintainer_id** | **String** |  | [optional] |
| **maintainer_team_key** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |

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

