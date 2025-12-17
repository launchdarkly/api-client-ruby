# LaunchDarklyApi::AIConfigPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  | [optional][default to &#39;&#39;] |
| **key** | **String** |  |  |
| **maintainer_id** | **String** |  | [optional] |
| **maintainer_team_key** | **String** |  | [optional] |
| **mode** | **String** |  | [optional][default to &#39;completion&#39;] |
| **name** | **String** |  |  |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **default_variation** | [**AIConfigVariationPost**](AIConfigVariationPost.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfigPost.new(
  description: null,
  key: null,
  maintainer_id: null,
  maintainer_team_key: null,
  mode: null,
  name: null,
  tags: null,
  default_variation: null
)
```

