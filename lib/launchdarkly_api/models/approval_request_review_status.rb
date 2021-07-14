=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 5.3.0
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module LaunchDarklyApi
  class ApprovalRequestReviewStatus
    
    PENDING = 'pending'.freeze
    APPROVED = 'approved'.freeze
    DECLINED = 'declined'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ApprovalRequestReviewStatus.constants.select { |c| ApprovalRequestReviewStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ApprovalRequestReviewStatus" if constantValues.empty?
      value
    end
  end
end
