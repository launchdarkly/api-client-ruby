# LaunchDarklyApi::MutableFieldsByStatusRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **not_started** | **Hash&lt;String, Array&lt;String&gt;&gt;** |  | [optional] |
| **running** | **Hash&lt;String, Array&lt;String&gt;&gt;** |  | [optional] |
| **stopped** | **Hash&lt;String, Array&lt;String&gt;&gt;** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MutableFieldsByStatusRep.new(
  not_started: null,
  running: null,
  stopped: null
)
```

