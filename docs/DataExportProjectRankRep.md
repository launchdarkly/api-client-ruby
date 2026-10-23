# LaunchDarklyApi::DataExportProjectRankRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The canonical project key. |  |
| **project_name** | **String** | The current project name. |  |
| **rank** | **Integer** | The one-based rank within all matching projects. |  |
| **usage** | **Integer** | Successful Streaming transfers in the requested range. |  |
| **components** | [**DataExportProjectRankComponentsRep**](DataExportProjectRankComponentsRep.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DataExportProjectRankRep.new(
  project_key: null,
  project_name: null,
  rank: null,
  usage: null,
  components: null
)
```

