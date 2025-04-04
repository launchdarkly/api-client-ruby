# LaunchDarklyApi::AssignedToRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **members_count** | **Integer** | The number of individual members this role is assigned to | [optional] |
| **teams_count** | **Integer** | The number of teams this role is assigned to | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AssignedToRep.new(
  members_count: null,
  teams_count: null
)
```

