# LaunchDarklyApi::FlagFollowersGetRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **items** | [**Array&lt;FollowFlagMember&gt;**](FollowFlagMember.md) | An array of members who are following this flag |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagFollowersGetRep.new(
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/flags/my-flay/environments/my-environment/followers&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  items: null
)
```

