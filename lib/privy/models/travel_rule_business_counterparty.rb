# frozen_string_literal: true

module Privy
  module Models
    class TravelRuleBusinessCounterparty < Privy::Internal::Type::BaseModel
      # @!attribute legal_entity_identifier
      #   An official business identifier, such as an LEI, VAT number or company
      #   registration number.
      #
      #   @return [String]
      required :legal_entity_identifier, String

      # @!attribute name
      #   Legal name of the business.
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::TravelRuleBusinessCounterparty::Type]
      required :type, enum: -> { Privy::TravelRuleBusinessCounterparty::Type }

      # @!attribute address
      #   A postal address used in KYC and KYB data submission.
      #
      #   @return [Privy::Models::VerificationAddress, nil]
      optional :address, -> { Privy::VerificationAddress }

      # @!method initialize(legal_entity_identifier:, name:, type:, address: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TravelRuleBusinessCounterparty} for more details.
      #
      #   The bank-side party is a business other than the customer.
      #
      #   @param legal_entity_identifier [String] An official business identifier, such as an LEI, VAT number or company registrat
      #
      #   @param name [String] Legal name of the business.
      #
      #   @param type [Symbol, Privy::Models::TravelRuleBusinessCounterparty::Type]
      #
      #   @param address [Privy::Models::VerificationAddress] A postal address used in KYC and KYB data submission.

      # @see Privy::Models::TravelRuleBusinessCounterparty#type
      module Type
        extend Privy::Internal::Type::Enum

        BUSINESS = :business

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
