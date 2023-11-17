# LaunchDarklyApi::FlagListingRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The flag name |  |
| **key** | **String** | The flag key |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **_site** | [**Link**](Link.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagListingRep.new(
  name: Example flag,
  key: flag-key-123abc,
  _links: null,
  _site: null
)
```

