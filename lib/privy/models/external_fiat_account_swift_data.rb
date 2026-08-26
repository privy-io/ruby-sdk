# frozen_string_literal: true

module Privy
  module Models
    class ExternalFiatAccountSwiftData < Privy::Internal::Type::BaseModel
      # @!attribute account_number
      #
      #   @return [String]
      required :account_number, String

      # @!attribute bic
      #   The BIC/SWIFT code of the beneficiary bank.
      #
      #   @return [String]
      required :bic, String

      # @!attribute category
      #   Business relationship between the payer and the SWIFT account owner.
      #
      #   @return [Symbol, Privy::Models::ExternalFiatAccountSwiftCategory]
      required :category, enum: -> { Privy::ExternalFiatAccountSwiftCategory }

      # @!attribute purpose_of_funds
      #
      #   @return [Array<Symbol, Privy::Models::ExternalFiatAccountSwiftPurposeOfFunds>]
      required :purpose_of_funds,
               -> { Privy::Internal::Type::ArrayOf[enum: Privy::ExternalFiatAccountSwiftPurposeOfFunds] }

      # @!attribute short_business_description
      #
      #   @return [String]
      required :short_business_description, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::ExternalFiatAccountSwiftData::Type]
      required :type, enum: -> { Privy::ExternalFiatAccountSwiftData::Type }

      # @!attribute country
      #   Country the account is held in, as an ISO 3166-1 alpha-3 code.
      #
      #   @return [String, nil]
      optional :country, String

      # @!method initialize(account_number:, bic:, category:, purpose_of_funds:, short_business_description:, type:, country: nil)
      #   SWIFT bank account data for an external fiat account. Pays out over wire. The
      #   beneficiary address is required for SWIFT and is supplied as the request's
      #   top-level `address`.
      #
      #   @param account_number [String]
      #
      #   @param bic [String] The BIC/SWIFT code of the beneficiary bank.
      #
      #   @param category [Symbol, Privy::Models::ExternalFiatAccountSwiftCategory] Business relationship between the payer and the SWIFT account owner.
      #
      #   @param purpose_of_funds [Array<Symbol, Privy::Models::ExternalFiatAccountSwiftPurposeOfFunds>]
      #
      #   @param short_business_description [String]
      #
      #   @param type [Symbol, Privy::Models::ExternalFiatAccountSwiftData::Type]
      #
      #   @param country [String] Country the account is held in, as an ISO 3166-1 alpha-3 code.

      # @see Privy::Models::ExternalFiatAccountSwiftData#type
      module Type
        extend Privy::Internal::Type::Enum

        SWIFT = :swift

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
