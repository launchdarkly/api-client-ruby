# LaunchDarklyApi::ContextKindRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The context kind key |  |
| **name** | **String** | The context kind name |  |
| **description** | **String** | The context kind description |  |
| **version** | **Integer** | The context kind version |  |
| **creation_date** | **Integer** |  |  |
| **last_modified** | **Integer** |  |  |
| **last_seen** | **Integer** |  | [optional] |
| **created_from** | **String** |  |  |
| **hide_in_targeting** | **Boolean** | Alias for archived. | [optional] |
| **archived** | **Boolean** | Whether the context kind is archived. Archived context kinds are unavailable for targeting. | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ContextKindRep.new(
  key: organization-key-123abc,
  name: Organization,
  description: An example context kind, to enable targeting based on organization,
  version: 4,
  creation_date: null,
  last_modified: null,
  last_seen: null,
  created_from: null,
  hide_in_targeting: false,
  archived: false,
  _links: null
)
```

