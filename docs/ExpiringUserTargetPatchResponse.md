# LaunchDarklyApi::ExpiringUserTargetPatchResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;ExpiringUserTargetItem&gt;**](ExpiringUserTargetItem.md) |  |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **total_instructions** | **Integer** |  | [optional] |
| **successful_instructions** | **Integer** |  | [optional] |
| **failed_instructions** | **Integer** |  | [optional] |
| **errors** | [**Array&lt;ExpiringUserTargetError&gt;**](ExpiringUserTargetError.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpiringUserTargetPatchResponse.new(
  items: null,
  _links: null,
  total_instructions: null,
  successful_instructions: null,
  failed_instructions: null,
  errors: null
)
```

