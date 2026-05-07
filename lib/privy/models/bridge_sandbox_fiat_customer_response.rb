# frozen_string_literal: true

module Privy
  module Models
    class BridgeSandboxFiatCustomerResponse < Privy::Internal::Type::BaseModel
      # @!attribute has_accepted_terms
      #
      #   @return [Boolean]
      required :has_accepted_terms, Privy::Internal::Type::Boolean

      # @!attribute provider
      #
      #   @return [Symbol, Privy::Models::BridgeSandboxFiatCustomerResponse::Provider]
      required :provider, enum: -> { Privy::BridgeSandboxFiatCustomerResponse::Provider }

      # @!attribute status
      #   Status of the KYC verification process.
      #
      #   @return [Symbol, Privy::Models::BridgeSandboxFiatCustomerResponse::Status]
      required :status, enum: -> { Privy::BridgeSandboxFiatCustomerResponse::Status }

      # @!attribute kyc_url
      #
      #   @return [String, nil]
      optional :kyc_url, String

      # @!attribute rejection_reasons
      #
      #   @return [Array<Privy::Models::BridgeFiatRejectionReason>, nil]
      optional :rejection_reasons, -> { Privy::Internal::Type::ArrayOf[Privy::BridgeFiatRejectionReason] }

      # @!method initialize(has_accepted_terms:, provider:, status:, kyc_url: nil, rejection_reasons: nil)
      #   The response for getting a native onramp provider customer.
      #
      #   @param has_accepted_terms [Boolean]
      #
      #   @param provider [Symbol, Privy::Models::BridgeSandboxFiatCustomerResponse::Provider]
      #
      #   @param status [Symbol, Privy::Models::BridgeSandboxFiatCustomerResponse::Status] Status of the KYC verification process.
      #
      #   @param kyc_url [String]
      #
      #   @param rejection_reasons [Array<Privy::Models::BridgeFiatRejectionReason>]

      # @see Privy::Models::BridgeSandboxFiatCustomerResponse#provider
      module Provider
        extend Privy::Internal::Type::Enum

        BRIDGE_SANDBOX = :"bridge-sandbox"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
