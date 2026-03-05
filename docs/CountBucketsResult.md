# LaunchDarklyApi::CountBucketsResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **buckets** | [**Array&lt;CountBucket&gt;**](CountBucket.md) |  |  |
| **total_count** | **Integer** |  |  |
| **bucket_interval_ms** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CountBucketsResult.new(
  buckets: null,
  total_count: null,
  bucket_interval_ms: null
)
```

