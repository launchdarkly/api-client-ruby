# LaunchDarklyApi::FlagLinkRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **_key** | **String** | The flag link key | [optional] |
| **_integration_key** | **String** | The integration key for an integration whose &lt;code&gt;manifest.json&lt;/code&gt; includes the &lt;code&gt;flagLink&lt;/code&gt; capability, if this is a flag link for an existing integration | [optional] |
| **_id** | **String** | The ID of this flag link |  |
| **_deep_link** | **String** | The URL for the external resource the flag is linked to |  |
| **_timestamp** | [**TimestampRep**](TimestampRep.md) |  |  |
| **title** | **String** | The title of the flag link | [optional] |
| **description** | **String** | The description of the flag link | [optional] |
| **_metadata** | **Hash&lt;String, String&gt;** | The metadata required by this integration in order to create a flag link, if this is a flag link for an existing integration. Defined in the integration&#39;s &lt;code&gt;manifest.json&lt;/code&gt; file under &lt;code&gt;flagLink&lt;/code&gt;. | [optional] |
| **_created_at** | **Integer** |  |  |
| **_member** | [**FlagLinkMember**](FlagLinkMember.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagLinkRep.new(
  _links: null,
  _key: flag-link-key-123abc,
  _integration_key: null,
  _id: 1234a56b7c89d012345e678f,
  _deep_link: https://example.com/archives/123123123,
  _timestamp: null,
  title: Example link title,
  description: Example link description,
  _metadata: null,
  _created_at: null,
  _member: null
)
```

