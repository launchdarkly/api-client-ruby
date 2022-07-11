# LaunchDarklyApi::Client

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | Links to related resources. |  |
| **name** | **String** | Client name |  |
| **description** | **String** | Client description | [optional] |
| **_account_id** | **String** | The account ID the client is registered under |  |
| **_client_id** | **String** | The client&#39;s unique ID |  |
| **_client_secret** | **String** | The client secret. This will only be shown upon creation. | [optional] |
| **redirect_uri** | **String** | The client&#39;s redirect URI |  |
| **_creation_date** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Client.new(
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/oauth/clients&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/oauth/clients/50666563-9144-4125-b822-33f308227e45&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  name: null,
  description: null,
  _account_id: null,
  _client_id: null,
  _client_secret: null,
  redirect_uri: null,
  _creation_date: null
)
```

