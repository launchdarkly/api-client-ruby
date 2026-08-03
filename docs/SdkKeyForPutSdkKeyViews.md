# LaunchDarklyApi::SdkKeyForPutSdkKeyViews

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**ParentAndSelfLinks**](ParentAndSelfLinks.md) |  | [optional] |
| **kind** | [**SdkKeyKind**](SdkKeyKind.md) |  |  |
| **key** | **String** | The user-defined identifying key of the SDK key. This is used solely to identify an SDK key and is distinct from the value field, which is the actual SDK key value. |  |
| **name** | **String** | The human-readable name of the SDK key. |  |
| **description** | **String** | The optional description of the SDK key. | [optional] |
| **expiry** | **Integer** |  | [optional] |
| **value** | **String** | The string value of the SDK key. Use this when configuring your SDK. |  |
| **is_default** | **Boolean** | Indicates if this SDK key is the system-defined default for the environment. There may also be an expiring default SDK key for the environment (not possible with mobile keys). |  |
| **_created_by_member_id** | **String** | The ID of the member who created the SDK key. This field is immutable. | [optional] |
| **_created_at** | **Integer** |  |  |
| **_updated_at** | **Integer** |  |  |
| **_version** | **Integer** | The auto-incremented version number of the SDK key. |  |
| **view_summaries** | [**Array&lt;ViewSummary&gt;**](ViewSummary.md) | Summaries of views associated with the SDK key. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SdkKeyForPutSdkKeyViews.new(
  _links: null,
  kind: null,
  key: null,
  name: null,
  description: null,
  expiry: null,
  value: null,
  is_default: null,
  _created_by_member_id: null,
  _created_at: null,
  _updated_at: null,
  _version: null,
  view_summaries: null
)
```

