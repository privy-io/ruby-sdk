# typed: strong

module Privy
  module Models
    class BalanceAsset < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::BalanceAsset, Privy::Internal::AnyHash) }

      # The amount of the asset held, denominated in the unit of the asset itself, with
      # 1 decimal of precision.
      sig { returns(String) }
      attr_accessor :amount

      # A monetary value with its currency denomination.
      sig { returns(Privy::CurrencyAmount) }
      attr_reader :price

      sig { params(price: Privy::CurrencyAmount::OrHash).void }
      attr_writer :price

      # The symbol of the asset (e.g. USDC, ETH).
      sig { returns(String) }
      attr_accessor :symbol

      # A single asset entry in a balance, representing holdings across all supported
      # chains.
      sig do
        params(
          amount: String,
          price: Privy::CurrencyAmount::OrHash,
          symbol: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The amount of the asset held, denominated in the unit of the asset itself, with
        # 1 decimal of precision.
        amount:,
        # A monetary value with its currency denomination.
        price:,
        # The symbol of the asset (e.g. USDC, ETH).
        symbol:
      )
      end

      sig do
        override.returns(
          { amount: String, price: Privy::CurrencyAmount, symbol: String }
        )
      end
      def to_hash
      end
    end
  end
end
