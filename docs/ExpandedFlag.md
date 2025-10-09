# LaunchDarklyApi::ExpandedFlag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique key used to reference the flag |  |
| **name** | **String** | A human-friendly name for the flag |  |
| **description** | **String** | Description of the flag | [optional] |
| **creation_date** | **Integer** | Creation date in milliseconds | [optional] |
| **version** | **Integer** | Version of the flag | [optional] |
| **archived** | **Boolean** | Whether the flag is archived | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the flag | [optional] |
| **temporary** | **Boolean** | Whether the flag is temporary | [optional] |
| **include_in_snippet** | **Boolean** | Whether to include in snippet | [optional] |
| **_links** | [**ParentAndSelfLinks**](ParentAndSelfLinks.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpandedFlag.new(
  key: null,
  name: null,
  description: null,
  creation_date: null,
  version: null,
  archived: null,
  tags: null,
  temporary: null,
  include_in_snippet: null,
  _links: null
)
```

