# LaunchDarklyApi::UserSegments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;UserSegment&gt;**](UserSegment.md) | An array of segments |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | Links to other resources within the API. Includes the URL and content type of those resources. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::UserSegments.new(
  items: null,
  _links: null
)
```

