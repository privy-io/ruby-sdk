# frozen_string_literal: true

module Privy
  module Models
    class KYBStatusResponse < Privy::Internal::Type::BaseModel
      # @!attribute capabilities
      #   Capability statuses for the customer.
      #
      #   @return [Privy::Models::KyxCapabilities]
      required :capabilities, -> { Privy::KyxCapabilities }

      # @!attribute endorsements
      #
      #   @return [Array<Privy::Models::KyxEndorsement>]
      required :endorsements, -> { Privy::Internal::Type::ArrayOf[Privy::KyxEndorsement] }

      # @!attribute environment
      #   Provider environment (production or sandbox).
      #
      #   @return [Symbol, Privy::Models::KyxEnvironment]
      required :environment, enum: -> { Privy::KyxEnvironment }

      # @!attribute future_requirements_due
      #   Items that will be required in the future.
      #
      #   @return [Array<String>]
      required :future_requirements_due, Privy::Internal::Type::ArrayOf[String]

      # @!attribute kyb
      #   Verification status detail for a KYC or KYB check.
      #
      #   @return [Privy::Models::KyxVerificationStatusDetail]
      required :kyb, -> { Privy::KyxVerificationStatusDetail }

      # @!attribute provider
      #   KYC/KYB provider identifier.
      #
      #   @return [Symbol, Privy::Models::KyxProvider]
      required :provider, enum: -> { Privy::KyxProvider }

      # @!attribute requirements_due
      #   Top-level items still needed (e.g. link a bank account).
      #
      #   @return [Array<String>]
      required :requirements_due, Privy::Internal::Type::ArrayOf[String]

      # @!attribute status
      #   KYC/KYB status for the user.
      #
      #   @return [String]
      required :status, String

      # @!attribute tos
      #   Terms of Service acceptance status for a KYC or KYB flow.
      #
      #   @return [Privy::Models::KyxTosStatusDetail]
      required :tos, -> { Privy::KyxTosStatusDetail }

      # @!method initialize(capabilities:, endorsements:, environment:, future_requirements_due:, kyb:, provider:, requirements_due:, status:, tos:)
      #   Full KYB status for an organization with a given provider.
      #
      #   @param capabilities [Privy::Models::KyxCapabilities] Capability statuses for the customer.
      #
      #   @param endorsements [Array<Privy::Models::KyxEndorsement>]
      #
      #   @param environment [Symbol, Privy::Models::KyxEnvironment] Provider environment (production or sandbox).
      #
      #   @param future_requirements_due [Array<String>] Items that will be required in the future.
      #
      #   @param kyb [Privy::Models::KyxVerificationStatusDetail] Verification status detail for a KYC or KYB check.
      #
      #   @param provider [Symbol, Privy::Models::KyxProvider] KYC/KYB provider identifier.
      #
      #   @param requirements_due [Array<String>] Top-level items still needed (e.g. link a bank account).
      #
      #   @param status [String] KYC/KYB status for the user.
      #
      #   @param tos [Privy::Models::KyxTosStatusDetail] Terms of Service acceptance status for a KYC or KYB flow.
    end
  end
end
