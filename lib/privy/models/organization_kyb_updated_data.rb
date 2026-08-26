# frozen_string_literal: true

module Privy
  module Models
    class OrganizationKYBUpdatedData < Privy::Internal::Type::BaseModel
      # @!attribute capabilities
      #   Capability statuses for the customer.
      #
      #   @return [Privy::Models::KyxCapabilities]
      required :capabilities, -> { Privy::KyxCapabilities }

      # @!attribute endorsements
      #
      #   @return [Array<Privy::Models::KyxEndorsement>]
      required :endorsements, -> { Privy::Internal::Type::ArrayOf[Privy::KyxEndorsement] }

      # @!attribute kyb
      #   KYB verification status in a KYB update event.
      #
      #   @return [Privy::Models::OrganizationKYBUpdatedKYBData]
      required :kyb, -> { Privy::OrganizationKYBUpdatedKYBData }

      # @!attribute status
      #   KYC/KYB status for the user.
      #
      #   @return [String]
      required :status, String

      # @!attribute tos
      #   Terms of service status in a KYB update event.
      #
      #   @return [Privy::Models::OrganizationKYBUpdatedTosData]
      required :tos, -> { Privy::OrganizationKYBUpdatedTosData }

      # @!method initialize(capabilities:, endorsements:, kyb:, status:, tos:)
      #   Full KYB state snapshot in a KYB update event.
      #
      #   @param capabilities [Privy::Models::KyxCapabilities] Capability statuses for the customer.
      #
      #   @param endorsements [Array<Privy::Models::KyxEndorsement>]
      #
      #   @param kyb [Privy::Models::OrganizationKYBUpdatedKYBData] KYB verification status in a KYB update event.
      #
      #   @param status [String] KYC/KYB status for the user.
      #
      #   @param tos [Privy::Models::OrganizationKYBUpdatedTosData] Terms of service status in a KYB update event.
    end
  end
end
