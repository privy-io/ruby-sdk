# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCustomerBankTermsRequiredResponse < Privy::Internal::Type::BaseModel
      # @!attribute bank_info
      #   The bank issuing the card and the agreements the user must accept for it. Served
      #   from the backend so the agreements can change without an SDK release, and so
      #   swapping banks does not require a client change.
      #
      #   @return [Privy::Models::CardIssuingBankInfo]
      required :bank_info, -> { Privy::CardIssuingBankInfo }

      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::CardIssuingCustomerBankTermsRequiredResponse::Status]
      required :status, enum: -> { Privy::CardIssuingCustomerBankTermsRequiredResponse::Status }

      # @!method initialize(bank_info:, status:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CardIssuingCustomerBankTermsRequiredResponse} for more details.
      #
      #   A cards customer exists and must accept the bank agreements. Privy records these
      #   rather than the provider, so this step is reached even when the provider already
      #   has its own terms — for example a customer onboarded through another product.
      #
      #   @param bank_info [Privy::Models::CardIssuingBankInfo] The bank issuing the card and the agreements the user must accept for it. Served
      #
      #   @param status [Symbol, Privy::Models::CardIssuingCustomerBankTermsRequiredResponse::Status]

      # @see Privy::Models::CardIssuingCustomerBankTermsRequiredResponse#status
      module Status
        extend Privy::Internal::Type::Enum

        BANK_TERMS_REQUIRED = :bank_terms_required

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
