# frozen_string_literal: true

module Privy
  module Models
    class FiatDepositInstructions < Privy::Internal::Type::BaseModel
      # @!attribute account_holder_name
      #
      #   @return [String, nil]
      optional :account_holder_name, String

      # @!attribute account_number
      #
      #   @return [String, nil]
      optional :account_number, String

      # @!attribute bank_account_number
      #
      #   @return [String, nil]
      optional :bank_account_number, String

      # @!attribute bank_address
      #
      #   @return [String, nil]
      optional :bank_address, String

      # @!attribute bank_beneficiary_address
      #
      #   @return [String, nil]
      optional :bank_beneficiary_address, String

      # @!attribute bank_beneficiary_name
      #
      #   @return [String, nil]
      optional :bank_beneficiary_name, String

      # @!attribute bank_name
      #
      #   @return [String, nil]
      optional :bank_name, String

      # @!attribute bank_routing_number
      #
      #   @return [String, nil]
      optional :bank_routing_number, String

      # @!attribute bic
      #
      #   @return [String, nil]
      optional :bic, String

      # @!attribute br_code
      #
      #   @return [String, nil]
      optional :br_code, String

      # @!attribute bre_b_key
      #
      #   @return [String, nil]
      optional :bre_b_key, String

      # @!attribute clabe
      #
      #   @return [String, nil]
      optional :clabe, String

      # @!attribute deposit_message
      #
      #   @return [String, nil]
      optional :deposit_message, String

      # @!attribute iban
      #
      #   @return [String, nil]
      optional :iban, String

      # @!attribute payment_rails
      #
      #   @return [Array<String>, nil]
      optional :payment_rails, Privy::Internal::Type::ArrayOf[String]

      # @!attribute sort_code
      #
      #   @return [String, nil]
      optional :sort_code, String

      # @!method initialize(account_holder_name: nil, account_number: nil, bank_account_number: nil, bank_address: nil, bank_beneficiary_address: nil, bank_beneficiary_name: nil, bank_name: nil, bank_routing_number: nil, bic: nil, br_code: nil, bre_b_key: nil, clabe: nil, deposit_message: nil, iban: nil, payment_rails: nil, sort_code: nil)
      #   Bank or payment deposit instructions for a fiat deposit account. Shape varies by
      #   source currency.
      #
      #   @param account_holder_name [String]
      #   @param account_number [String]
      #   @param bank_account_number [String]
      #   @param bank_address [String]
      #   @param bank_beneficiary_address [String]
      #   @param bank_beneficiary_name [String]
      #   @param bank_name [String]
      #   @param bank_routing_number [String]
      #   @param bic [String]
      #   @param br_code [String]
      #   @param bre_b_key [String]
      #   @param clabe [String]
      #   @param deposit_message [String]
      #   @param iban [String]
      #   @param payment_rails [Array<String>]
      #   @param sort_code [String]
    end
  end
end
