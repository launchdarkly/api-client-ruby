# LaunchDarklyApi::MaintainerTeam

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The key of the maintainer team |  |
| **name** | **String** | A human-friendly name for the maintainer team |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MaintainerTeam.new(
  key: team-key-123abc,
  name: Example team,
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/teams&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;roles&quot;:{&quot;href&quot;:&quot;/api/v2/teams/example-team/roles&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/teams/example-team&quot;,&quot;type&quot;:&quot;application/json&quot;}}
)
```

