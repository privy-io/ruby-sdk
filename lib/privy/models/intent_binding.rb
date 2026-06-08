# frozen_string_literal: true

module Privy
  module Models
    class IntentBinding < Privy::Internal::Type::BaseModel
      # @!attribute intent_id
      #
      #   @return [String]
      required :intent_id, String, api_name: :intentId

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::IntentBinding::Type]
      required :type, enum: -> { Privy::IntentBinding::Type }

      # @!method initialize(intent_id:, type:)
      #   A binding that scopes a user signing key to a specific intent.
      #
      #   @param intent_id [String]
      #   @param type [Symbol, Privy::Models::IntentBinding::Type]

      # @see Privy::Models::IntentBinding#type
      module Type
        extend Privy::Internal::Type::Enum

        INTENT = :intent

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
