# LaunchDarklyApi::TriggerWorkflowRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **_version** | **Integer** |  | [optional] |
| **_creation_date** | **Integer** |  | [optional] |
| **_maintainer_id** | **String** |  | [optional] |
| **_maintainer** | [**MemberSummary**](MemberSummary.md) |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **_integration_key** | **String** |  | [optional] |
| **instructions** | **Array&lt;Hash&gt;** |  | [optional] |
| **_last_triggered_at** | **Integer** |  | [optional] |
| **_recent_trigger_bodies** | [**Array&lt;RecentTriggerBody&gt;**](RecentTriggerBody.md) |  | [optional] |
| **_trigger_count** | **Integer** |  | [optional] |
| **trigger_url** | **String** |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TriggerWorkflowRep.new(
  _id: null,
  _version: null,
  _creation_date: null,
  _maintainer_id: null,
  _maintainer: null,
  enabled: null,
  _integration_key: null,
  instructions: null,
  _last_triggered_at: null,
  _recent_trigger_bodies: null,
  _trigger_count: null,
  trigger_url: null,
  _links: null
)
```

