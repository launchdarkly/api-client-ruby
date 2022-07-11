# LaunchDarklyApi::FlagFollowersByProjEnvGetRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **items** | [**Array&lt;FollowersPerFlag&gt;**](FollowersPerFlag.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagFollowersByProjEnvGetRep.new(
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/flags/my-flay/environments/my-environment/followers&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  items: null
)
```

