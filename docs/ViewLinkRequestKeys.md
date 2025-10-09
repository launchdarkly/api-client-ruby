# LaunchDarklyApi::ViewLinkRequestKeys

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keys** | **Array&lt;String&gt;** | Keys of the resources (flags, segments, AI configs) to link/unlink |  |
| **comment** | **String** | Optional comment for the link/unlink operation | [optional][default to &#39;&#39;] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ViewLinkRequestKeys.new(
  keys: null,
  comment: null
)
```

