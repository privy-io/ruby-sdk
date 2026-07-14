# frozen_string_literal: true

module Privy
  module Models
    class BridgeFiatCustomerResponse < Privy::Internal::Type::BaseModel
      # @!attribute has_accepted_terms
      #
      #   @return [Boolean]
      required :has_accepted_terms, Privy::Internal::Type::Boolean

      # @!attribute provider
      #
      #   @return [Symbol, Privy::Models::BridgeFiatCustomerResponse::Provider]
      required :provider, enum: -> { Privy::BridgeFiatCustomerResponse::Provider }

      # @!attribute status
      #   Status of the KYC verification process.
      #
      #   @return [Symbol, Privy::Models::BridgeFiatCustomerResponse::Status]
      required :status, enum: -> { Privy::BridgeFiatCustomerResponse::Status }

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
      #   @param provider [Symbol, Privy::Models::BridgeFiatCustomerResponse::Provider]
      #
      #   @param status [Symbol, Privy::Models::BridgeFiatCustomerResponse::Status] Status of the KYC verification process.
      #
      #   @param kyc_url [String]
      #
      #   @param rejection_reasons [Array<Privy::Models::BridgeFiatRejectionReason>]

      # @see Privy::Models::BridgeFiatCustomerResponse#provider
      module Provider
        extend Privy::Internal::Type::Enum

        BRIDGE = :bridge

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status of the KYC verification process.
      #
      # @see Privy::Models::BridgeFiatCustomerResponse#status
      module Status
        extend Privy::Internal::Type::Enum

        NOT_FOUND = :not_found
        ACTIVE = :active
        AWAITING_QUESTIONNAIRE = :awaiting_questionnaire
        AWAITING_UBO = :awaiting_ubo
        INCOMPLETE = :incomplete
        NOT_STARTED = :not_started
        OFFBOARDED = :offboarded
        PAUSED = :paused
        REJECTED = :rejected
        UNDER_REVIEW = :under_review

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
