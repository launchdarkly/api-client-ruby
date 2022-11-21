# LaunchDarklyApi::BulkEditMembersRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **members** | **Array&lt;String&gt;** | A list of members IDs of the members who were successfully updated. | [optional] |
| **errors** | **Array&lt;Hash&lt;String, String&gt;&gt;** | A list of member IDs and errors for the members whose updates failed. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::BulkEditMembersRep.new(
  members: [&quot;1234a56b7c89d012345e678f&quot;],
  errors: [{&quot;507f1f77bcf86cd799439011&quot;:&quot;you cannot modify your own role&quot;}]
)
```

