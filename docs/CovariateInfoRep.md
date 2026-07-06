# LaunchDarklyApi::CovariateInfoRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the covariate matrix |  |
| **file_name** | **String** | The file name of the uploaded covariate matrix |  |
| **created_at** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CovariateInfoRep.new(
  id: 74a49a2b-4834-4246-917e-5d85231d8c2a,
  file_name: covariate.csv,
  created_at: null
)
```

