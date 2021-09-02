# LaunchDarklyApi::FlagStatusRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **name** | **String** | Status of the flag | [optional] |
| **last_requested** | **Time** | Timestamp of last time flag was requested | [optional] |
| **default** | **Object** | Default value seen from code | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagStatusRep.new(
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/flags/my-project/my-flag&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/flag-statuses/my-project/my-flag&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  name: inactive,
  last_requested: 2020-02-05T18:17:01.514Z,
  default: null
)
```

