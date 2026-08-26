# typed: strong

module Privy
  module Models
    class FiatDepositInstructions < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FiatDepositInstructions, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :account_holder_name

      sig { params(account_holder_name: String).void }
      attr_writer :account_holder_name

      sig { returns(T.nilable(String)) }
      attr_reader :account_number

      sig { params(account_number: String).void }
      attr_writer :account_number

      sig { returns(T.nilable(String)) }
      attr_reader :bank_account_number

      sig { params(bank_account_number: String).void }
      attr_writer :bank_account_number

      sig { returns(T.nilable(String)) }
      attr_reader :bank_address

      sig { params(bank_address: String).void }
      attr_writer :bank_address

      sig { returns(T.nilable(String)) }
      attr_reader :bank_beneficiary_address

      sig { params(bank_beneficiary_address: String).void }
      attr_writer :bank_beneficiary_address

      sig { returns(T.nilable(String)) }
      attr_reader :bank_beneficiary_name

      sig { params(bank_beneficiary_name: String).void }
      attr_writer :bank_beneficiary_name

      sig { returns(T.nilable(String)) }
      attr_reader :bank_name

      sig { params(bank_name: String).void }
      attr_writer :bank_name

      sig { returns(T.nilable(String)) }
      attr_reader :bank_routing_number

      sig { params(bank_routing_number: String).void }
      attr_writer :bank_routing_number

      sig { returns(T.nilable(String)) }
      attr_reader :bic

      sig { params(bic: String).void }
      attr_writer :bic

      sig { returns(T.nilable(String)) }
      attr_reader :br_code

      sig { params(br_code: String).void }
      attr_writer :br_code

      sig { returns(T.nilable(String)) }
      attr_reader :bre_b_key

      sig { params(bre_b_key: String).void }
      attr_writer :bre_b_key

      sig { returns(T.nilable(String)) }
      attr_reader :clabe

      sig { params(clabe: String).void }
      attr_writer :clabe

      sig { returns(T.nilable(String)) }
      attr_reader :deposit_message

      sig { params(deposit_message: String).void }
      attr_writer :deposit_message

      sig { returns(T.nilable(String)) }
      attr_reader :iban

      sig { params(iban: String).void }
      attr_writer :iban

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :payment_rails

      sig { params(payment_rails: T::Array[String]).void }
      attr_writer :payment_rails

      sig { returns(T.nilable(String)) }
      attr_reader :sort_code

      sig { params(sort_code: String).void }
      attr_writer :sort_code

      # Bank or payment deposit instructions for a fiat deposit account. Shape varies by
      # source currency.
      sig do
        params(
          account_holder_name: String,
          account_number: String,
          bank_account_number: String,
          bank_address: String,
          bank_beneficiary_address: String,
          bank_beneficiary_name: String,
          bank_name: String,
          bank_routing_number: String,
          bic: String,
          br_code: String,
          bre_b_key: String,
          clabe: String,
          deposit_message: String,
          iban: String,
          payment_rails: T::Array[String],
          sort_code: String
        ).returns(T.attached_class)
      end
      def self.new(
        account_holder_name: nil,
        account_number: nil,
        bank_account_number: nil,
        bank_address: nil,
        bank_beneficiary_address: nil,
        bank_beneficiary_name: nil,
        bank_name: nil,
        bank_routing_number: nil,
        bic: nil,
        br_code: nil,
        bre_b_key: nil,
        clabe: nil,
        deposit_message: nil,
        iban: nil,
        payment_rails: nil,
        sort_code: nil
      )
      end

      sig do
        override.returns(
          {
            account_holder_name: String,
            account_number: String,
            bank_account_number: String,
            bank_address: String,
            bank_beneficiary_address: String,
            bank_beneficiary_name: String,
            bank_name: String,
            bank_routing_number: String,
            bic: String,
            br_code: String,
            bre_b_key: String,
            clabe: String,
            deposit_message: String,
            iban: String,
            payment_rails: T::Array[String],
            sort_code: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
