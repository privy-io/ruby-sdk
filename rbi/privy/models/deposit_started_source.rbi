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

      # Fiat currencies a deposit account can receive deposits in.
      sig { returns(Privy::FiatDepositCurrency::TaggedSymbol) }
      attr_accessor :currency

      # The payment rail the deposit arrived on. Known values include "sepa",
      # "ach_push", "wire", "fednow", "faster_payments", "pix", "spei", but the provider
      # may return others.
      sig { returns(T.nilable(String)) }
      attr_reader :payment_rail

      sig { params(payment_rail: String).void }
      attr_writer :payment_rail

      sig { returns(T.nilable(String)) }
      attr_reader :sender_name

      sig { params(sender_name: String).void }
      attr_writer :sender_name

      # The fiat deposit that was received, including amount, currency, and originator.
      sig do
        params(
          amount: String,
          currency: Privy::FiatDepositCurrency::OrSymbol,
          payment_rail: String,
          sender_name: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The fiat amount deposited.
        amount:,
        # Fiat currencies a deposit account can receive deposits in.
        currency:,
        # The payment rail the deposit arrived on. Known values include "sepa",
        # "ach_push", "wire", "fednow", "faster_payments", "pix", "spei", but the provider
        # may return others.
        payment_rail: nil,
        sender_name: nil
      )
      end

      sig do
        override.returns(
          {
            amount: String,
            currency: Privy::FiatDepositCurrency::TaggedSymbol,
            payment_rail: String,
            sender_name: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
