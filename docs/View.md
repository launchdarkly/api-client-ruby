# LaunchDarklyApi::View

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_access** | [**ViewsAccessRep**](ViewsAccessRep.md) |  | [optional] |
| **_links** | [**ParentAndSelfLinks**](ParentAndSelfLinks.md) |  | [optional] |
| **id** | **String** | Unique ID of this view |  |
| **account_id** | **String** | ID of the account that owns this view |  |
| **project_id** | **String** | ID of the project this view belongs to |  |
| **project_key** | **String** | Key of the project this view belongs to |  |
| **key** | **String** | Unique key for the view within the account/project |  |
| **name** | **String** | Human-readable name for the view |  |
| **description** | **String** | Optional detailed description of the view |  |
| **generate_sdk_keys** | **Boolean** | Whether to generate SDK keys for this view. Defaults to false. |  |
| **version** | **Integer** | Version number for tracking changes |  |
| **tags** | **Array&lt;String&gt;** | Tags associated with this view |  |
| **created_at** | **Integer** |  |  |
| **updated_at** | **Integer** |  |  |
| **archived** | **Boolean** | Whether this view is archived | [default to false] |
| **archived_at** | **Integer** |  | [optional] |
| **deleted_at** | **Integer** |  | [optional] |
| **deleted** | **Boolean** | Whether this view is deleted | [default to false] |
| **maintainer** | [**Maintainer**](Maintainer.md) |  | [optional] |
| **flags_summary** | [**FlagsSummary**](FlagsSummary.md) |  | [optional] |
| **segments_summary** | [**SegmentsSummary**](SegmentsSummary.md) |  | [optional] |
| **metrics_summary** | [**MetricsSummary**](MetricsSummary.md) |  | [optional] |
| **ai_configs_summary** | [**AIConfigsSummary**](AIConfigsSummary.md) |  | [optional] |
| **resource_summary** | [**ResourceSummary**](ResourceSummary.md) |  | [optional] |
| **flags_expanded** | [**ExpandedLinkedFlags**](ExpandedLinkedFlags.md) |  | [optional] |
| **segments_expanded** | [**ExpandedLinkedSegments**](ExpandedLinkedSegments.md) |  | [optional] |
| **metrics_expanded** | [**ExpandedLinkedMetrics**](ExpandedLinkedMetrics.md) |  | [optional] |
| **ai_configs_expanded** | [**ExpandedLinkedAIConfigs**](ExpandedLinkedAIConfigs.md) |  | [optional] |
| **resources_expanded** | [**ExpandedLinkedResources**](ExpandedLinkedResources.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::View.new(
  _access: null,
  _links: null,
  id: null,
  account_id: null,
  project_id: null,
  project_key: null,
  key: null,
  name: null,
  description: null,
  generate_sdk_keys: null,
  version: null,
  tags: null,
  created_at: null,
  updated_at: null,
  archived: null,
  archived_at: null,
  deleted_at: null,
  deleted: null,
  maintainer: null,
  flags_summary: null,
  segments_summary: null,
  metrics_summary: null,
  ai_configs_summary: null,
  resource_summary: null,
  flags_expanded: null,
  segments_expanded: null,
  metrics_expanded: null,
  ai_configs_expanded: null,
  resources_expanded: null
)
```

