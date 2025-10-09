# LaunchDarklyApi::ViewsPaginatedLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first** | [**ViewsLink**](ViewsLink.md) |  | [optional] |
| **last** | [**ViewsLink**](ViewsLink.md) |  | [optional] |
| **_next** | [**ViewsLink**](ViewsLink.md) |  | [optional] |
| **prev** | [**ViewsLink**](ViewsLink.md) |  | [optional] |
| **_self** | [**ViewsLink**](ViewsLink.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ViewsPaginatedLinks.new(
  first: null,
  last: null,
  _next: null,
  prev: null,
  _self: null
)
```

