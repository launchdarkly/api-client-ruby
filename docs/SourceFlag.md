# LaunchDarklyApi::SourceFlag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The environment key for the source environment |  |
| **version** | **Integer** | The version of the source flag from which to copy | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SourceFlag.new(
  key: example-environment-key,
  version: 1
)
```

