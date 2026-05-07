# frozen_string_literal: true

module Privy
  module Models
    class OAuthInitICloudRecoveryInput < Privy::Internal::Type::BaseModel
      # @!attribute client_type
      #   The client type for iCloud recovery operations.
      #
      #   @return [Symbol, Privy::Models::ICloudClientType]
      required :client_type, enum: -> { Privy::ICloudClientType }

      # @!method initialize(client_type:)
      #   The input for initiating an iCloud OAuth recovery flow.
      #
      #   @param client_type [Symbol, Privy::Models::ICloudClientType] The client type for iCloud recovery operations.
    end
  end
end
