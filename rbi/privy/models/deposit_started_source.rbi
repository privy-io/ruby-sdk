# typed: strong

module Privy
  module Models
    class DepositStartedSource < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::DepositStartedSource, Privy::Internal::AnyHash)
        end

      # The fiat amount deposited.
      sig { returns(String) }
      attr_accessor :amount

      # Supported fiat currencies.
      sig { returns(Privy::FiatCurrency::TaggedSymbol) }
      attr_accessor :currency

      # Supported fiat payment rails.
      sig { returns(T.nilable(Privy::FiatPaymentRail::TaggedSymbol)) }
      attr_reader :payment_rail

      sig { params(payment_rail: Privy::FiatPaymentRail::OrSymbol).void }
      attr_writer :payment_rail

      sig { returns(T.nilable(String)) }
      attr_reader :sender_name

      sig { params(sender_name: String).void }
      attr_writer :sender_name

      # The fiat deposit that was received, including amount, currency, and originator.
      sig do
        params(
          amount: String,
          currency: Privy::FiatCurrency::OrSymbol,
          payment_rail: Privy::FiatPaymentRail::OrSymbol,
          sender_name: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The fiat amount deposited.
        amount:,
        # Supported fiat currencies.
        currency:,
        # Supported fiat payment rails.
        payment_rail: nil,
        sender_name: nil
      )
      end

      sig do
        override.returns(
          {
            amount: String,
            currency: Privy::FiatCurrency::TaggedSymbol,
            payment_rail: Privy::FiatPaymentRail::TaggedSymbol,
            sender_name: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
