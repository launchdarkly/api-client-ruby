# LaunchDarklyApi::PostDeploymentEventInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **application_key** | **String** | The application key. This defines the granularity at which you want to view your insights metrics. Typically it is the name of one of the GitHub repositories that you use in this project.&lt;br/&gt;&lt;br/&gt;LaunchDarkly automatically creates a new application each time you send a unique application key. |  |
| **application_name** | **String** | The application name. This defines how the application is displayed | [optional] |
| **application_kind** | **String** | The kind of application. Default: &lt;code&gt;server&lt;/code&gt; | [optional] |
| **version** | **String** | The application version. You can set the application version to any string that includes only letters, numbers, periods (&lt;code&gt;.&lt;/code&gt;), hyphens (&lt;code&gt;-&lt;/code&gt;), or underscores (&lt;code&gt;_&lt;/code&gt;).&lt;br/&gt;&lt;br/&gt;We recommend setting the application version to at least the first seven characters of the SHA or to the tag of the GitHub commit for this deployment. |  |
| **version_name** | **String** | The version name. This defines how the version is displayed | [optional] |
| **event_type** | **String** | The event type |  |
| **event_time** | **Integer** |  | [optional] |
| **event_metadata** | **Hash&lt;String, Object&gt;** | A JSON object containing metadata about the event | [optional] |
| **deployment_metadata** | **Hash&lt;String, Object&gt;** | A JSON object containing metadata about the deployment | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PostDeploymentEventInput.new(
  project_key: default,
  environment_key: production,
  application_key: billing-service,
  application_name: Billing Service,
  application_kind: server,
  version: a90a8a2,
  version_name: v1.0.0,
  event_type: started,
  event_time: null,
  event_metadata: {&quot;buildSystemVersion&quot;:&quot;v1.2.3&quot;},
  deployment_metadata: {&quot;buildNumber&quot;:&quot;1234&quot;}
)
```

