# LaunchDarklyApi::UpsertContextKindPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The context kind name |  |
| **description** | **String** | The context kind description | [optional] |
| **hide_in_targeting** | **Boolean** | Whether the context kind is hidden. Hidden context kinds are unavailable for targeting. If not specified when the context kind is created, defaults to false. | [optional] |
| **version** | **Integer** | The context kind version. If not specified when the context kind is created, defaults to 1. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::UpsertContextKindPayload.new(
  name: organization,
  description: An example context kind for organizations,
  hide_in_targeting: false,
  version: 1
)
```

