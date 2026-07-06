# LaunchDarklyApi::ViewPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Unique key for the view within the account/project |  |
| **name** | **String** | Human-readable name for the view |  |
| **description** | **String** | Optional detailed description of the view | [optional][default to &#39;&#39;] |
| **maintainer_id** | **String** | Member ID of the maintainer for this view. Only one of &#x60;maintainerId&#x60; or &#x60;maintainerTeamKey&#x60; can be specified. | [optional] |
| **maintainer_team_key** | **String** | Key of the maintainer team for this view. Only one of &#x60;maintainerId&#x60; or &#x60;maintainerTeamKey&#x60; can be specified. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags associated with this view | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ViewPost.new(
  key: null,
  name: null,
  description: null,
  maintainer_id: null,
  maintainer_team_key: null,
  tags: null
)
```

