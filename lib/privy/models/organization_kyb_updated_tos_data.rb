# frozen_string_literal: true

module Privy
  module Models
    class OrganizationKYBUpdatedTosData < Privy::Internal::Type::BaseModel
      # @!attribute status
      #   Status of Terms of Service acceptance. Passthrough from the provider.
      #
      #   @return [String]
      required :status, String

      # @!method initialize(status:)
      #   Terms of service status in a KYB update event.
      #
      #   @param status [String] Status of Terms of Service acceptance. Passthrough from the provider.
    end
  end
end
