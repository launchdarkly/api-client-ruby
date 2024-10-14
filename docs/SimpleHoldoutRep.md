# LaunchDarklyApi::SimpleHoldoutRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **key** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **created_at** | **Integer** |  | [optional] |
| **updated_at** | **Integer** |  | [optional] |
| **experiments** | [**Array&lt;RelatedExperimentRep&gt;**](RelatedExperimentRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SimpleHoldoutRep.new(
  _id: null,
  key: null,
  name: null,
  status: null,
  created_at: null,
  updated_at: null,
  experiments: null
)
```

