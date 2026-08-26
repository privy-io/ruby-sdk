# frozen_string_literal: true

module Privy
  module Models
    class UserKYCUpdatedKYCData < Privy::Internal::Type::BaseModel
      # @!attribute status
      #   Status of KYC/KYB verification. Passthrough from the provider.
      #
      #   @return [String]
      required :status, String

      # @!method initialize(status:)
      #   KYC verification status in a KYC update event.
      #
      #   @param status [String] Status of KYC/KYB verification. Passthrough from the provider.
    end
  end
end
