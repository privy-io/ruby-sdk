# frozen_string_literal: true

module Privy
  module Models
    class RecoveryConfigurationICloudResponse < Privy::Internal::Type::BaseModel
      # @!attribute api_token
      #
      #   @return [String]
      required :api_token, String

      # @!attribute container_identifier
      #
      #   @return [String]
      required :container_identifier, String

      # @!attribute environment
      #
      #   @return [String]
      required :environment, String

      # @!method initialize(api_token:, container_identifier:, environment:)
      #   The response containing the iCloud recovery configuration.
      #
      #   @param api_token [String]
      #   @param container_identifier [String]
      #   @param environment [String]
    end
  end
end
