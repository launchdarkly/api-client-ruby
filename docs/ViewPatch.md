# LaunchDarklyApi::ViewPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Human-readable name for the view | [optional] |
| **description** | **String** | Optional detailed description of the view | [optional] |
| **generate_sdk_keys** | **Boolean** | Whether to generate SDK keys for this view | [optional] |
| **maintainer_id** | **String** | Member ID of the maintainer for this view. Only one of &#x60;maintainerId&#x60; or &#x60;maintainerTeamKey&#x60; can be specified. | [optional] |
| **maintainer_team_key** | **String** | Key of the maintainer team for this view. Only one of &#x60;maintainerId&#x60; or &#x60;maintainerTeamKey&#x60; can be specified. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags associated with this view | [optional] |
| **archived** | **Boolean** | Whether or not the view is archived | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ViewPatch.new(
  name: null,
  description: null,
  generate_sdk_keys: null,
  maintainer_id: null,
  maintainer_team_key: null,
  tags: null,
  archived: null
)
```

