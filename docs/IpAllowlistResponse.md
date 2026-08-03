# LaunchDarklyApi::IpAllowlistResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**IPAllowlistSelfLink**](IPAllowlistSelfLink.md) |  | [optional] |
| **session_allowlist_enabled** | **Boolean** |  |  |
| **api_token_allowlist_enabled** | **Boolean** |  |  |
| **total_count** | **Integer** | The total number of entries matching the query, before pagination. | [optional] |
| **entries** | [**Array&lt;IpAllowlistEntryResponse&gt;**](IpAllowlistEntryResponse.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::IpAllowlistResponse.new(
  _links: null,
  session_allowlist_enabled: true,
  api_token_allowlist_enabled: false,
  total_count: 42,
  entries: null
)
```

