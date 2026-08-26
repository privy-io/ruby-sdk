# frozen_string_literal: true

module Privy
  module Models
    class ExternalFiatAccountGBData < Privy::Internal::Type::BaseModel
      # @!attribute account_number
      #   The 8-digit UK bank account number.
      #
      #   @return [String]
      required :account_number, String

      # @!attribute sort_code
      #   The 6-digit sort code, without hyphens.
      #
      #   @return [String]
      required :sort_code, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::ExternalFiatAccountGBData::Type]
      required :type, enum: -> { Privy::ExternalFiatAccountGBData::Type }

      # @!method initialize(account_number:, sort_code:, type:)
      #   UK bank account data for an external fiat account. Pays out over Faster
      #   Payments.
      #
      #   @param account_number [String] The 8-digit UK bank account number.
      #
      #   @param sort_code [String] The 6-digit sort code, without hyphens.
      #
      #   @param type [Symbol, Privy::Models::ExternalFiatAccountGBData::Type]

      # @see Privy::Models::ExternalFiatAccountGBData#type
      module Type
        extend Privy::Internal::Type::Enum

        GB = :gb

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
