# LaunchDarklyApi::AnnouncementPaginatedLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first** | [**AnnouncementLink**](AnnouncementLink.md) |  | [optional] |
| **last** | [**AnnouncementLink**](AnnouncementLink.md) |  | [optional] |
| **_next** | [**AnnouncementLink**](AnnouncementLink.md) |  | [optional] |
| **prev** | [**AnnouncementLink**](AnnouncementLink.md) |  | [optional] |
| **_self** | [**AnnouncementLink**](AnnouncementLink.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AnnouncementPaginatedLinks.new(
  first: null,
  last: null,
  _next: null,
  prev: null,
  _self: null
)
```

