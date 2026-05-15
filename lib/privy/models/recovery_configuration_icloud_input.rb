# frozen_string_literal: true

module Privy
  module Models
    class RecoveryConfigurationICloudInput < Privy::Internal::Type::BaseModel
      # @!attribute client_type
      #   The client type for iCloud recovery operations.
      #
      #   @return [Symbol, Privy::Models::ICloudClientType]
      required :client_type, enum: -> { Privy::ICloudClientType }

      # @!method initialize(client_type:)
      #   The input for getting the iCloud recovery configuration.
      #
      #   @param client_type [Symbol, Privy::Models::ICloudClientType] The client type for iCloud recovery operations.
    end
  end
end
