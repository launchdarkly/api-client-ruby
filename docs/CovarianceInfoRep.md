# LaunchDarklyApi::CovarianceInfoRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the covariance matrix |  |
| **file_name** | **String** | The file name of the uploaded covariance matrix |  |
| **created_at** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CovarianceInfoRep.new(
  id: 74a49a2b-4834-4246-917e-5d85231d8c2a,
  file_name: covariance.csv,
  created_at: null
)
```

