# frozen_string_literal: true

module Privy
  module Models
    class UserKYCUpdatedData < Privy::Internal::Type::BaseModel
      # @!attribute capabilities
      #   Capability statuses for the customer.
      #
      #   @return [Privy::Models::KyxCapabilities]
      required :capabilities, -> { Privy::KyxCapabilities }

      # @!attribute endorsements
      #
      #   @return [Array<Privy::Models::KyxEndorsement>]
      required :endorsements, -> { Privy::Internal::Type::ArrayOf[Privy::KyxEndorsement] }

      # @!attribute kyc
      #   KYC verification status in a KYC update event.
      #
      #   @return [Privy::Models::UserKYCUpdatedKYCData]
      required :kyc, -> { Privy::UserKYCUpdatedKYCData }

      # @!attribute status
      #   KYC/KYB status for the user.
      #
      #   @return [String]
      required :status, String

      # @!attribute tos
      #   Terms of service status in a KYC update event.
      #
      #   @return [Privy::Models::UserKYCUpdatedTosData]
      required :tos, -> { Privy::UserKYCUpdatedTosData }

      # @!method initialize(capabilities:, endorsements:, kyc:, status:, tos:)
      #   Full KYC state snapshot in a KYC update event.
      #
      #   @param capabilities [Privy::Models::KyxCapabilities] Capability statuses for the customer.
      #
      #   @param endorsements [Array<Privy::Models::KyxEndorsement>]
      #
      #   @param kyc [Privy::Models::UserKYCUpdatedKYCData] KYC verification status in a KYC update event.
      #
      #   @param status [String] KYC/KYB status for the user.
      #
      #   @param tos [Privy::Models::UserKYCUpdatedTosData] Terms of service status in a KYC update event.
    end
  end
end
