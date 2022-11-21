# LaunchDarklyApi::AuditLogEntryListingRepCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;AuditLogEntryListingRep&gt;**](AuditLogEntryListingRep.md) | An array of audit log entries |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AuditLogEntryListingRepCollection.new(
  items: null,
  _links: null
)
```

