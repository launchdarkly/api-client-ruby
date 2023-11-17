# LaunchDarklyApi::ReleasePipeline

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | Timestamp of when the release pipeline was created |  |
| **description** | **String** | The release pipeline description | [optional] |
| **key** | **String** | The release pipeline key |  |
| **name** | **String** | The release pipeline name |  |
| **phases** | [**Array&lt;Phase&gt;**](Phase.md) | An ordered list of the release pipeline phases. Each phase is a logical grouping of one or more environments that share attributes for rolling out changes. |  |
| **tags** | **Array&lt;String&gt;** | A list of the release pipeline&#39;s tags | [optional] |
| **_version** | **Integer** | The release pipeline version | [optional] |
| **_access** | [**Access**](Access.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ReleasePipeline.new(
  created_at: null,
  description: Standard pipeline to roll out to production,
  key: standard-pipeline,
  name: Standard Pipeline,
  phases: null,
  tags: [&quot;example-tag&quot;],
  _version: 1,
  _access: null
)
```

