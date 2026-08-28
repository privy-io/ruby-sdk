# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCustomerUnderReviewResponse < Privy::Internal::Type::BaseModel
      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::CardIssuingCustomerUnderReviewResponse::Status]
      required :status, enum: -> { Privy::CardIssuingCustomerUnderReviewResponse::Status }

      # @!method initialize(status:)
      #   A cards customer undergoing provider review before onboarding can continue.
      #
      #   @param status [Symbol, Privy::Models::CardIssuingCustomerUnderReviewResponse::Status]

      # @see Privy::Models::CardIssuingCustomerUnderReviewResponse#status
      module Status
        extend Privy::Internal::Type::Enum

        UNDER_REVIEW = :under_review

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
