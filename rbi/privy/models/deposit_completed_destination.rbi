# typed: strong

module Privy
  module Models
    class DepositCompletedDestination < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::DepositCompletedDestination, Privy::Internal::AnyHash)
        end

      # The crypto amount delivered to the wallet, after conversion and fees.
      sig { returns(String) }
      attr_accessor :amount

      # The crypto asset the deposit was converted into (e.g. "usdc").
      sig { returns(String) }
      attr_accessor :asset

      # The chain the converted crypto was delivered on (e.g. "base").
      sig { returns(String) }
      attr_accessor :chain

      # The on-chain settlement transaction for the delivered crypto.
      sig { returns(String) }
      attr_accessor :transaction_hash

      # The crypto asset, chain, delivered amount, and settlement transaction for a
      # completed deposit.
      sig do
        params(
          amount: String,
          asset: String,
          chain: String,
          transaction_hash: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The crypto amount delivered to the wallet, after conversion and fees.
        amount:,
        # The crypto asset the deposit was converted into (e.g. "usdc").
        asset:,
        # The chain the converted crypto was delivered on (e.g. "base").
        chain:,
        # The on-chain settlement transaction for the delivered crypto.
        transaction_hash:
      )
      end

      sig do
        override.returns(
          {
            amount: String,
            asset: String,
            chain: String,
            transaction_hash: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
