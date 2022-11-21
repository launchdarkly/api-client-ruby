# LaunchDarklyApi::SubjectDataRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **name** | **String** | The subject&#39;s name | [optional] |
| **avatar_url** | **String** | The subject&#39;s avatar | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SubjectDataRep.new(
  _links: null,
  name: null,
  avatar_url: null
)
```

