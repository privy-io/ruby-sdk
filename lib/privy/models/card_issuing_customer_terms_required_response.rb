# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCustomerTermsRequiredResponse < Privy::Internal::Type::BaseModel
      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::CardIssuingCustomerTermsRequiredResponse::Status]
      required :status, enum: -> { Privy::CardIssuingCustomerTermsRequiredResponse::Status }

      # @!attribute tos_url
      #
      #   @return [String]
      required :tos_url, String

      # @!method initialize(status:, tos_url:)
      #   A Bridge cards customer exists and must accept terms before KYC.
      #
      #   @param status [Symbol, Privy::Models::CardIssuingCustomerTermsRequiredResponse::Status]
      #   @param tos_url [String]

      # @see Privy::Models::CardIssuingCustomerTermsRequiredResponse#status
      module Status
        extend Privy::Internal::Type::Enum

        TERMS_REQUIRED = :terms_required

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
