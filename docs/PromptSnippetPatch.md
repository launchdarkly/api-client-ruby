# LaunchDarklyApi::PromptSnippetPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-readable name for the prompt snippet | [optional] |
| **description** | **String** | A description of the prompt snippet | [optional] |
| **text** | **String** | The text content of the prompt snippet | [optional] |
| **maintainer_id** | **String** | The ID of the member who maintains this resource | [optional] |
| **maintainer_team_key** | **String** | The key of the team that maintains this resource | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for this resource | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PromptSnippetPatch.new(
  name: null,
  description: null,
  text: null,
  maintainer_id: 507f1f77bcf86cd799439011,
  maintainer_team_key: example-team-key,
  tags: null
)
```

