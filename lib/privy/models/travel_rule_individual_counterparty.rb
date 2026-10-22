# frozen_string_literal: true

module Privy
  module Models
    class TravelRuleIndividualCounterparty < Privy::Internal::Type::BaseModel
      # @!attribute name
      #   Full legal name of the person.
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::TravelRuleIndividualCounterparty::Type]
      required :type, enum: -> { Privy::TravelRuleIndividualCounterparty::Type }

      # @!attribute address
      #   A postal address used in KYC and KYB data submission.
      #
      #   @return [Privy::Models::VerificationAddress, nil]
      optional :address, -> { Privy::VerificationAddress }

      # @!method initialize(name:, type:, address: nil)
      #   The bank-side party is a person other than the customer.
      #
      #   @param name [String] Full legal name of the person.
      #
      #   @param type [Symbol, Privy::Models::TravelRuleIndividualCounterparty::Type]
      #
      #   @param address [Privy::Models::VerificationAddress] A postal address used in KYC and KYB data submission.

      # @see Privy::Models::TravelRuleIndividualCounterparty#type
      module Type
        extend Privy::Internal::Type::Enum

        INDIVIDUAL = :individual

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
