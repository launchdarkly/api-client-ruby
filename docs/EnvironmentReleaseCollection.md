# LaunchDarklyApi::EnvironmentReleaseCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;EnvironmentRelease&gt;**](EnvironmentRelease.md) | The releases on this page. |  |
| **total_count** | **Integer** | The total number of releases that match the request, before &#x60;limit&#x60; and &#x60;offset&#x60; are applied. |  |
| **_links** | [**Hash&lt;String, EnvironmentReleaseLink&gt;**](EnvironmentReleaseLink.md) | Links to this page (&#x60;self&#x60;), the flag (&#x60;parent&#x60;), and, where they apply, the &#x60;first&#x60;, &#x60;prev&#x60;, &#x60;next&#x60;, and &#x60;last&#x60; pages. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::EnvironmentReleaseCollection.new(
  items: null,
  total_count: null,
  _links: null
)
```

