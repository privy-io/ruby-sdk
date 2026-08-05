# typed: strong

module Privy
  module Models
    class OnrampDepositInstructions < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OnrampDepositInstructions, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :amount

      # Supported fiat currencies.
      sig { returns(Privy::FiatCurrency::OrSymbol) }
      attr_accessor :currency

      # Supported fiat payment rails.
      sig { returns(Privy::FiatPaymentRail::OrSymbol) }
      attr_accessor :payment_rail

      sig { returns(T.nilable(String)) }
      attr_reader :account_holder_name

      sig { params(account_holder_name: String).void }
      attr_writer :account_holder_name

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
      attr_reader :deposit_message

      sig { params(deposit_message: String).void }
      attr_writer :deposit_message

      sig { returns(T.nilable(String)) }
      attr_reader :iban

      sig { params(iban: String).void }
      attr_writer :iban

      # Bank deposit instructions for an onramp transfer.
      sig do
        params(
          amount: String,
          currency: Privy::FiatCurrency::OrSymbol,
          payment_rail: Privy::FiatPaymentRail::OrSymbol,
          account_holder_name: String,
          bank_account_number: String,
          bank_address: String,
          bank_beneficiary_address: String,
          bank_beneficiary_name: String,
          bank_name: String,
          bank_routing_number: String,
          bic: String,
          deposit_message: String,
          iban: String
        ).returns(T.attached_class)
      end
      def self.new(
        amount:,
        # Supported fiat currencies.
        currency:,
        # Supported fiat payment rails.
        payment_rail:,
        account_holder_name: nil,
        bank_account_number: nil,
        bank_address: nil,
        bank_beneficiary_address: nil,
        bank_beneficiary_name: nil,
        bank_name: nil,
        bank_routing_number: nil,
        bic: nil,
        deposit_message: nil,
        iban: nil
      )
      end

      sig do
        override.returns(
          {
            amount: String,
            currency: Privy::FiatCurrency::OrSymbol,
            payment_rail: Privy::FiatPaymentRail::OrSymbol,
            account_holder_name: String,
            bank_account_number: String,
            bank_address: String,
            bank_beneficiary_address: String,
            bank_beneficiary_name: String,
            bank_name: String,
            bank_routing_number: String,
            bic: String,
            deposit_message: String,
            iban: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
