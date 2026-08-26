# frozen_string_literal: true

module Privy
  module Models
    class ExternalFiatAccountIbanData < Privy::Internal::Type::BaseModel
      # @!attribute account_number
      #   The IBAN. Up to 34 characters, per ISO 13616.
      #
      #   @return [String]
      required :account_number, String

      # @!attribute bic
      #   The BIC/SWIFT code of the beneficiary bank.
      #
      #   @return [String]
      required :bic, String

      # @!attribute country
      #   Country the account is held in, as an ISO 3166-1 alpha-3 code.
      #
      #   @return [String]
      required :country, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::ExternalFiatAccountIbanData::Type]
      required :type, enum: -> { Privy::ExternalFiatAccountIbanData::Type }

      # @!method initialize(account_number:, bic:, country:, type:)
      #   IBAN bank account data for an external fiat account. Pays out over SEPA.
      #
      #   @param account_number [String] The IBAN. Up to 34 characters, per ISO 13616.
      #
      #   @param bic [String] The BIC/SWIFT code of the beneficiary bank.
      #
      #   @param country [String] Country the account is held in, as an ISO 3166-1 alpha-3 code.
      #
      #   @param type [Symbol, Privy::Models::ExternalFiatAccountIbanData::Type]

      # @see Privy::Models::ExternalFiatAccountIbanData#type
      module Type
        extend Privy::Internal::Type::Enum

        IBAN = :iban

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
