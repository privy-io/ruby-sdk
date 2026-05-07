# typed: strong

module Privy
  module Models
    class BalanceAssetByChain < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::BalanceAssetByChain, Privy::Internal::AnyHash)
        end

      # The amount of the asset held on this chain, denominated in the unit of the asset
      # itself.
      sig { returns(String) }
      attr_accessor :amount

      # The CAIP-2 chain identifier (e.g. eip155:8453).
      sig { returns(String) }
      attr_accessor :chain_id

      # A monetary value with its currency denomination.
      sig { returns(Privy::CurrencyAmount) }
      attr_reader :price

      sig { params(price: Privy::CurrencyAmount::OrHash).void }
      attr_writer :price

      # The symbol of the asset (e.g. USDC, ETH).
      sig { returns(String) }
      attr_accessor :symbol

      # A single asset entry scoped to a specific chain.
      sig do
        params(
          amount: String,
          chain_id: String,
          price: Privy::CurrencyAmount::OrHash,
          symbol: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The amount of the asset held on this chain, denominated in the unit of the asset
        # itself.
        amount:,
        # The CAIP-2 chain identifier (e.g. eip155:8453).
        chain_id:,
        # A monetary value with its currency denomination.
        price:,
        # The symbol of the asset (e.g. USDC, ETH).
        symbol:
      )
      end

      sig do
        override.returns(
          {
            amount: String,
            chain_id: String,
            price: Privy::CurrencyAmount,
            symbol: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
