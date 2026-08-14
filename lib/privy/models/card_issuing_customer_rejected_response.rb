# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCustomerRejectedResponse < Privy::Internal::Type::BaseModel
      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::CardIssuingCustomerRejectedResponse::Status]
      required :status, enum: -> { Privy::CardIssuingCustomerRejectedResponse::Status }

      # @!method initialize(status:)
      #   Bridge rejected the cards customer during verification.
      #
      #   @param status [Symbol, Privy::Models::CardIssuingCustomerRejectedResponse::Status]

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
