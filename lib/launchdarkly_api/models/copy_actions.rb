=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 3.4.0
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'date'

module LaunchDarklyApi
  class CopyActions
    
    UPDATE_ON = 'updateOn'.freeze
    UPDATE_PREREQUISITES = 'updatePrerequisites'.freeze
    UPDATE_TARGETS = 'updateTargets'.freeze
    UPDATE_RULES = 'updateRules'.freeze
    UPDATE_FALLTHROUGH = 'updateFallthrough'.freeze
    UPDATE_OFF_VARIATION = 'updateOffVariation'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = CopyActions.constants.select { |c| CopyActions::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #CopyActions" if constantValues.empty?
      value
    end
  end
end
