# LaunchDarklyApi::RedshiftDataExportCompletedArtifactsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sql_setup_script** | **String** | The SQL setup script originally run against the Redshift cluster, rehydrated from the destination&#39;s persisted custom names. | [optional] |
| **s3_bucket_name** | **String** | The S3 staging bucket name used by the destination. This is the customer-supplied bucket name, or the auto-generated name for destinations that did not set one. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::RedshiftDataExportCompletedArtifactsRep.new(
  sql_setup_script: null,
  s3_bucket_name: null
)
```

