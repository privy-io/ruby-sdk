# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCustomerKYCRequiredResponse < Privy::Internal::Type::BaseModel
      # @!attribute kyc_url
      #
      #   @return [String]
      required :kyc_url, String

      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::CardIssuingCustomerKYCRequiredResponse::Status]
      required :status, enum: -> { Privy::CardIssuingCustomerKYCRequiredResponse::Status }

      # @!method initialize(kyc_url:, status:)
      #   A Bridge cards customer exists and must complete KYC before card creation.
      #
      #   @param kyc_url [String]
      #   @param status [Symbol, Privy::Models::CardIssuingCustomerKYCRequiredResponse::Status]

      # @see Privy::Models::CardIssuingCustomerKYCRequiredResponse#status
      module Status
        extend Privy::Internal::Type::Enum

        KYC_REQUIRED = :kyc_required

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
