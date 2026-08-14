# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCustomerErrorResponse < Privy::Internal::Type::BaseModel
      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::CardIssuingCustomerErrorResponse::Status]
      required :status, enum: -> { Privy::CardIssuingCustomerErrorResponse::Status }

      # @!method initialize(status:)
      #   The cards customer cannot continue onboarding or issue cards.
      #
      #   @param status [Symbol, Privy::Models::CardIssuingCustomerErrorResponse::Status]

      # @see Privy::Models::CardIssuingCustomerErrorResponse#status
      module Status
        extend Privy::Internal::Type::Enum

        ERROR = :error

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
