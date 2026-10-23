# LaunchDarklyApi::SdkKeyViewsPut

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **view_keys** | **Array&lt;String&gt;** | The complete target list of view keys to associate with this SDK key. An empty array removes all views from the SDK key. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SdkKeyViewsPut.new(
  view_keys: null
)
```

