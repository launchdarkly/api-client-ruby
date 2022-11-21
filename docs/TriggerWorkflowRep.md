# LaunchDarklyApi::TriggerWorkflowRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **_version** | **Integer** | The flag trigger version | [optional] |
| **_creation_date** | **Integer** |  | [optional] |
| **_maintainer_id** | **String** | The ID of the flag trigger maintainer | [optional] |
| **_maintainer** | [**MemberSummary**](MemberSummary.md) |  | [optional] |
| **enabled** | **Boolean** | Whether the flag trigger is currently enabled | [optional] |
| **_integration_key** | **String** | The unique identifier of the integration for your trigger | [optional] |
| **instructions** | **Array&lt;Hash&gt;** |  | [optional] |
| **_last_triggered_at** | **Integer** |  | [optional] |
| **_recent_trigger_bodies** | [**Array&lt;RecentTriggerBody&gt;**](RecentTriggerBody.md) | Details on recent flag trigger requests. | [optional] |
| **_trigger_count** | **Integer** | Number of times the trigger has been executed | [optional] |
| **trigger_url** | **String** | The unguessable URL for this flag trigger | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TriggerWorkflowRep.new(
  _id: null,
  _version: 1,
  _creation_date: null,
  _maintainer_id: 12ab3c45de678910abc12345,
  _maintainer: null,
  enabled: true,
  _integration_key: generic-trigger,
  instructions: null,
  _last_triggered_at: null,
  _recent_trigger_bodies: null,
  _trigger_count: 3,
  trigger_url: null,
  _links: null
)
```

