# LaunchDarklyApi::AnnouncementPatchOperation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **op** | **String** | The type of operation to perform |  |
| **path** | **String** | A JSON Pointer string specifying the part of the document to operate on |  |
| **value** | **Object** | A JSON value used in \&quot;add\&quot;, \&quot;replace\&quot;, and \&quot;test\&quot; operations | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AnnouncementPatchOperation.new(
  op: replace,
  path: /exampleField,
  value: new example value
)
```

