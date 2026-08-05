# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCustomerReadyResponse < Privy::Internal::Type::BaseModel
      # @!attribute external_id
      #
      #   @return [String]
      required :external_id, String

      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::CardIssuingCustomerReadyResponse::Status]
      required :status, enum: -> { Privy::CardIssuingCustomerReadyResponse::Status }

      # @!method initialize(external_id:, status:)
      #   A cards customer that has a Stripe cardholder external ID and can issue cards.
      #
      #   @param external_id [String]
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
