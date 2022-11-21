# LaunchDarklyApi::TargetResourceRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **name** | **String** | The name of the resource | [optional] |
| **resources** | **Array&lt;String&gt;** | The resource specifier | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TargetResourceRep.new(
  _links: null,
  name: Example flag name,
  resources: [&quot;proj/example-project:env/production:flag/example-flag&quot;]
)
```

