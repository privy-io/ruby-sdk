# frozen_string_literal: true

module Privy
  module Models
    class TravelRuleSelfCounterparty < Privy::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::TravelRuleSelfCounterparty::Type]
      required :type, enum: -> { Privy::TravelRuleSelfCounterparty::Type }

      # @!method initialize(type:)
      #   The bank-side party is the KYC-verified customer. Bridge uses the customer's
      #   name and address on file.
      #
      #   @param type [Symbol, Privy::Models::TravelRuleSelfCounterparty::Type]

      # @see Privy::Models::TravelRuleSelfCounterparty#type
      module Type
        extend Privy::Internal::Type::Enum

        SELF = :self

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
