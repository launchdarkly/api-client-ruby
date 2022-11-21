# LaunchDarklyApi::VersionsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **valid_versions** | **Array&lt;Integer&gt;** | A list of all valid API versions. To learn more about our versioning, read [Versioning](https://apidocs.launchdarkly.com/#section/Overview/Versioning). |  |
| **latest_version** | **Integer** |  |  |
| **current_version** | **Integer** |  |  |
| **beta** | **Boolean** | Whether the version of the API currently is use is a beta version. This is always &lt;code&gt;true&lt;/code&gt; if you add the &lt;code&gt;LD-API-Version: beta&lt;/code&gt; header to your request. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::VersionsRep.new(
  valid_versions: null,
  latest_version: null,
  current_version: null,
  beta: false
)
```

