# LaunchDarklyApi::PostInsightGroupParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the insight group |  |
| **key** | **String** | The key of the insight group |  |
| **project_key** | **String** | The projectKey to be associated with the insight group |  |
| **environment_key** | **String** | The environmentKey to be associated with the insight group |  |
| **application_keys** | **Array&lt;String&gt;** | The application keys to associate with the insight group. If not provided, the insight group will include data from all applications. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PostInsightGroupParams.new(
  name: Production - All Apps,
  key: default-production-all-apps,
  project_key: default,
  environment_key: production,
  application_keys: [&quot;billing-service&quot;,&quot;inventory-service&quot;]
)
```

