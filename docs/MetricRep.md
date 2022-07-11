# LaunchDarklyApi::MetricRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  |  |
| **key** | **String** |  |  |
| **name** | **String** |  |  |
| **kind** | **String** |  |  |
| **_attached_flag_count** | **Integer** |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **_site** | [**Link**](Link.md) |  | [optional] |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  |  |
| **_creation_date** | **Integer** |  |  |
| **last_modified** | [**Modification**](Modification.md) |  | [optional] |
| **maintainer_id** | **String** |  | [optional] |
| **_maintainer** | [**MemberSummary**](MemberSummary.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **is_numeric** | **Boolean** |  | [optional] |
| **success_criteria** | **String** |  | [optional] |
| **unit** | **String** |  | [optional] |
| **event_key** | **String** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **_attached_features** | [**Array&lt;FlagListingRep&gt;**](FlagListingRep.md) |  | [optional] |
| **_version** | **Integer** |  | [optional] |
| **selector** | **String** |  | [optional] |
| **urls** | **Array&lt;Hash&gt;** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricRep.new(
  _id: 5902deadbeef667524a01290,
  key: my-metric,
  name: my-metric,
  kind: null,
  _attached_flag_count: 0,
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/metrics/my-project&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/metrics/my-project/my-metric&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  _site: null,
  _access: null,
  tags: [],
  _creation_date: null,
  last_modified: null,
  maintainer_id: 569fdeadbeef1644facecafe,
  _maintainer: null,
  description: null,
  is_numeric: null,
  success_criteria: null,
  unit: null,
  event_key: null,
  is_active: null,
  _attached_features: null,
  _version: null,
  selector: null,
  urls: null
)
```

