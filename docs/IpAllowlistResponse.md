# LaunchDarklyApi::IpAllowlistResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_allowlist_enabled** | **Boolean** |  |  |
| **api_token_allowlist_enabled** | **Boolean** |  |  |
| **entries** | [**Array&lt;IpAllowlistEntryResponse&gt;**](IpAllowlistEntryResponse.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::IpAllowlistResponse.new(
  session_allowlist_enabled: true,
  api_token_allowlist_enabled: false,
  entries: null
)
```

