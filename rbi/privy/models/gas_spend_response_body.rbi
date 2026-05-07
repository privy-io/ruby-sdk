# typed: strong

module Privy
  module Models
    class GasSpendResponseBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::GasSpendResponseBody, Privy::Internal::AnyHash)
        end

      # Currency for gas spend values.
      sig { returns(Privy::GasSpendCurrency::TaggedSymbol) }
      attr_accessor :currency

      # Total Privy credits charged as a decimal string.
      sig { returns(String) }
      attr_accessor :value

      # Aggregated Privy gas credits charged for a set of wallets over a time range.
      sig do
        params(
          currency: Privy::GasSpendCurrency::OrSymbol,
          value: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Currency for gas spend values.
        currency:,
        # Total Privy credits charged as a decimal string.
        value:
      )
      end

      sig do
        override.returns(
          { currency: Privy::GasSpendCurrency::TaggedSymbol, value: String }
        )
      end
      def to_hash
      end
    end
  end
end
