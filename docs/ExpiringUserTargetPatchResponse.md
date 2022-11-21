# LaunchDarklyApi::ExpiringUserTargetPatchResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;ExpiringUserTargetItem&gt;**](ExpiringUserTargetItem.md) | An array of expiring user targets |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **total_instructions** | **Integer** | The total count of instructions sent in the PATCH request | [optional] |
| **successful_instructions** | **Integer** | The total count of successful instructions sent in the PATCH request | [optional] |
| **failed_instructions** | **Integer** | The total count of the failed instructions sent in the PATCH request | [optional] |
| **errors** | [**Array&lt;ExpiringTargetError&gt;**](ExpiringTargetError.md) | An array of error messages for the failed instructions | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpiringUserTargetPatchResponse.new(
  items: null,
  _links: null,
  total_instructions: 1,
  successful_instructions: 1,
  failed_instructions: 0,
  errors: null
)
```

