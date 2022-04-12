# LaunchDarklyApi::FlagRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **targeting_rule** | **String** |  | [optional] |
| **flag_config_version** | **Integer** |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagRep.new(
  targeting_rule: null,
  flag_config_version: null,
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/flags/my-project/my-flag&quot;,&quot;type&quot;:&quot;application/json&quot;}}
)
```

