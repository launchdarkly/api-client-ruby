# LaunchDarklyApi::ExpandedMetric

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique key used to reference the metric | [optional] |
| **name** | **String** | A human-friendly name for the metric | [optional] |
| **creation_date** | **Integer** | Creation date in milliseconds | [optional] |
| **last_modified** | **Integer** | Last modification date in milliseconds | [optional] |
| **is_active** | **Boolean** | Whether the metric is active | [optional] |
| **event_key** | **String** | Event key for the metric | [optional] |
| **_id** | **String** | ID of the metric | [optional] |
| **_version_id** | **String** | Version ID of the metric | [optional] |
| **kind** | **String** | Kind of the Metric | [optional] |
| **category** | **String** | Category of the Metric | [optional] |
| **description** | **String** | Description of the Metric | [optional] |
| **is_numeric** | **Boolean** |  | [optional] |
| **last_seen** | **Integer** | Last seen date in milliseconds | [optional] |
| **_links** | [**ParentAndSelfLinks**](ParentAndSelfLinks.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpandedMetric.new(
  key: null,
  name: null,
  creation_date: null,
  last_modified: null,
  is_active: null,
  event_key: null,
  _id: null,
  _version_id: null,
  kind: null,
  category: null,
  description: null,
  is_numeric: null,
  last_seen: null,
  _links: null
)
```

