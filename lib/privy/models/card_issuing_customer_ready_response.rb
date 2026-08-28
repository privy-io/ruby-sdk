# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCustomerReadyResponse < Privy::Internal::Type::BaseModel
      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::CardIssuingCustomerReadyResponse::Status]
      required :status, enum: -> { Privy::CardIssuingCustomerReadyResponse::Status }

      # @!method initialize(status:)
      #   A cards customer that has completed onboarding and can issue cards.
      #
      #   @param status [Symbol, Privy::Models::CardIssuingCustomerReadyResponse::Status]

      # @see Privy::Models::CardIssuingCustomerReadyResponse#status
      module Status
        extend Privy::Internal::Type::Enum

        READY = :ready

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
