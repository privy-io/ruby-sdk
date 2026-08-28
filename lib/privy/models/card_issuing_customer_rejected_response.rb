# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCustomerRejectedResponse < Privy::Internal::Type::BaseModel
      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::CardIssuingCustomerRejectedResponse::Status]
      required :status, enum: -> { Privy::CardIssuingCustomerRejectedResponse::Status }

      # @!attribute rejection_reasons
      #
      #   @return [Array<Privy::Models::CardIssuingCustomerRejectionReason>, nil]
      optional :rejection_reasons,
               -> { Privy::Internal::Type::ArrayOf[Privy::CardIssuingCustomerRejectionReason] }

      # @!method initialize(status:, rejection_reasons: nil)
      #   The cards customer was rejected during verification.
      #
      #   @param status [Symbol, Privy::Models::CardIssuingCustomerRejectedResponse::Status]
      #   @param rejection_reasons [Array<Privy::Models::CardIssuingCustomerRejectionReason>]

      # @see Privy::Models::CardIssuingCustomerRejectedResponse#status
      module Status
        extend Privy::Internal::Type::Enum

        REJECTED = :rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
