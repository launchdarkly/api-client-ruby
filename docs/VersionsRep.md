# LaunchDarklyApi::VersionsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **valid_versions** | **Array&lt;Integer&gt;** |  |  |
| **latest_version** | **Integer** |  |  |
| **current_version** | **Integer** |  |  |
| **beta** | **Boolean** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::VersionsRep.new(
  valid_versions: null,
  latest_version: null,
  current_version: null,
  beta: null
)
```

