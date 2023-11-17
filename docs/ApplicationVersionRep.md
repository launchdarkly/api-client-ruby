# LaunchDarklyApi::ApplicationVersionRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **_version** | **Integer** | Version of the application version | [optional] |
| **auto_added** | **Boolean** | Whether the application version was automatically created, because it was included in a context when a LaunchDarkly SDK evaluated a feature flag, or if the application version was created through the LaunchDarkly UI or REST API.  |  |
| **creation_date** | **Integer** |  | [optional] |
| **key** | **String** | The unique identifier of this application version |  |
| **name** | **String** | The name of this version |  |
| **supported** | **Boolean** | Whether this version is supported. Only applicable if the application &lt;code&gt;kind&lt;/code&gt; is &lt;code&gt;mobile&lt;/code&gt;. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ApplicationVersionRep.new(
  _access: null,
  _links: null,
  _version: null,
  auto_added: true,
  creation_date: null,
  key: 2,
  name: 01.02.03,
  supported: true
)
```

