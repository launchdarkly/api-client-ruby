# LaunchDarklyApi::FlagLinkPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The flag link key | [optional] |
| **integration_key** | **String** | The integration key for an integration whose &lt;code&gt;manifest.json&lt;/code&gt; includes the &lt;code&gt;flagLink&lt;/code&gt; capability, if this is a flag link for an existing integration. Do not include for URL flag links. | [optional] |
| **timestamp** | **Integer** |  | [optional] |
| **deep_link** | **String** | The URL for the external resource you are linking the flag to | [optional] |
| **title** | **String** | The title of the flag link | [optional] |
| **description** | **String** | The description of the flag link | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | The metadata required by this integration in order to create a flag link, if this is a flag link for an existing integration. Defined in the integration&#39;s &lt;code&gt;manifest.json&lt;/code&gt; file under &lt;code&gt;flagLink&lt;/code&gt;. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagLinkPost.new(
  key: flag-link-key-123abc,
  integration_key: null,
  timestamp: null,
  deep_link: https://example.com/archives/123123123,
  title: Example link title,
  description: Example link description,
  metadata: null
)
```

