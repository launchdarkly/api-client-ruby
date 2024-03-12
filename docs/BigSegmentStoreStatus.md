# LaunchDarklyApi::BigSegmentStoreStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available** | **Boolean** | Whether the persistent store integration is fully synchronized with the LaunchDarkly environment, and the &lt;code&gt;lastSync&lt;/code&gt; occurred within a few minutes | [optional] |
| **potentially_stale** | **Boolean** | Whether the persistent store integration may not be fully synchronized with the LaunchDarkly environment. &lt;code&gt;true&lt;/code&gt; if the integration could be stale. | [optional] |
| **last_sync** | **Integer** |  | [optional] |
| **last_error** | **Integer** |  | [optional] |
| **errors** | [**Array&lt;StoreIntegrationError&gt;**](StoreIntegrationError.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::BigSegmentStoreStatus.new(
  available: true,
  potentially_stale: false,
  last_sync: null,
  last_error: null,
  errors: null
)
```

