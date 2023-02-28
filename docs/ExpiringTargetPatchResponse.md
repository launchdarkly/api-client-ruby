# LaunchDarklyApi::ExpiringTargetPatchResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;ExpiringTarget&gt;**](ExpiringTarget.md) | A list of the results from each instruction |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **total_instructions** | **Integer** |  | [optional] |
| **successful_instructions** | **Integer** |  | [optional] |
| **failed_instructions** | **Integer** |  | [optional] |
| **errors** | [**Array&lt;ExpiringTargetError&gt;**](ExpiringTargetError.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpiringTargetPatchResponse.new(
  items: null,
  _links: null,
  total_instructions: null,
  successful_instructions: null,
  failed_instructions: null,
  errors: null
)
```

