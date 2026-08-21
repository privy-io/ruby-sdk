# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCustomerBridgeTermsRequiredResponse < Privy::Internal::Type::BaseModel
      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::CardIssuingCustomerBridgeTermsRequiredResponse::Status]
      required :status, enum: -> { Privy::CardIssuingCustomerBridgeTermsRequiredResponse::Status }

      # @!attribute tos_url
      #
      #   @return [String]
      required :tos_url, String

      # @!method initialize(status:, tos_url:)
      #   A cards customer exists and must accept the provider terms hosted at `tos_url`
      #   before KYC. Reached only once the bank agreements are recorded.
      #
      #   @param status [Symbol, Privy::Models::CardIssuingCustomerBridgeTermsRequiredResponse::Status]
      #   @param tos_url [String]

      # @see Privy::Models::CardIssuingCustomerBridgeTermsRequiredResponse#status
      module Status
        extend Privy::Internal::Type::Enum

        BRIDGE_TERMS_REQUIRED = :bridge_terms_required

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
