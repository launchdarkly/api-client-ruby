# LaunchDarklyApi::ExpandedSegment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique key used to reference the segment |  |
| **name** | **String** | A human-friendly name for the segment |  |
| **environment_id** | **String** | Environment ID of the segment | [optional] |
| **environment_key** | **String** | Environment key of the segment | [optional] |
| **description** | **String** | Description of the segment | [optional] |
| **creation_date** | **Integer** | Creation date in milliseconds | [optional] |
| **last_modified_date** | **Integer** | Last modification date in milliseconds | [optional] |
| **deleted** | **Boolean** | Whether the segment is deleted | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the segment | [optional] |
| **unbounded** | **Boolean** | Whether the segment is unbounded | [optional] |
| **version** | **Integer** | Version of the segment | [optional] |
| **generation** | **Integer** | Generation of the segment | [optional] |
| **_links** | [**ParentAndSelfLinks**](ParentAndSelfLinks.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpandedSegment.new(
  key: null,
  name: null,
  environment_id: null,
  environment_key: null,
  description: null,
  creation_date: null,
  last_modified_date: null,
  deleted: null,
  tags: null,
  unbounded: null,
  version: null,
  generation: null,
  _links: null
)
```

