# LaunchDarklyApi::FlagLinkRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **_key** | **String** |  | [optional] |
| **_integration_key** | **String** |  | [optional] |
| **_id** | **String** |  |  |
| **_deep_link** | **String** |  |  |
| **_timestamp** | [**TimestampRep**](TimestampRep.md) |  |  |
| **title** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **_metadata** | **Hash&lt;String, String&gt;** |  | [optional] |
| **_created_at** | **Integer** |  |  |
| **_member** | [**FlagLinkMember**](FlagLinkMember.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagLinkRep.new(
  _links: null,
  _key: null,
  _integration_key: null,
  _id: null,
  _deep_link: null,
  _timestamp: null,
  title: null,
  description: null,
  _metadata: null,
  _created_at: null,
  _member: null
)
```

