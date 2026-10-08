# frozen_string_literal: true

module Privy
  module Models
    class ExternalFiatAccountBusinessOwner < Privy::Internal::Type::BaseModel
      # @!attribute business_name
      #
      #   @return [String]
      required :business_name, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::ExternalFiatAccountBusinessOwner::Type]
      required :type, enum: -> { Privy::ExternalFiatAccountBusinessOwner::Type }

      # @!method initialize(business_name:, type:)
      #   A business that owns an external fiat account.
      #
      #   @param business_name [String]
      #   @param type [Symbol, Privy::Models::ExternalFiatAccountBusinessOwner::Type]

      # @see Privy::Models::ExternalFiatAccountBusinessOwner#type
      module Type
        extend Privy::Internal::Type::Enum

        BUSINESS = :business

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
