# LaunchDarklyApi::PaginatedLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first** | [**AiConfigsLink**](AiConfigsLink.md) |  | [optional] |
| **last** | [**AiConfigsLink**](AiConfigsLink.md) |  | [optional] |
| **_next** | [**AiConfigsLink**](AiConfigsLink.md) |  | [optional] |
| **prev** | [**AiConfigsLink**](AiConfigsLink.md) |  | [optional] |
| **_self** | [**AiConfigsLink**](AiConfigsLink.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PaginatedLinks.new(
  first: null,
  last: null,
  _next: null,
  prev: null,
  _self: null
)
```

