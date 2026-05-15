# typed: strong

module Privy
  module Models
    class AccountBalanceResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AccountBalanceResponse, Privy::Internal::AnyHash)
        end

      # The individual asset balances, each computed across all supported chains.
      sig { returns(T::Array[Privy::BalanceAsset]) }
      attr_accessor :assets

      # A monetary value with its currency denomination.
      sig { returns(Privy::CurrencyAmount) }
      attr_reader :total

      sig { params(total: Privy::CurrencyAmount::OrHash).void }
      attr_writer :total

      # Individual asset balances per chain.
      sig { returns(T.nilable(T::Array[Privy::BalanceAssetByChain])) }
      attr_reader :assets_by_chain

      sig do
        params(
          assets_by_chain: T::Array[Privy::BalanceAssetByChain::OrHash]
        ).void
      end
      attr_writer :assets_by_chain

      # The balance of a digital asset account, aggregated across all wallets and
      # supported chains.
      sig do
        params(
          assets: T::Array[Privy::BalanceAsset::OrHash],
          total: Privy::CurrencyAmount::OrHash,
          assets_by_chain: T::Array[Privy::BalanceAssetByChain::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # The individual asset balances, each computed across all supported chains.
        assets:,
        # A monetary value with its currency denomination.
        total:,
        # Individual asset balances per chain.
        assets_by_chain: nil
      )
      end

      sig do
        override.returns(
          {
            assets: T::Array[Privy::BalanceAsset],
            total: Privy::CurrencyAmount,
            assets_by_chain: T::Array[Privy::BalanceAssetByChain]
          }
        )
      end
      def to_hash
      end
    end
  end
end
