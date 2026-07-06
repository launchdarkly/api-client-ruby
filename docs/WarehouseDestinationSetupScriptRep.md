# LaunchDarklyApi::WarehouseDestinationSetupScriptRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **script** | **String** | The SQL setup script to run in your data warehouse | [optional] |
| **public_key** | **String** | The RSA public key (Snowflake only) to store as the destination public_key | [optional] |
| **public_key_pkcs8** | **String** | The PKCS8 RSA public key (Snowflake only) | [optional] |
| **redshift_iam_permissions_policy** | **String** | For Redshift, present only when clusterIdentifier, clusterRegion, and clusterAwsAccountId are supplied in the request body. | [optional] |
| **redshift_iam_trust_policy** | **String** | For Redshift, present only when clusterIdentifier, clusterRegion, and clusterAwsAccountId are supplied in the request body. | [optional] |
| **s3_bucket_name** | **String** | The auto-generated S3 staging bucket name (ClickHouse and Redshift) | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::WarehouseDestinationSetupScriptRep.new(
  script: null,
  public_key: null,
  public_key_pkcs8: null,
  redshift_iam_permissions_policy: null,
  redshift_iam_trust_policy: null,
  s3_bucket_name: null
)
```

