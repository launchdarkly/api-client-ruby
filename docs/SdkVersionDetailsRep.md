# LaunchDarklyApi::SdkVersionDetailsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **version** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **project_id** | **String** |  | [optional] |
| **project_key** | **String** |  | [optional] |
| **project_name** | **String** |  | [optional] |
| **environment_id** | **String** |  | [optional] |
| **environment_key** | **String** |  | [optional] |
| **environment_name** | **String** |  | [optional] |
| **application_id** | **String** |  | [optional] |
| **ld_latest_version** | **String** |  | [optional] |
| **eol_status** | **String** | The end of life (EOL) status of the SDK version. Possible values are: &lt;br/&gt;- &lt;code&gt;EolAllClear&lt;/code&gt;: the SDK version is current&lt;br/&gt;- &lt;code&gt;EolNear&lt;/code&gt;: the SDK version is approaching EOL&lt;br/&gt;- &lt;code&gt;EolPast&lt;/code&gt;: the SDK version is past EOL&lt;br/&gt;- &lt;code&gt;MajorVersionAvailable&lt;/code&gt;: a new major version is available but the current version is not near EOL&lt;br/&gt;- &lt;code&gt;EolUnknown&lt;/code&gt;: the EOL status cannot be determined. | [optional] |
| **latest_release_url** | **String** |  | [optional] |
| **connection_type** | **String** |  | [optional] |
| **relay_version** | **String** |  | [optional] |
| **relay_eol_status** | **String** | The end of life status of the Relay Proxy version. Only present when the SDK connects through a Relay Proxy. Uses the same values as &lt;code&gt;eolStatus&lt;/code&gt;. | [optional] |
| **relay_latest_version** | **String** |  | [optional] |
| **relay_latest_release_url** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SdkVersionDetailsRep.new(
  name: null,
  version: null,
  type: null,
  project_id: null,
  project_key: null,
  project_name: null,
  environment_id: null,
  environment_key: null,
  environment_name: null,
  application_id: null,
  ld_latest_version: null,
  eol_status: null,
  latest_release_url: null,
  connection_type: null,
  relay_version: null,
  relay_eol_status: null,
  relay_latest_version: null,
  relay_latest_release_url: null
)
```

