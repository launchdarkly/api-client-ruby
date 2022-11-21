# LaunchDarklyApi::Users

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **total_count** | **Integer** | The total number of users in the environment |  |
| **items** | [**Array&lt;UserRecord&gt;**](UserRecord.md) | Details on the users |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Users.new(
  _links: {&quot;next&quot;:{&quot;href&quot;:&quot;/api/v2/user-search/my-project/my-environment?after&#x3D;1647993600000&amp;limit&#x3D;20&amp;searchAfter&#x3D;my-user&amp;sort&#x3D;userKey&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/user-search/my-project/my-environment?after&#x3D;1647993600000&amp;limit&#x3D;20&amp;sort&#x3D;userKey&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  total_count: 245,
  items: null
)
```

