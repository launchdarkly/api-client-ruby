# LaunchDarklyApi::PatchIpAllowlistConfigRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_allowlist_enabled** | **Boolean** | Enable or disable session allowlist | [optional] |
| **api_token_allowlist_enabled** | **Boolean** | Enable or disable API token allowlist | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PatchIpAllowlistConfigRequest.new(
  session_allowlist_enabled: null,
  api_token_allowlist_enabled: null
)
```

