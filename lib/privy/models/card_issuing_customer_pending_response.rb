# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCustomerPendingResponse < Privy::Internal::Type::BaseModel
      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::CardIssuingCustomerPendingResponse::Status]
      required :status, enum: -> { Privy::CardIssuingCustomerPendingResponse::Status }

      # @!method initialize(status:)
      #   A cards customer waiting for card issuing to become available.
      #
      #   @param status [Symbol, Privy::Models::CardIssuingCustomerPendingResponse::Status]

      # @see Privy::Models::CardIssuingCustomerPendingResponse#status
      module Status
        extend Privy::Internal::Type::Enum

        PENDING = :pending

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
