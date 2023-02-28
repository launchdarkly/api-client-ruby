# LaunchDarklyApi::Target

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **values** | **Array&lt;String&gt;** | A list of the keys for targets that will receive this variation because of individual targeting |  |
| **variation** | **Integer** | The index, from the array of variations for this flag, of the variation to serve this list of targets |  |
| **context_kind** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Target.new(
  values: null,
  variation: null,
  context_kind: null
)
```

