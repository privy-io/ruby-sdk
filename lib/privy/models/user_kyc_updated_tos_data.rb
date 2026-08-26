# frozen_string_literal: true

module Privy
  module Models
    class UserKYCUpdatedTosData < Privy::Internal::Type::BaseModel
      # @!attribute status
      #   Status of Terms of Service acceptance. Passthrough from the provider.
      #
      #   @return [String]
      required :status, String

      # @!method initialize(status:)
      #   Terms of service status in a KYC update event.
      #
      #   @param status [String] Status of Terms of Service acceptance. Passthrough from the provider.
    end
  end
end
