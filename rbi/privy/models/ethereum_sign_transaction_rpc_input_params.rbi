# typed: strong

module Privy
  module Models
    class EthereumSignTransactionRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSignTransactionRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      # An unsigned Ethereum transaction object. Supports standard EVM transaction types
      # (0, 1, 2, 4) and Tempo transactions (type 118).
      sig do
        returns(
          T.any(
            Privy::UnsignedStandardEthereumTransaction,
            Privy::UnsignedTempoTransaction
          )
        )
      end
      attr_accessor :transaction

      # Parameters for the EVM `eth_signTransaction` RPC.
      sig do
        params(
          transaction:
            T.any(
              Privy::UnsignedStandardEthereumTransaction::OrHash,
              Privy::UnsignedTempoTransaction::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # An unsigned Ethereum transaction object. Supports standard EVM transaction types
        # (0, 1, 2, 4) and Tempo transactions (type 118).
        transaction:
      )
      end

      sig do
        override.returns(
          {
            transaction:
              T.any(
                Privy::UnsignedStandardEthereumTransaction,
                Privy::UnsignedTempoTransaction
              )
          }
        )
      end
      def to_hash
      end
    end
  end
end
