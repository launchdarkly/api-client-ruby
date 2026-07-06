# LaunchDarklyApi::WarehouseSetupScriptPostBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **snowflake_host_address** | **String** |  | [optional] |
| **database_name** | **String** |  | [optional] |
| **warehouse_name** | **String** |  | [optional] |
| **role_name** | **String** |  | [optional] |
| **schema_name** | **String** |  | [optional] |
| **user_name** | **String** |  | [optional] |
| **include_network_policy** | **Boolean** |  | [optional] |
| **cluster_identifier** | **String** |  | [optional] |
| **cluster_region** | **String** |  | [optional] |
| **cluster_aws_account_id** | **String** |  | [optional] |
| **endpoint** | **String** |  | [optional] |
| **click_house_database_name** | **String** |  | [optional] |
| **click_house_user_name** | **String** |  | [optional] |
| **click_house_s3_bucket_name** | **String** |  | [optional] |
| **click_house_include_host_restriction** | **Boolean** |  | [optional] |
| **click_house_service_role_arn** | **String** |  | [optional] |
| **click_house_password** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::WarehouseSetupScriptPostBody.new(
  name: null,
  snowflake_host_address: null,
  database_name: null,
  warehouse_name: null,
  role_name: null,
  schema_name: null,
  user_name: null,
  include_network_policy: null,
  cluster_identifier: null,
  cluster_region: null,
  cluster_aws_account_id: null,
  endpoint: null,
  click_house_database_name: null,
  click_house_user_name: null,
  click_house_s3_bucket_name: null,
  click_house_include_host_restriction: null,
  click_house_service_role_arn: null,
  click_house_password: null
)
```

