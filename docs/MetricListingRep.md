# LaunchDarklyApi::MetricListingRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experiment_count** | **Integer** | The number of experiments using this metric | [optional] |
| **_id** | **String** | The ID of this metric |  |
| **key** | **String** | A unique key to reference the metric |  |
| **name** | **String** | A human-friendly name for the metric |  |
| **kind** | **String** | The kind of event the metric tracks |  |
| **_attached_flag_count** | **Integer** | The number of feature flags currently attached to this metric | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **_site** | [**Link**](Link.md) |  | [optional] |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the metric |  |
| **_creation_date** | **Integer** |  |  |
| **last_modified** | [**Modification**](Modification.md) |  | [optional] |
| **maintainer_id** | **String** | The ID of the member who maintains this metric | [optional] |
| **_maintainer** | [**MemberSummary**](MemberSummary.md) |  | [optional] |
| **description** | **String** | Description of the metric | [optional] |
| **is_numeric** | **Boolean** | For custom metrics, whether to track numeric changes in value against a baseline (&lt;code&gt;true&lt;/code&gt;) or to track a conversion when an end user takes an action (&lt;code&gt;false&lt;/code&gt;). | [optional] |
| **success_criteria** | **String** | For custom metrics, the success criteria | [optional] |
| **unit** | **String** | For numeric custom metrics, the unit of measure | [optional] |
| **event_key** | **String** | For custom metrics, the event name to use in your code | [optional] |
| **randomization_units** | **Array&lt;String&gt;** | An array of randomization units allowed for this metric | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricListingRep.new(
  experiment_count: 0,
  _id: 5902deadbeef667524a01290,
  key: metric-key-123abc,
  name: My metric,
  kind: custom,
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
  is_numeric: true,
  success_criteria: null,
  unit: null,
  event_key: null,
  randomization_units: [&quot;user&quot;]
)
```

