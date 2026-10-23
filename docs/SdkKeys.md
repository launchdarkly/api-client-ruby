# LaunchDarklyApi::SdkKeys

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**SdkKeysSelfLink**](SdkKeysSelfLink.md) |  | [optional] |
| **items** | [**Array&lt;SdkKeyListItem&gt;**](SdkKeyListItem.md) |  |  |
| **total_count** | **Integer** | The total number of SDK keys matching the query, before pagination. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SdkKeys.new(
  _links: null,
  items: null,
  total_count: null
)
```

