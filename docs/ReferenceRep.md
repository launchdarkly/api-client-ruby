# LaunchDarklyApi::ReferenceRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path** | **String** | File path of the reference |  |
| **hint** | **String** | Programming language used in the file | [optional] |
| **hunks** | [**Array&lt;HunkRep&gt;**](HunkRep.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ReferenceRep.new(
  path: /main/index.js,
  hint: javascript,
  hunks: null
)
```

