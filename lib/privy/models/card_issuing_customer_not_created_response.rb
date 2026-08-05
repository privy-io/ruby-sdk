# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCustomerNotCreatedResponse < Privy::Internal::Type::BaseModel
      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::CardIssuingCustomerNotCreatedResponse::Status]
      required :status, enum: -> { Privy::CardIssuingCustomerNotCreatedResponse::Status }

      # @!method initialize(status:)
      #   No cards customer has been created for this Privy user.
      #
      #   @param status [Symbol, Privy::Models::CardIssuingCustomerNotCreatedResponse::Status]

      # @see Privy::Models::CardIssuingCustomerNotCreatedResponse#status
      module Status
        extend Privy::Internal::Type::Enum

        NOT_CREATED = :not_created

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
