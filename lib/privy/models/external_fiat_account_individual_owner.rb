# frozen_string_literal: true

module Privy
  module Models
    class ExternalFiatAccountIndividualOwner < Privy::Internal::Type::BaseModel
      # @!attribute first_name
      #
      #   @return [String]
      required :first_name, String

      # @!attribute last_name
      #
      #   @return [String]
      required :last_name, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::ExternalFiatAccountIndividualOwner::Type]
      required :type, enum: -> { Privy::ExternalFiatAccountIndividualOwner::Type }

      # @!method initialize(first_name:, last_name:, type:)
      #   An individual who owns an external fiat account.
      #
      #   @param first_name [String]
      #   @param last_name [String]
      #   @param type [Symbol, Privy::Models::ExternalFiatAccountIndividualOwner::Type]

      # @see Privy::Models::ExternalFiatAccountIndividualOwner#type
      module Type
        extend Privy::Internal::Type::Enum

        INDIVIDUAL = :individual

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
