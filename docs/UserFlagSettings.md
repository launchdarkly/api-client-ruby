# LaunchDarklyApi::UserFlagSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Hash&lt;String, UserFlagSetting&gt;**](UserFlagSetting.md) | An array of flag settings for the user. |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::UserFlagSettings.new(
  items: {&quot;alternate.page&quot;:{&quot;_links&quot;:{&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/users/lacuna/production/Abbie_Braun/flags/alternate.page&quot;,&quot;type&quot;:&quot;application/json&quot;}},&quot;_value&quot;:false,&quot;setting&quot;:null},&quot;sort.order&quot;:{&quot;_links&quot;:{&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/users/lacuna/production/Abbie_Braun/flags/sort.order&quot;,&quot;type&quot;:&quot;application/json&quot;}},&quot;_value&quot;:true,&quot;setting&quot;:null}},
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/users/lacuna/production/Abbie_Braun/flags&quot;,&quot;type&quot;:&quot;application/json&quot;}}
)
```

